.class abstract Llibcore/net/http/AbstractHttpInputStream;
.super Ljava/io/InputStream;
.source "AbstractHttpInputStream.java"


# instance fields
.field private final cacheBody:Ljava/io/OutputStream;

.field private final cacheRequest:Ljava/net/CacheRequest;

.field protected closed:Z

.field protected final httpEngine:Llibcore/net/http/HttpEngine;

.field protected final in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Llibcore/net/http/HttpEngine;Ljava/net/CacheRequest;)V
    .registers 5
    .parameter "in"
    .parameter "httpEngine"
    .parameter "cacheRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    iput-object p1, p0, Llibcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    .line 45
    iput-object p2, p0, Llibcore/net/http/AbstractHttpInputStream;->httpEngine:Llibcore/net/http/HttpEngine;

    .line 47
    if-eqz p3, :cond_15

    invoke-virtual {p3}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 50
    .local v0, cacheBody:Ljava/io/OutputStream;
    :goto_d
    if-nez v0, :cond_10

    .line 51
    const/4 p3, 0x0

    .line 54
    :cond_10
    iput-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    .line 55
    iput-object p3, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    .line 56
    return-void

    .line 47
    .end local v0           #cacheBody:Ljava/io/OutputStream;
    :cond_15
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method protected final cacheWrite([BII)V
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
    .line 73
    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    if-eqz v0, :cond_9

    .line 74
    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 76
    :cond_9
    return-void
.end method

.method protected final checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-boolean v0, p0, Llibcore/net/http/AbstractHttpInputStream;->closed:Z

    if-eqz v0, :cond_c

    .line 68
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_c
    return-void
.end method

.method protected final endOfInput(Z)V
    .registers 3
    .parameter "reuseSocket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_9

    .line 84
    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 86
    :cond_9
    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->httpEngine:Llibcore/net/http/HttpEngine;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpEngine;->release(Z)V

    .line 87
    return-void
.end method

.method public final read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method protected final unexpectedEndOfInput()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_9

    .line 103
    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    .line 105
    :cond_9
    iget-object v0, p0, Llibcore/net/http/AbstractHttpInputStream;->httpEngine:Llibcore/net/http/HttpEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llibcore/net/http/HttpEngine;->release(Z)V

    .line 106
    return-void
.end method
