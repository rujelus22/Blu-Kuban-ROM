.class public abstract Lcom/googlex/masf/protocol/Request;
.super Lcom/googlex/masf/protocol/Block;

# interfaces
.implements Lcom/googlex/masf/InputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlex/masf/protocol/Request$Listener;
    }
.end annotation


# static fields
.field public static final DEFAULT_IMMEDIATE_REQUEST_TIMEOUT:J = 0x4e20L

.field public static final DEFAULT_RETRY_TIMEOUT:J = 0x7d0L

.field public static final DEFAULT_SEND_COUNT:I = 0x4

.field public static final RETRY_IMMEDIATE_DEALINE:J = 0x1388L

.field public static final RETRY_IMMEDIATE_START:J = 0xbb8L

.field public static final RETRY_NON_IMMEDIATE_DEALINE:J = 0x36ee80L


# instance fields
.field private immediate:Z

.field protected listener:Lcom/googlex/masf/protocol/Request$Listener;

.field private logger:Lcom/googlex/debug/LogSource;

.field private preemptableId:Ljava/lang/String;

.field private requestTimeoutPeriod:J

.field private responseReceived:Z

.field private retryDeadline:J

.field private retryStartTimestamp:J

.field protected retryTimeout:J

.field private secure:Z

.field protected sentCount:I

.field private submitTimestamp:J


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/googlex/masf/protocol/Block;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryTimeout:J

    const/4 v0, 0x4

    iput v0, p0, Lcom/googlex/masf/protocol/Request;->sentCount:I

    iput-wide v2, p0, Lcom/googlex/masf/protocol/Request;->retryStartTimestamp:J

    iput-wide v2, p0, Lcom/googlex/masf/protocol/Request;->retryDeadline:J

    iput-wide v2, p0, Lcom/googlex/masf/protocol/Request;->submitTimestamp:J

    iput-wide v2, p0, Lcom/googlex/masf/protocol/Request;->requestTimeoutPeriod:J

    iput-boolean v4, p0, Lcom/googlex/masf/protocol/Request;->responseReceived:Z

    iput-boolean v4, p0, Lcom/googlex/masf/protocol/Request;->secure:Z

    invoke-static {p0}, Lcom/googlex/debug/LogSource;->getDynamicLogSource(Ljava/lang/Object;)Lcom/googlex/debug/LogSource;

    move-result-object v0

    iput-object v0, p0, Lcom/googlex/masf/protocol/Request;->logger:Lcom/googlex/debug/LogSource;

    return-void
.end method

.method private adjustRetryTimeout()V
    .registers 5

    iget-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryDeadline:J

    iget-wide v2, p0, Lcom/googlex/masf/protocol/Request;->retryStartTimestamp:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryDeadline:J

    return-void
.end method


# virtual methods
.method public abstract dispose()V
.end method

.method public flagImmediate()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlex/masf/protocol/Request;->immediate:Z

    return-void
.end method

.method public declared-synchronized flagResponseReceived()Z
    .registers 3

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/googlex/masf/protocol/Request;->responseReceived:Z

    if-nez v1, :cond_b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/googlex/masf/protocol/Request;->responseReceived:Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_d

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flagSecure()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlex/masf/protocol/Request;->secure:Z

    return-void
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized getListener()Lcom/googlex/masf/protocol/Request$Listener;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/masf/protocol/Request;->listener:Lcom/googlex/masf/protocol/Request$Listener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreemptableId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/googlex/masf/protocol/Request;->preemptableId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTimeoutPeriod()J
    .registers 3

    iget-wide v0, p0, Lcom/googlex/masf/protocol/Request;->requestTimeoutPeriod:J

    return-wide v0
.end method

.method public getRetryDeadline()J
    .registers 3

    iget-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryDeadline:J

    return-wide v0
.end method

.method public getRetryStartTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryStartTimestamp:J

    return-wide v0
.end method

.method public abstract getStreamLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public isImmediate()Z
    .registers 2

    iget-boolean v0, p0, Lcom/googlex/masf/protocol/Request;->immediate:Z

    return v0
.end method

.method public isResponseReceived()Z
    .registers 2

    iget-boolean v0, p0, Lcom/googlex/masf/protocol/Request;->responseReceived:Z

    return v0
.end method

.method public isSecure()Z
    .registers 2

    iget-boolean v0, p0, Lcom/googlex/masf/protocol/Request;->secure:Z

    return v0
.end method

