.class public abstract Lcom/googlex/common/io/android/J2SeTcpConnectionFactory;
.super Lcom/googlex/common/io/BaseTcpConnectionFactory;

# interfaces
.implements Lcom/googlex/common/io/android/CountingByteChannel$Counter;


# instance fields
.field private receivedBytes:J

.field private sentBytes:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlex/common/io/BaseTcpConnectionFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized bytesRead(I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/googlex/common/io/android/J2SeTcpConnectionFactory;->receivedBytes:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/googlex/common/io/android/J2SeTcpConnectionFactory;->receivedBytes:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bytesWritten(I)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/googlex/common/io/android/J2SeTcpConnectionFactory;->sentBytes:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/googlex/common/io/android/J2SeTcpConnectionFactory;->sentBytes:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createConnection(Ljava/lang/String;I)Lcom/googlex/common/io/GoogleTcpConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/googlex/common/io/android/J2SeTcpConnection;

    invoke-direct {v0, p0, p1, p2}, Lcom/googlex/common/io/android/J2SeTcpConnection;-><init>(Lcom/googlex/common/io/android/J2SeTcpConnectionFactory;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getReceivedBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/googlex/common/io/android/J2SeTcpConnectionFactory;->receivedBytes:J

    return-wide v0
.end method

.method public getSentBytes()J
    .registers 3

    iget-wide v0, p0, Lcom/googlex/common/io/android/J2SeTcpConnectionFactory;->sentBytes:J

    return-wide v0
.end method

.method public abstract isNetworkAvailable()I
.end method

.method public resetSentReceiveBytes()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlex/common/io/android/J2SeTcpConnectionFactory;->receivedBytes:J

    iput-wide v0, p0, Lcom/googlex/common/io/android/J2SeTcpConnectionFactory;->sentBytes:J

    return-void
.end method
