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
    .line 170
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mConsumed:Z

    .line 171
    iput-object p1, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mDebugPrefix:Ljava/lang/String;

    .line 172
    iput-object p2, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mReadStream:Ljava/io/InputStream;

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Lcom/google/android/music/dl/stream/StreamRequestHandler$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mReadStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 217
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 209
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
    .registers 9
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const-wide/16 v2, 0x0

    .line 178
    .local v2, totalRead:J
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 181
    const/16 v4, 0x800

    new-array v0, v4, [B

    .line 183
    .local v0, buff:[B
    :goto_9
    iget-object v4, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mReadStream:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, len:I
    if-ltz v1, :cond_18

    .line 184
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 185
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_9

    .line 187
    :cond_18
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 188
    const-string v4, "Streamer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished writeTo("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mDebugPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mConsumed:Z
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_48

    .line 191
    iget-object v4, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mReadStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 193
    return-void

    .line 191
    .end local v0           #buff:[B
    .end local v1           #len:I
    :catchall_48
    move-exception v4

    iget-object v5, p0, Lcom/google/android/music/dl/stream/StreamRequestHandler$InputStreamEntity;->mReadStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v4
.end method
