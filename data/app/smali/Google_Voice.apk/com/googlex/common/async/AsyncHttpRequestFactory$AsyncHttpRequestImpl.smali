.class public Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;
.super Lcom/googlex/common/async/AbstractRequest;

# interfaces
.implements Lcom/googlex/common/async/AsyncHttpRequest;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlex/common/async/AsyncHttpRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AsyncHttpRequestImpl"
.end annotation


# static fields
.field private static final WATCHDOG_DELAY:J = 0x4e20L


# instance fields
.field private addContentLength:Z

.field private connection:Lcom/googlex/common/io/GoogleHttpConnection;

.field private factory:Lcom/googlex/common/async/AsyncHttpRequestFactory;

.field private flags:I

.field private httpHeaders:Ljava/util/Vector;

.field private lastProgressTimestamp:J

.field private method:Ljava/lang/String;

.field private payloadBytes:[B

.field private payloadInputStream:Ljava/io/InputStream;

.field private payloadStreamProvider:Lcom/googlex/masf/InputStreamProvider;

.field private responseCode:I

.field private responseLength:J

.field private responseStream:Ljava/io/DataInputStream;

.field private responseType:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private watchdogDelay:J


# direct methods
.method public constructor <init>(Lcom/googlex/common/async/AsyncHttpRequestFactory;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Lcom/googlex/common/async/AbstractRequest;-><init>()V

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J

    const-string v0, "GET"

    iput-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;

    iput-object p1, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/googlex/common/async/AsyncHttpRequestFactory;

    iput-object p2, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->url:Ljava/lang/String;

    iput p3, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->flags:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->httpHeaders:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->addContentLength:Z

    return-void
.end method

.method private addHttpHeader(Lcom/googlex/common/io/GoogleHttpConnection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->httpHeaders:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v3, v0, v2

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-interface {p1, v3, v0}, Lcom/googlex/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_20
    return-void
.end method

.method private static debugResponseHeaders(Lcom/googlex/common/io/GoogleHttpConnection;)V
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

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/googlex/common/io/IoUtil;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    :cond_f
    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    array-length v0, v0

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/googlex/masf/InputStreamProvider;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/googlex/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/googlex/masf/InputStreamProvider;->getStreamLength()I

    move-result v0

    goto :goto_16

    :cond_22
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private hasPayload()Z
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/googlex/masf/InputStreamProvider;

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

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/googlex/masf/InputStreamProvider;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/googlex/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/googlex/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/googlex/common/io/IoUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_9

    :cond_18
    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/googlex/common/io/IoUtil;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_9
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->isCompletedOrException()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/googlex/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/googlex/common/io/GoogleHttpConnection;

    invoke-static {v0}, Lcom/googlex/common/io/IoUtil;->closeConnection(Lcom/googlex/common/io/GoogleHttpConnection;)V

    invoke-super {p0}, Lcom/googlex/common/async/AbstractRequest;->close()V
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

.method public getHttpHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/googlex/common/io/GoogleHttpConnection;

    invoke-interface {v0, p1}, Lcom/googlex/common/io/GoogleHttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHeaderKey(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/googlex/common/io/GoogleHttpConnection;

    invoke-interface {v0, p1}, Lcom/googlex/common/io/GoogleHttpConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHeaderValue(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/googlex/common/io/GoogleHttpConnection;

    invoke-interface {v0, p1}, Lcom/googlex/common/io/GoogleHttpConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastProgressTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->lastProgressTimestamp:J

    return-wide v0
.end method

.method public declared-synchronized getResponseCode()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseCode:I
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
    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-wide v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseLength:J
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
    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;
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
    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->checkCompleted()V

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseType:Ljava/lang/String;
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
    iget-wide v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J
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

    iget v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/googlex/common/Config;->getInstance()Lcom/googlex/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlex/common/Config;->getClock()Lcom/googlex/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/googlex/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->lastProgressTimestamp:J

    invoke-super {p0}, Lcom/googlex/common/async/AbstractRequest;->notifyProgress()V

    :cond_17
    return-void
.end method

.method public run()V
    .registers 12

    const/4 v10, 0x1

    sget-object v0, Lcom/googlex/common/async/AsyncHttpRequestFactory;->logger:Lcom/googlex/debug/LogSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncHttRequest.run(): this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlex/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/googlex/common/async/AsyncHttpRequestFactory;

    #calls: Lcom/googlex/common/async/AsyncHttpRequestFactory;->getTaskRunner()Lcom/googlex/common/task/TaskRunner;
    invoke-static {v0}, Lcom/googlex/common/async/AsyncHttpRequestFactory;->access$000(Lcom/googlex/common/async/AsyncHttpRequestFactory;)Lcom/googlex/common/task/TaskRunner;

    move-result-object v0

    new-instance v1, Lcom/googlex/common/async/AsyncHttpRequestFactory$WatchdogTask;

    invoke-direct {v1, v0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$WatchdogTask;-><init>(Lcom/googlex/common/task/TaskRunner;)V

    invoke-virtual {v1, p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$WatchdogTask;->setRequest(Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)V

    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getWatchdogDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/googlex/common/async/AsyncHttpRequestFactory$WatchdogTask;->setDelay(J)V

    invoke-virtual {v1}, Lcom/googlex/common/async/AsyncHttpRequestFactory$WatchdogTask;->schedule()V

    const/4 v0, 0x0

    :try_start_32
    monitor-enter p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_155
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_33} :catch_129

    :try_start_33
    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyRunning()V

    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyProgress()V

    iget-object v2, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/googlex/common/async/AsyncHttpRequestFactory;

    iget-object v4, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->url:Ljava/lang/String;

    #calls: Lcom/googlex/common/async/AsyncHttpRequestFactory;->createHttpConnection(Ljava/lang/String;Z)Lcom/googlex/common/io/GoogleHttpConnection;
    invoke-static {v3, v4, v2}, Lcom/googlex/common/async/AsyncHttpRequestFactory;->access$100(Lcom/googlex/common/async/AsyncHttpRequestFactory;Ljava/lang/String;Z)Lcom/googlex/common/io/GoogleHttpConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/googlex/common/io/GoogleHttpConnection;

    iget v2, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_54

    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyProgress()V

    :cond_54
    iget-object v2, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;

    if-eqz v2, :cond_11b

    iget-object v2, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/googlex/common/io/GoogleHttpConnection;

    const-string v3, "Content-Type"

    iget-object v4, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/googlex/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_61
    iget-object v2, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/googlex/common/io/GoogleHttpConnection;

    invoke-direct {p0, v2}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->addHttpHeader(Lcom/googlex/common/io/GoogleHttpConnection;)V

    invoke-direct {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->hasPayload()Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-boolean v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->addContentLength:Z

    if-eqz v0, :cond_a1

    sget-object v0, Lcom/googlex/common/async/AsyncHttpRequestFactory;->logger:Lcom/googlex/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending payload [bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getPayloadLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/googlex/debug/LogSource;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/googlex/common/io/GoogleHttpConnection;

    const-string v2, "Content-Length"

    invoke-direct {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getPayloadLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/googlex/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/googlex/common/io/GoogleHttpConnection;

    invoke-interface {v0}, Lcom/googlex/common/io/GoogleHttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    :cond_a7
    iget-object v2, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/googlex/common/io/GoogleHttpConnection;

    iget-object v3, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;

    monitor-exit p0
    :try_end_ac
    .catchall {:try_start_33 .. :try_end_ac} :catchall_126

    :try_start_ac
    invoke-direct {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->hasPayload()Z
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_155
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_129

    move-result v3

    if-eqz v3, :cond_b8

    :try_start_b2
    invoke-direct {p0, v0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->writePayload(Ljava/io/OutputStream;)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_150

    :try_start_b5
    invoke-static {v0}, Lcom/googlex/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    :cond_b8
    invoke-interface {v2}, Lcom/googlex/common/io/GoogleHttpConnection;->getResponseCode()I

    move-result v0

    invoke-interface {v2}, Lcom/googlex/common/io/GoogleHttpConnection;->getLength()J

    move-result-wide v3

    invoke-interface {v2}, Lcom/googlex/common/io/GoogleHttpConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/googlex/common/io/GoogleHttpConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v6

    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyProgress()V

    sget-object v7, Lcom/googlex/common/async/AsyncHttpRequestFactory;->logger:Lcom/googlex/debug/LogSource;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response [http="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/googlex/debug/LogSource;->info(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->debugResponseHeaders(Lcom/googlex/common/io/GoogleHttpConnection;)V

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_15a

    iget-object v2, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/googlex/common/async/AsyncHttpRequestFactory;

    #getter for: Lcom/googlex/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/googlex/common/io/HttpConnectionFactory;
    invoke-static {v2}, Lcom/googlex/common/async/AsyncHttpRequestFactory;->access$200(Lcom/googlex/common/async/AsyncHttpRequestFactory;)Lcom/googlex/common/io/HttpConnectionFactory;

    move-result-object v2

    const/4 v7, 0x1

    invoke-interface {v2, v7}, Lcom/googlex/common/io/HttpConnectionFactory;->registerNetworkSuccess(Z)Z

    :goto_104
    monitor-enter p0
    :try_end_105
    .catchall {:try_start_b5 .. :try_end_105} :catchall_155
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_105} :catch_129

    :try_start_105
    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v2

    if-ne v2, v10, :cond_116

    iput v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseCode:I

    iput-wide v3, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseLength:J

    iput-object v5, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseType:Ljava/lang/String;

    iput-object v6, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->responseStream:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyCompleted()V

    :cond_116
    monitor-exit p0
    :try_end_117
    .catchall {:try_start_105 .. :try_end_117} :catchall_164

    invoke-virtual {v1}, Lcom/googlex/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    :goto_11a
    return-void

    :cond_11b
    :try_start_11b
    iget-object v2, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/googlex/common/io/GoogleHttpConnection;

    const-string v3, "Content-Type"

    const-string v4, "application/binary"

    invoke-interface {v2, v3, v4}, Lcom/googlex/common/io/GoogleHttpConnection;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_61

    :catchall_126
    move-exception v0

    monitor-exit p0
    :try_end_128
    .catchall {:try_start_11b .. :try_end_128} :catchall_126

    :try_start_128
    throw v0
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_155
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_129} :catch_129

    :catch_129
    move-exception v0

    :try_start_12a
    iget-object v2, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/googlex/common/async/AsyncHttpRequestFactory;

    #getter for: Lcom/googlex/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/googlex/common/io/HttpConnectionFactory;
    invoke-static {v2}, Lcom/googlex/common/async/AsyncHttpRequestFactory;->access$200(Lcom/googlex/common/async/AsyncHttpRequestFactory;)Lcom/googlex/common/io/HttpConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/googlex/common/io/HttpConnectionFactory;->notifyFailure()V

    monitor-enter p0
    :try_end_134
    .catchall {:try_start_12a .. :try_end_134} :catchall_155

    :try_start_134
    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v2

    if-ne v2, v10, :cond_13d

    invoke-virtual {p0, v0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyException(Ljava/lang/Exception;)V

    :cond_13d
    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14b

    sget-object v2, Lcom/googlex/common/async/AsyncHttpRequestFactory;->logger:Lcom/googlex/debug/LogSource;

    const-string v3, "AsyncHttpRequestImpl.run(): exception thrown "

    invoke-virtual {v2, v3, v0}, Lcom/googlex/debug/LogSource;->severe(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14b
    monitor-exit p0
    :try_end_14c
    .catchall {:try_start_134 .. :try_end_14c} :catchall_167

    invoke-virtual {v1}, Lcom/googlex/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    goto :goto_11a

    :catchall_150
    move-exception v2

    :try_start_151
    invoke-static {v0}, Lcom/googlex/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    throw v2
    :try_end_155
    .catchall {:try_start_151 .. :try_end_155} :catchall_155
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_155} :catch_129

    :catchall_155
    move-exception v0

    invoke-virtual {v1}, Lcom/googlex/common/async/AsyncHttpRequestFactory$WatchdogTask;->cancel()I

    throw v0

    :cond_15a
    :try_start_15a
    iget-object v2, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/googlex/common/async/AsyncHttpRequestFactory;

    #getter for: Lcom/googlex/common/async/AsyncHttpRequestFactory;->connectionFactory:Lcom/googlex/common/io/HttpConnectionFactory;
    invoke-static {v2}, Lcom/googlex/common/async/AsyncHttpRequestFactory;->access$200(Lcom/googlex/common/async/AsyncHttpRequestFactory;)Lcom/googlex/common/io/HttpConnectionFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/googlex/common/io/HttpConnectionFactory;->notifyFailure()V
    :try_end_163
    .catchall {:try_start_15a .. :try_end_163} :catchall_155
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_163} :catch_129

    goto :goto_104

    :catchall_164
    move-exception v0

    :try_start_165
    monitor-exit p0
    :try_end_166
    .catchall {:try_start_165 .. :try_end_166} :catchall_164

    :try_start_166
    throw v0
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_155
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_167} :catch_129

    :catchall_167
    move-exception v0

    :try_start_168
    monitor-exit p0
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_167

    :try_start_169
    throw v0
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_155
.end method

.method public declared-synchronized setContentType(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->type:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHttpHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "transfer-encoding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iput-boolean v2, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->addContentLength:Z

    :cond_1b
    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->httpHeaders:Ljava/util/Vector;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized setMethod(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->method:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload(Lcom/googlex/masf/InputStreamProvider;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadStreamProvider:Lcom/googlex/masf/InputStreamProvider;
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
    iput-object p1, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadInputStream:Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload([B)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->payloadBytes:[B
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
    iput-wide p1, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->watchdogDelay:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public submit(Lcom/googlex/common/task/AbstractTask;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->setTask(Lcom/googlex/common/task/AbstractTask;)V

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->factory:Lcom/googlex/common/async/AsyncHttpRequestFactory;

    #calls: Lcom/googlex/common/async/AsyncHttpRequestFactory;->submitRequest(Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z
    invoke-static {v0, p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory;->access$300(Lcom/googlex/common/async/AsyncHttpRequestFactory;Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/googlex/debug/DebugUtil;->getLogSource(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

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
    invoke-virtual {p0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/googlex/common/io/GoogleHttpConnection;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->connection:Lcom/googlex/common/io/GoogleHttpConnection;

    invoke-interface {v0}, Lcom/googlex/common/io/GoogleHttpConnection;->notifyTimeout()V

    :cond_11
    new-instance v0, Lcom/googlex/common/async/WatchdogException;

    invoke-direct {v0}, Lcom/googlex/common/async/WatchdogException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/googlex/common/async/AsyncHttpRequestFactory$AsyncHttpRequestImpl;->notifyException(Ljava/lang/Exception;)V
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
