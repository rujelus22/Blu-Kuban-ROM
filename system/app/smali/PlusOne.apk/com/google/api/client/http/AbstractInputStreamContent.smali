.class public abstract Lcom/google/api/client/http/AbstractInputStreamContent;
.super Ljava/lang/Object;
.source "AbstractInputStreamContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field private encoding:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 52
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
    .line 141
    const/16 v2, 0x800

    :try_start_2
    new-array v1, v2, [B

    .line 143
    .local v1, tmp:[B
    :goto_4
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, bytesRead:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_15

    .line 144
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_10

    goto :goto_4

    .line 147
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

    .line 149
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
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
    .line 91
    iget-object v0, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .registers 2
    .parameter "type"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/api/client/http/AbstractInputStreamContent;->type:Ljava/lang/String;

    .line 111
    return-object p0
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

    .line 63
    invoke-virtual {p0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 64
    .local v3, inputStream:Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getLength()J

    move-result-wide v1

    .line 65
    .local v1, contentLength:J
    cmp-long v7, v1, v10

    if-gez v7, :cond_12

    .line 66
    invoke-static {v3, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 84
    :goto_11
    return-void

    .line 68
    :cond_12
    const/16 v7, 0x800

    new-array v0, v7, [B

    .line 71
    .local v0, buffer:[B
    move-wide v5, v1

    .line 72
    .local v5, remaining:J
    :goto_17
    cmp-long v7, v5, v10

    if-lez v7, :cond_2a

    .line 73
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

    .line 74
    .local v4, read:I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2e

    .line 81
    .end local v4           #read:I
    :cond_2a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_11

    .line 77
    .restart local v4       #read:I
    :cond_2e
    const/4 v7, 0x0

    :try_start_2f
    invoke-virtual {p1, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_35

    .line 78
    int-to-long v7, v4

    sub-long/2addr v5, v7

    .line 79
    goto :goto_17

    .line 81
    .end local v4           #read:I
    :catchall_35
    move-exception v7

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v7
.end method
