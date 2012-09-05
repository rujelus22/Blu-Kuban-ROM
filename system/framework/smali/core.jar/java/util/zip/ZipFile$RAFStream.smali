.class Ljava/util/zip/ZipFile$RAFStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RAFStream"
.end annotation


# instance fields
.field mLength:J

.field mOffset:J

.field mSharedRaf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;J)V
    .registers 6
    .parameter "raf"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 385
    iput-object p1, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    .line 386
    iput-wide p2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    .line 387
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    .line 388
    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 13
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    iget-object v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    monitor-enter v2

    .line 400
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    iget-wide v3, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 401
    int-to-long v3, p3

    iget-wide v5, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v7, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long/2addr v5, v7

    cmp-long v1, v3, v5

    if-lez v1, :cond_1a

    .line 402
    iget-wide v3, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v5, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long/2addr v3, v5

    long-to-int p3, v3

    .line 404
    :cond_1a
    iget-object v1, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 405
    .local v0, count:I
    if-lez v0, :cond_2a

    .line 406
    iget-wide v3, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    .line 407
    monitor-exit v2

    .line 409
    .end local v0           #count:I
    :goto_29
    return v0

    .restart local v0       #count:I
    :cond_2a
    const/4 v0, -0x1

    monitor-exit v2

    goto :goto_29

    .line 411
    .end local v0           #count:I
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public skip(J)J
    .registers 7
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_f

    .line 417
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long p1, v0, v2

    .line 419
    :cond_f
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    .line 420
    return-wide p1
.end method