.method public declared-synchronized setListener(Lcom/googlex/masf/protocol/Request$Listener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/googlex/masf/protocol/Request;->listener:Lcom/googlex/masf/protocol/Request$Listener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreemptableId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/googlex/masf/protocol/Request;->preemptableId:Ljava/lang/String;

    return-void
.end method

.method public setRequestTimeoutPeriod(J)V
    .registers 3

    iput-wide p1, p0, Lcom/googlex/masf/protocol/Request;->requestTimeoutPeriod:J

    return-void
.end method

.method public declared-synchronized setRetryTimeout(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/googlex/masf/protocol/Request;->retryTimeout:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSentCount(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/googlex/masf/protocol/Request;->sentCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldRetry(J)Z
    .registers 8

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-wide v1, p0, Lcom/googlex/masf/protocol/Request;->requestTimeoutPeriod:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_15

    iget-wide v1, p0, Lcom/googlex/masf/protocol/Request;->submitTimestamp:J

    iget-wide v3, p0, Lcom/googlex/masf/protocol/Request;->requestTimeoutPeriod:J
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_1b

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_15

    :cond_13
    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    :try_start_15
    iget v1, p0, Lcom/googlex/masf/protocol/Request;->sentCount:I
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1b

    if-lez v1, :cond_13

    const/4 v0, 0x1

    goto :goto_13

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatePreemtableTimeout(J)V
    .registers 7

    invoke-static {}, Lcom/googlex/common/Config;->getInstance()Lcom/googlex/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlex/common/Config;->getClock()Lcom/googlex/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/googlex/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/googlex/masf/protocol/Request;->retryStartTimestamp:J

    iget-boolean v2, p0, Lcom/googlex/masf/protocol/Request;->immediate:Z

    if-eqz v2, :cond_1c

    iget-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryStartTimestamp:J

    iput-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryDeadline:J

    :goto_18
    invoke-direct {p0}, Lcom/googlex/masf/protocol/Request;->adjustRetryTimeout()V

    return-void

    :cond_1c
    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryDeadline:J

    goto :goto_18
.end method

.method public updateProgress(J)V
    .registers 5

    iget-boolean v0, p0, Lcom/googlex/masf/protocol/Request;->immediate:Z

    if-eqz v0, :cond_e

    const-wide/16 v0, 0xbb8

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryStartTimestamp:J

    const-wide/16 v0, 0x1388

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryDeadline:J

    :cond_e
    return-void
.end method

.method public declared-synchronized updateResendTimeoutOnError(J)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryTimeout:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryStartTimestamp:J

    iget-boolean v0, p0, Lcom/googlex/masf/protocol/Request;->immediate:Z

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryStartTimestamp:J

    iput-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryDeadline:J

    :goto_e
    invoke-direct {p0}, Lcom/googlex/masf/protocol/Request;->adjustRetryTimeout()V

    iget-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryTimeout:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryTimeout:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_21

    monitor-exit p0

    return-void

    :cond_1a
    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, p1

    :try_start_1e
    iput-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryDeadline:J
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_21

    goto :goto_e

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateResendTimeoutOnSent(J)V
    .registers 5

    monitor-enter p0

    const-wide/16 v0, 0xbb8

    add-long/2addr v0, p1

    :try_start_4
    iput-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryStartTimestamp:J

    const-wide/16 v0, 0x1388

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/googlex/masf/protocol/Request;->retryDeadline:J

    invoke-direct {p0}, Lcom/googlex/masf/protocol/Request;->adjustRetryTimeout()V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateSentCounter()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/googlex/masf/protocol/Request;->sentCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/googlex/masf/protocol/Request;->sentCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateSubmit()V
    .registers 5

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/googlex/masf/protocol/Request;->logger:Lcom/googlex/debug/LogSource;

    const-string v1, "updateSubmit"

    invoke-virtual {v0, v1}, Lcom/googlex/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/googlex/masf/protocol/Request;->submitTimestamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/googlex/common/Config;->getInstance()Lcom/googlex/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlex/common/Config;->getClock()Lcom/googlex/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/googlex/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlex/masf/protocol/Request;->submitTimestamp:J

    :cond_1d
    invoke-virtual {p0}, Lcom/googlex/masf/protocol/Request;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/googlex/masf/protocol/Request;->getRequestTimeoutPeriod()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/googlex/masf/protocol/Request;->requestTimeoutPeriod:J

    :cond_2f
    return-void
.end method
