.class public abstract Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;
.super Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Block;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;
    }
.end annotation


# instance fields
.field protected listener:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;

.field protected retryCount:I

.field protected retryTimeout:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Block;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryTimeout:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryCount:I

    return-void
.end method


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized getListener()Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->listener:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRetryTimeout()J
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryTimeout:J

    iget-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryTimeout:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryTimeout:J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-wide v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getStreamLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized setListener(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->listener:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRetryCount(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRetryTimeout(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryTimeout:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldRetry()Z
    .registers 4

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryCount:I

    sub-int v1, v0, v2

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;->retryCount:I
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_f

    if-lez v0, :cond_d

    move v0, v2

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
