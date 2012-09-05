.class public abstract Lcom/google/api/client/http/AbstractInputStreamContent;
.super Ljava/lang/Object;
.source "AbstractInputStreamContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field public encoding:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .parameter "inputStream"
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/16 v2, 0x800

    :try_start_2
    new-array v1, v2, [B

    .line 113
    .local v1, tmp:[B
    :goto_4
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, bytesRead:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_15

    .line 114
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_10

    goto :goto_4

    .line 117
    .end local v0           #bytesRead:I
    .end local v1           #tmp:[B
    :catchall_10
    move-exception v2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v2

    .restart local v0       #bytesRead:I
    .restart local v1       #tmp:[B
    :cond_15
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 119
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 14
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 53
    .local v3, inputStream:Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getLength()J

    move-result-wide v1

    .line 54
    .local v1, contentLength:J
    cmp-long v7, v1, v10

    if-gez v7, :cond_12

    .line 55
    invoke-static {v3, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 73
    :goto_11
    return-void

    .line 57
    :cond_12
    const/16 v7, 0x800

    new-array v0, v7, [B

    .line 60
    .local v0, buffer:[B
    move-wide v5, v1

    .line 61
    .local v5, remaining:J
    :goto_17
    cmp-long v7, v5, v10

    if-lez v7, :cond_2a

    .line 62
    const/4 v7, 0x0

    const-wide/16 v8, 0x800

    :try_start_1e
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_35

    move-result v4

    .line 63
    .local v4, read:I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2e

    .line 70
    .end local v4           #read:I
    :cond_2a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_11

    .line 66
    .restart local v4       #read:I
    :cond_2e
    const/4 v7, 0x0

    :try_start_2f
    invoke-virtual {p1, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_35

    .line 67
    int-to-long v7, v4

    sub-long/2addr v5, v7

    .line 68
    goto :goto_17

    .line 70
    .end local v4           #read:I
    :catchall_35
    move-exception v7

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v7
.end method
