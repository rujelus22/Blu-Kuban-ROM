.class public Lcom/android/browser/SnapshotByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "SnapshotByteArrayOutputStream.java"


# instance fields
.field private mStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 29
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v1, 0x1e8480

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/SnapshotByteArrayOutputStream;->mStream:Ljava/io/ByteArrayOutputStream;

    .line 30
    return-void
.end method

.method private checkError(I)V
    .registers 4
    .parameter "expandBy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/browser/SnapshotByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    const v1, 0x1e8480

    if-le v0, v1, :cond_12

    .line 46
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exceeded max size!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_12
    return-void
.end method


# virtual methods
.method public size()I
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/browser/SnapshotByteArrayOutputStream;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/browser/SnapshotByteArrayOutputStream;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .registers 3
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/browser/SnapshotByteArrayOutputStream;->checkError(I)V

    .line 35
    iget-object v0, p0, Lcom/android/browser/SnapshotByteArrayOutputStream;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 36
    monitor-exit p0

    return-void

    .line 34
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([BII)V
    .registers 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p3}, Lcom/android/browser/SnapshotByteArrayOutputStream;->checkError(I)V

    .line 41
    iget-object v0, p0, Lcom/android/browser/SnapshotByteArrayOutputStream;->mStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 42
    return-void
.end method