.class Lorg/apache/commons/httpclient/AutoCloseInputStream;
.super Ljava/io/FilterInputStream;
.source "AutoCloseInputStream.java"


# instance fields
.field private selfClosed:Z

.field private streamOpen:Z

.field private watcher:Lorg/apache/commons/httpclient/ResponseConsumedWatcher;


# direct methods
.method private checkClose(I)V
    .registers 3
    .parameter "readResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 244
    invoke-direct {p0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->notifyWatcher()V

    .line 248
    :cond_6
    return-void
.end method

.method private isReadAllowed()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->streamOpen:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->selfClosed:Z

    if-eqz v0, :cond_10

    .line 262
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_10
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->streamOpen:Z

    return v0
.end method

.method private notifyWatcher()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->streamOpen:Z

    if-eqz v0, :cond_13

    .line 280
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->streamOpen:Z

    .line 284
    iget-object v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->watcher:Lorg/apache/commons/httpclient/ResponseConsumedWatcher;

    if-eqz v0, :cond_13

    .line 286
    iget-object v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->watcher:Lorg/apache/commons/httpclient/ResponseConsumedWatcher;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/ResponseConsumedWatcher;->responseConsumed()V

    .line 292
    :cond_13
    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, a:I
    invoke-direct {p0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 204
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    .line 210
    :cond_b
    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->selfClosed:Z

    if-nez v0, :cond_a

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/AutoCloseInputStream;->selfClosed:Z

    .line 227
    invoke-direct {p0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->notifyWatcher()V

    .line 231
    :cond_a
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, -0x1

    .line 126
    .local v0, l:I
    invoke-direct {p0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 130
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 132
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->checkClose(I)V

    .line 136
    :cond_e
    return v0
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, -0x1

    .line 179
    .local v0, l:I
    invoke-direct {p0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 181
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    .line 183
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->checkClose(I)V

    .line 187
    :cond_e
    return v0
.end method

.method public read([BII)I
    .registers 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, -0x1

    .line 154
    .local v0, l:I
    invoke-direct {p0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 156
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 158
    invoke-direct {p0, v0}, Lorg/apache/commons/httpclient/AutoCloseInputStream;->checkClose(I)V

    .line 162
    :cond_e
    return v0
.end method
