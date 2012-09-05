.class public Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;
.super Ljava/io/OutputStream;
.source "ChunkedOutputStream.java"


# static fields
.field private static final DEFAULT_MIN_CHUNK_SIZE:I = 0x400

.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field private ivClosed:Z

.field private ivMinChunkSize:I

.field private ivOut:Ljava/io/OutputStream;

.field private ivWriteBuffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

.field private singleByteBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->singleByteBuffer:[B

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivClosed:Z

    .line 28
    const/16 v0, 0x400

    iput v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivMinChunkSize:I

    .line 34
    new-instance v0, Lcom/vlingo/client/core/http/custom/BufferedOutputStream;

    iget v1, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivMinChunkSize:I

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/vlingo/client/core/http/custom/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivOut:Ljava/io/OutputStream;

    .line 35
    new-instance v0, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    iget v1, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivMinChunkSize:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivWriteBuffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    .line 36
    return-void
.end method

.method private bufferedWrite([BII)V
    .registers 6
    .parameter "buff"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->checkClosed()V

    .line 53
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivWriteBuffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->write([BII)V

    .line 55
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivWriteBuffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivMinChunkSize:I

    if-lt v0, v1, :cond_15

    .line 56
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->flushBuffer()V

    .line 58
    :cond_15
    return-void
.end method

.method private checkClosed()V
    .registers 3

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivClosed:Z

    if-eqz v0, :cond_c

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream is closed already"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_c
    return-void
.end method

.method private flushBuffer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivWriteBuffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->getByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivWriteBuffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->size()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->writeChunk([BII)V

    .line 62
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivWriteBuffer:Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->reset()V

    .line 63
    return-void
.end method

.method private writeChunk([BII)V
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
    .line 74
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 78
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 79
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivClosed:Z

    .line 48
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 49
    return-void
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->flushBuffer()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 126
    monitor-exit p0

    return-void

    .line 125
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 5
    .parameter "it"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->singleByteBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 111
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->singleByteBuffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->bufferedWrite([BII)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 112
    monitor-exit p0

    return-void

    .line 110
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([B)V
    .registers 4
    .parameter "buff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->bufferedWrite([BII)V
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 117
    monitor-exit p0

    return-void

    .line 116
    :catchall_8
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
    .line 121
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->bufferedWrite([BII)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 122
    monitor-exit p0

    return-void

    .line 121
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeLastChunk()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->checkClosed()V

    .line 93
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->flushBuffer()V

    .line 105
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedOutputStream;->ivOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 106
    monitor-exit p0

    return-void

    .line 90
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
