.class public Lcom/vlingo/client/core/http/custom/BufferedOutputStream;
.super Ljava/io/OutputStream;
.source "BufferedOutputStream.java"


# instance fields
.field private buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4
    .parameter "out"
    .parameter "bufferSize"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/BufferedOutputStream;->out:Ljava/io/OutputStream;

    .line 29
    new-instance v0, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-direct {v0, p2}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/BufferedOutputStream;->buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    .line 30
    return-void
.end method


# virtual methods
.method public declared-synchronized flush()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/BufferedOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/BufferedOutputStream;->buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v1}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->getByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vlingo/client/core/http/custom/BufferedOutputStream;->buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v3}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 50
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 51
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/BufferedOutputStream;->buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->reset()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 52
    monitor-exit p0

    return-void

    .line 47
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/BufferedOutputStream;->buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->write(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 34
    monitor-exit p0

    return-void

    .line 33
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([B)V
    .registers 5
    .parameter "buff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/BufferedOutputStream;->buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 5
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/BufferedOutputStream;->buffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
