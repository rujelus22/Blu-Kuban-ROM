.class Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;
.super Lcom/google/android/apps/uploader/googlemobile/common/async/AbstractRequest;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequest;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncHttpRequestImpl"
.end annotation


# static fields
.field private static final WATCHDOG_DELAY:J = 0x4e20L


# instance fields
.field private connection:Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

.field private factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

.field private method:Ljava/lang/String;

.field private payload:Ljava/io/InputStream;

.field private responseCode:I

.field private responseLength:J

.field private responseStream:Ljava/io/DataInputStream;

.field private responseType:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private watchdogDelay:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AbstractRequest;-><init>()V

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J

    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    iput-object p2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->url:Ljava/lang/String;

    return-void
.end method

.method private static debugResponseHeaders(Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->isCompletedOrException()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeConnection(Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;)V

    invoke-super {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AbstractRequest;->close()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseCode()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseCode:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseLength()J
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseLength:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-wide v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseStream()Ljava/io/DataInputStream;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseType()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseType:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWatchdogDelay()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 10

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    #calls: Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->getTaskRunner()Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->access$000(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;)Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;

    invoke-direct {v1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;)V

    invoke-virtual {v1, p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;->setRequest(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getWatchdogDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;->setDelay(J)V

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;->schedule()V

    const/4 v0, 0x0

    :try_start_1a
    monitor-enter p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1b} :catch_8f

    :try_start_1b
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyRunning()V

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    iget-object v4, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->url:Ljava/lang/String;

    #calls: Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->createHttpConnection(Ljava/lang/String;Z)Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;
    invoke-static {v3, v4, v2}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->access$100(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;Ljava/lang/String;Z)Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

    const-string v3, "Content-Type"

    iget-object v4, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payload:Ljava/io/InputStream;

    if-eqz v2, :cond_47

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    :cond_47
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payload:Ljava/io/InputStream;

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_1b .. :try_end_4c} :catchall_8c

    if-eqz v3, :cond_54

    :try_start_4e
    invoke-static {v3, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_af

    :try_start_51
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    :cond_54
    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->getResponseCode()I

    move-result v0

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->getLength()J

    move-result-wide v3

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v6

    invoke-static {v2}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->debugResponseHeaders(Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;)V

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_b9

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    #getter for: Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;
    invoke-static {v2}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->access$200(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;)Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

    move-result-object v2

    const/4 v7, 0x1

    invoke-interface {v2, v7}, Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;->registerNetworkSuccess(Z)Z

    :goto_75
    monitor-enter p0
    :try_end_76
    .catchall {:try_start_51 .. :try_end_76} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_76} :catch_8f

    :try_start_76
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v2

    if-ne v2, v8, :cond_87

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseCode:I

    iput-wide v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseLength:J

    iput-object v5, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseType:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyCompleted()V

    :cond_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_76 .. :try_end_88} :catchall_c3

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    :goto_8b
    return-void

    :catchall_8c
    move-exception v0

    :try_start_8d
    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8f} :catch_8f

    :catch_8f
    move-exception v0

    :try_start_90
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    #getter for: Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;
    invoke-static {v2}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->access$200(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;)Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;->notifyFailure()V

    monitor-enter p0
    :try_end_9a
    .catchall {:try_start_90 .. :try_end_9a} :catchall_b4

    :try_start_9a
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v2

    if-ne v2, v8, :cond_a3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyException(Ljava/lang/Exception;)V

    :cond_a3
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_aa

    :cond_aa
    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_9a .. :try_end_ab} :catchall_c6

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    goto :goto_8b

    :catchall_af
    move-exception v2

    :try_start_b0
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    throw v2
    :try_end_b4
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b4} :catch_8f

    :catchall_b4
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    throw v0

    :cond_b9
    :try_start_b9
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    #getter for: Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;
    invoke-static {v2}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->access$200(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;)Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/HttpConnectionFactory;->notifyFailure()V
    :try_end_c2
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c2} :catch_8f

    goto :goto_75

    :catchall_c3
    move-exception v0

    :try_start_c4
    monitor-exit p0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    :try_start_c5
    throw v0
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c6} :catch_8f

    :catchall_c6
    move-exception v0

    :try_start_c7
    monitor-exit p0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    :try_start_c8
    throw v0
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_b4
.end method

.method public declared-synchronized setContentType(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMethod(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload(Ljava/io/InputStream;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payload:Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWatchdogDelay(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public submit(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->setTask(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;

    #calls: Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z
    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;->access$300(Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory;Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z

    return-void
.end method

.method public declared-synchronized watchdogFired()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/async/WatchdogException;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/WatchdogException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyException(Ljava/lang/Exception;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
