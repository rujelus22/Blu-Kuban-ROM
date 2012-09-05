.class public Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;
.super Lcom/google/common/async/AbstractRequest;

# interfaces
.implements Lcom/google/common/async/AsyncHttpRequest;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/async/AsyncHttpRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AsyncHttpRequestImpl"
.end annotation


# instance fields
.field private addContentLength:Z

.field private connection:Lcom/google/common/io/GoogleHttpConnection;

.field private factory:Lcom/google/common/async/AsyncHttpRequestFactory;

.field private flags:I

.field private httpHeaders:Ljava/util/Vector;

.field private lastProgressTimestamp:J

.field private method:Ljava/lang/String;

.field private payloadBytes:[B

.field private payloadInputStream:Ljava/io/InputStream;

.field private payloadStreamProvider:Lcom/google/masf/InputStreamProvider;

.field private responseCode:I

.field private responseLength:J

.field private responseStream:Ljava/io/DataInputStream;

.field private responseType:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private watchdogDelay:J


# direct methods
.method public constructor <init>(Lcom/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Lcom/google/common/async/AbstractRequest;-><init>()V

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J

    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    iput-object p2, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->url:Ljava/lang/String;

    iput p3, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->flags:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->httpHeaders:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->addContentLength:Z

    return-void
.end method

.method private addHttpHeader(Lcom/google/common/io/GoogleHttpConnection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v3, v0, v2

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-interface {p1, v3, v0}, Lcom/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_20
    return-void
.end method

.method private static debugResponseHeaders(Lcom/google/common/io/GoogleHttpConnection;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method private getPayloadLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/io/IoUtil;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    :cond_f
    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    array-length v0, v0

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/google/masf/InputStreamProvider;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/google/masf/InputStreamProvider;->getStreamLength()I

    move-result v0

    goto :goto_16

    :cond_22
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private hasPayload()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/google/masf/InputStreamProvider;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private writePayload(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/google/masf/InputStreamProvider;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/google/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/google/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/io/IoUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_9

    :cond_18
    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/google/common/io/IoUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_9
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->isCompletedOrException()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/common/io/GoogleHttpConnection;

    invoke-static {v0}, Lcom/google/common/io/IoUtil;->closeConnection(Lcom/google/common/io/GoogleHttpConnection;)V

    invoke-super {p0}, Lcom/google/common/async/AbstractRequest;->close()V
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

.method public getLastProgressTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->lastProgressTimestamp:J

    return-wide v0
.end method

.method public declared-synchronized getResponseCode()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseCode:I
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
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-wide v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseLength:J
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
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;
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
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseType:Ljava/lang/String;
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
    iget-wide v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyProgress()V
    .registers 3

    iget v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/Config;->getClock()Lcom/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->lastProgressTimestamp:J

    invoke-super {p0}, Lcom/google/common/async/AbstractRequest;->notifyProgress()V

    :cond_17
    return-void
.end method

.method public run()V
    .registers 13

    const/4 v11, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncHttRequest.run(): this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    #calls: Lcom/google/common/async/AsyncHttpRequestFactory;->getTaskRunner()Lcom/google/common/task/TaskRunner;
    invoke-static {v0}, Lcom/google/common/async/AsyncHttpRequestFactory;->access$000(Lcom/google/common/async/AsyncHttpRequestFactory;)Lcom/google/common/task/TaskRunner;

    move-result-object v0

    new-instance v4, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;

    invoke-direct {v4, v0}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;-><init>(Lcom/google/common/task/TaskRunner;)V

    invoke-virtual {v4, p0}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->setRequest(Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)V

    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getWatchdogDelay()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->setDelay(J)V

    invoke-virtual {v4}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->schedule()V

    :try_start_32
    monitor-enter p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_19d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_33} :catch_62

    :try_start_33
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyRunning()V

    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyProgress()V

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_5f

    :try_start_3a
    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    iget-object v3, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->url:Ljava/lang/String;

    #calls: Lcom/google/common/async/AsyncHttpRequestFactory;->createHttpConnection(Ljava/lang/String;Z)Lcom/google/common/io/GoogleHttpConnection;
    invoke-static {v2, v3, v0}, Lcom/google/common/async/AsyncHttpRequestFactory;->access$100(Lcom/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;Z)Lcom/google/common/io/GoogleHttpConnection;
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_19d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_49} :catch_62

    move-result-object v3

    :try_start_4a
    monitor-enter p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_163
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4b} :catch_156

    :try_start_4b
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->isRunning()Z

    move-result v0

    if-nez v0, :cond_94

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_153

    invoke-virtual {v4}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    invoke-static {v1}, Lcom/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lcom/google/common/io/IoUtil;->closeConnection(Lcom/google/common/io/GoogleHttpConnection;)V

    :goto_5e
    return-void

    :catchall_5f
    move-exception v0

    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    :try_start_61
    throw v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_19d
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_62} :catch_62

    :catch_62
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_65
    :try_start_65
    iget-object v5, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    #getter for: Lcom/google/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/google/common/io/HttpConnectionFactory;
    invoke-static {v5}, Lcom/google/common/async/AsyncHttpRequestFactory;->access$200(Lcom/google/common/async/AsyncHttpRequestFactory;)Lcom/google/common/io/HttpConnectionFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/io/HttpConnectionFactory;->notifyFailure()V

    monitor-enter p0
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_184

    :try_start_6f
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v5

    if-ne v5, v11, :cond_78

    invoke-virtual {p0, v0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyException(Ljava/lang/Exception;)V

    :cond_78
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_86

    sget-object v5, Lcom/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/google/debug/LogSource;

    const-string v6, "AsyncHttpRequestImpl.run(): exception thrown "

    invoke-virtual {v5, v6, v0}, Lcom/google/debug/LogSource;->severe(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_6f .. :try_end_87} :catchall_19a

    invoke-virtual {v4}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    invoke-static {v1}, Lcom/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lcom/google/common/io/IoUtil;->closeConnection(Lcom/google/common/io/GoogleHttpConnection;)V

    goto :goto_5e

    :cond_94
    :try_start_94
    iput-object v3, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/common/io/GoogleHttpConnection;

    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyProgress()V

    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_94 .. :try_end_9a} :catchall_153

    :try_start_9a
    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;

    if-eqz v0, :cond_15a

    const-string v0, "Content-Type"

    iget-object v2, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Lcom/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a5
    invoke-direct {p0, v3}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->addHttpHeader(Lcom/google/common/io/GoogleHttpConnection;)V

    invoke-direct {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_1a1

    iget-boolean v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->addContentLength:Z

    if-eqz v0, :cond_e1

    sget-object v0, Lcom/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending payload [bytes="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getPayloadLength()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;)V

    const-string v0, "Content-Length"

    invoke-direct {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getPayloadLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Lcom/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e1
    invoke-interface {v3}, Lcom/google/common/io/GoogleHttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;
    :try_end_e4
    .catchall {:try_start_9a .. :try_end_e4} :catchall_163
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_e4} :catch_156

    move-result-object v2

    :goto_e5
    :try_start_e5
    invoke-direct {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->hasPayload()Z
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_184
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e8} :catch_177

    move-result v0

    if-eqz v0, :cond_f1

    :try_start_eb
    invoke-direct {p0, v2}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->writePayload(Ljava/io/OutputStream;)V
    :try_end_ee
    .catchall {:try_start_eb .. :try_end_ee} :catchall_172

    :try_start_ee
    invoke-static {v2}, Lcom/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    :cond_f1
    invoke-interface {v3}, Lcom/google/common/io/GoogleHttpConnection;->getResponseCode()I

    move-result v0

    invoke-interface {v3}, Lcom/google/common/io/GoogleHttpConnection;->getLength()J

    move-result-wide v5

    invoke-interface {v3}, Lcom/google/common/io/GoogleHttpConnection;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lcom/google/common/io/GoogleHttpConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyProgress()V

    sget-object v8, Lcom/google/common/async/AsyncHttpRequestFactory;->logger:Lcom/google/debug/LogSource;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response [http="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->debugResponseHeaders(Lcom/google/common/io/GoogleHttpConnection;)V

    const/16 v8, 0xc8

    if-ne v0, v8, :cond_17a

    iget-object v8, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    #getter for: Lcom/google/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/google/common/io/HttpConnectionFactory;
    invoke-static {v8}, Lcom/google/common/async/AsyncHttpRequestFactory;->access$200(Lcom/google/common/async/AsyncHttpRequestFactory;)Lcom/google/common/io/HttpConnectionFactory;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/google/common/io/HttpConnectionFactory;->registerNetworkSuccess(Z)Z

    :goto_13d
    monitor-enter p0
    :try_end_13e
    .catchall {:try_start_ee .. :try_end_13e} :catchall_184
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_13e} :catch_177

    :try_start_13e
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->isRunning()Z

    move-result v8

    if-nez v8, :cond_186

    monitor-exit p0
    :try_end_145
    .catchall {:try_start_13e .. :try_end_145} :catchall_197

    invoke-virtual {v4}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    invoke-static {v1}, Lcom/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lcom/google/common/io/IoUtil;->closeConnection(Lcom/google/common/io/GoogleHttpConnection;)V

    goto/16 :goto_5e

    :catchall_153
    move-exception v0

    :try_start_154
    monitor-exit p0
    :try_end_155
    .catchall {:try_start_154 .. :try_end_155} :catchall_153

    :try_start_155
    throw v0

    :catch_156
    move-exception v0

    move-object v2, v1

    goto/16 :goto_65

    :cond_15a
    const-string v0, "Content-Type"

    const-string v2, "application/binary"

    invoke-interface {v3, v0, v2}, Lcom/google/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_161
    .catchall {:try_start_155 .. :try_end_161} :catchall_163
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_161} :catch_156

    goto/16 :goto_a5

    :catchall_163
    move-exception v0

    move-object v2, v1

    :goto_165
    invoke-virtual {v4}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    invoke-static {v1}, Lcom/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lcom/google/common/io/IoUtil;->closeConnection(Lcom/google/common/io/GoogleHttpConnection;)V

    throw v0

    :catchall_172
    move-exception v0

    :try_start_173
    invoke-static {v2}, Lcom/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    throw v0

    :catch_177
    move-exception v0

    goto/16 :goto_65

    :cond_17a
    iget-object v8, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    #getter for: Lcom/google/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/google/common/io/HttpConnectionFactory;
    invoke-static {v8}, Lcom/google/common/async/AsyncHttpRequestFactory;->access$200(Lcom/google/common/async/AsyncHttpRequestFactory;)Lcom/google/common/io/HttpConnectionFactory;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/common/io/HttpConnectionFactory;->notifyFailure()V
    :try_end_183
    .catchall {:try_start_173 .. :try_end_183} :catchall_184
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_183} :catch_177

    goto :goto_13d

    :catchall_184
    move-exception v0

    goto :goto_165

    :cond_186
    :try_start_186
    iput v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseCode:I

    iput-wide v5, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseLength:J

    iput-object v7, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseType:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyCompleted()V

    monitor-exit p0
    :try_end_192
    .catchall {:try_start_186 .. :try_end_192} :catchall_197

    invoke-virtual {v4}, Lcom/google/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    goto/16 :goto_5e

    :catchall_197
    move-exception v0

    :try_start_198
    monitor-exit p0
    :try_end_199
    .catchall {:try_start_198 .. :try_end_199} :catchall_197

    :try_start_199
    throw v0
    :try_end_19a
    .catchall {:try_start_199 .. :try_end_19a} :catchall_184
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_19a} :catch_177

    :catchall_19a
    move-exception v0

    :try_start_19b
    monitor-exit p0
    :try_end_19c
    .catchall {:try_start_19b .. :try_end_19c} :catchall_19a

    :try_start_19c
    throw v0
    :try_end_19d
    .catchall {:try_start_19c .. :try_end_19d} :catchall_184

    :catchall_19d
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_165

    :cond_1a1
    move-object v2, v1

    goto/16 :goto_e5
.end method

.method public declared-synchronized setContentType(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;
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
    iput-object p1, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;
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
    iput-object p1, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;
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
    iput-wide p1, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public submit(Lcom/google/common/task/AbstractTask;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->setTask(Lcom/google/common/task/AbstractTask;)V

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/google/common/async/AsyncHttpRequestFactory;

    #calls: Lcom/google/common/async/AsyncHttpRequestFactory;->submitRequest(Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z
    invoke-static {v0, p0}, Lcom/google/common/async/AsyncHttpRequestFactory;->access$300(Lcom/google/common/async/AsyncHttpRequestFactory;Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/debug/DebugUtil;->getLogSource(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized watchdogFired()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/common/io/GoogleHttpConnection;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/google/common/io/GoogleHttpConnection;

    invoke-interface {v0}, Lcom/google/common/io/GoogleHttpConnection;->notifyTimeout()V

    :cond_11
    new-instance v0, Lcom/google/common/async/WatchdogException;

    invoke-direct {v0}, Lcom/google/common/async/WatchdogException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyException(Ljava/lang/Exception;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
