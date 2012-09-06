.class public Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;
.super Ljava/io/InputStream;
.source "AbortRequestOnCloseInputStream.java"


# instance fields
.field private mAbortable:Lorg/apache/http/client/methods/AbortableHttpRequest;

.field private mEofReached:Z

.field private mWrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/AbortableHttpRequest;)V
    .registers 6
    .parameter "wrappedStream"
    .parameter "abortable"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mEofReached:Z

    .line 24
    if-eqz p1, :cond_a

    if-nez p2, :cond_2a

    .line 25
    :cond_a
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_27

    const-string v0, "wrappedStream"

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " was null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    const-string v0, "abortable"

    goto :goto_15

    .line 28
    :cond_2a
    iput-object p1, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    .line 29
    iput-object p2, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mAbortable:Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 30
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mEofReached:Z

    if-nez v0, :cond_9

    .line 54
    iget-object v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mAbortable:Lorg/apache/http/client/methods/AbortableHttpRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/AbortableHttpRequest;->abort()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_f

    .line 57
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 59
    return-void

    .line 57
    :catchall_f
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public mark(I)V
    .registers 3
    .parameter "readlimit"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 69
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v1, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 35
    .local v0, read:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 36
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mEofReached:Z

    .line 38
    :cond_c
    return v0
.end method

.method public read([BII)I
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v1, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 44
    .local v0, read:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 45
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mEofReached:Z

    .line 47
    :cond_c
    return v0
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 79
    return-void
.end method

.method public skip(J)J
    .registers 5
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;->mWrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
