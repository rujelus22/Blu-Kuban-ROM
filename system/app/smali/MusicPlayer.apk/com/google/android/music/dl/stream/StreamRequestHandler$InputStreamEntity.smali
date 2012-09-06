.class Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "StreamRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/stream/StreamRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStreamEntity"
.end annotation


# instance fields
.field private mConsumed:Z

.field private final mDebugPrefix:Ljava/lang/String;

.field private mReadStream:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 4
    .parameter "debugprefix"
    .parameter "is"

    .prologue
    .line 186
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mConsumed:Z

    .line 187
    iput-object p1, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mDebugPrefix:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mReadStream:Ljava/io/InputStream;

    .line 189
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/google/android/music/dl/stream/StreamRequestHandler$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mReadStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 235
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mConsumed:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 12
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 192
    const-wide/16 v3, 0x0

    .line 193
    .local v3, totalRead:J
    const/4 v2, 0x0

    .line 195
    .local v2, success:Z
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 198
    const/16 v7, 0x800

    new-array v0, v7, [B

    .line 200
    .local v0, buff:[B
    :goto_c
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mReadStream:Ljava/io/InputStream;

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, len:I
    if-ltz v1, :cond_1b

    .line 201
    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 202
    int-to-long v7, v1

    add-long/2addr v3, v7

    goto :goto_c

    .line 204
    :cond_1b
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 205
    const-string v7, "Streamer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Finished writeTo("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mDebugPrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mConsumed:Z
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_50

    .line 207
    const/4 v2, 0x1

    .line 209
    iget-object v7, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mReadStream:Ljava/io/InputStream;

    if-nez v2, :cond_4e

    :goto_4a
    invoke-static {v7, v5}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 211
    return-void

    :cond_4e
    move v5, v6

    .line 209
    goto :goto_4a

    .end local v0           #buff:[B
    .end local v1           #len:I
    :catchall_50
    move-exception v7

    iget-object v8, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mReadStream:Ljava/io/InputStream;

    if-nez v2, :cond_59

    :goto_55
    invoke-static {v8, v5}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    throw v7

    :cond_59
    move v5, v6

    goto :goto_55
.end method
