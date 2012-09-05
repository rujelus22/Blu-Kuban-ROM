.class public Lorg/apache/http/impl/io/SocketInputBuffer;
.super Lorg/apache/http/impl/io/AbstractSessionInputBuffer;
.source "SocketInputBuffer.java"


# instance fields
.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V
    .registers 6
    .parameter "socket"
    .parameter "buffersize"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;-><init>()V

    .line 61
    if-nez p1, :cond_d

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_d
    iput-object p1, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    .line 70
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/http/impl/io/SocketInputBuffer;->init(Ljava/io/InputStream;ILorg/apache/http/params/HttpParams;)V

    .line 72
    return-void
.end method


# virtual methods
.method public isDataAvailable(I)Z
    .registers 7
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->hasBufferedData()Z

    move-result v2

    .line 76
    .local v2, result:Z
    if-nez v2, :cond_1d

    .line 77
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    .line 79
    .local v1, oldtimeout:I
    :try_start_c
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 80
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->fillBuffer()I

    .line 81
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->hasBufferedData()Z
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_24
    .catch Ljava/io/InterruptedIOException; {:try_start_c .. :try_end_17} :catch_1e

    move-result v2

    .line 87
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 90
    .end local v1           #oldtimeout:I
    :cond_1d
    :goto_1d
    return v2

    .line 82
    .restart local v1       #oldtimeout:I
    :catch_1e
    move-exception v0

    .line 83
    .local v0, e:Ljava/io/InterruptedIOException;
    :try_start_1f
    instance-of v3, v0, Ljava/net/SocketTimeoutException;

    if-nez v3, :cond_2b

    .line 84
    throw v0
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_24

    .line 87
    .end local v0           #e:Ljava/io/InterruptedIOException;
    :catchall_24
    move-exception v3

    iget-object v4, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v3

    .restart local v0       #e:Ljava/io/InterruptedIOException;
    :cond_2b
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_1d
.end method

.method public isStale()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 103
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->hasBufferedData()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 115
    :goto_8
    return v3

    .line 106
    :cond_9
    iget-object v4, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    .line 108
    .local v1, oldTimeout:I
    :try_start_f
    iget-object v4, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 109
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->fillBuffer()I
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_34
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_18} :catch_25
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_2c

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_23

    .line 115
    :goto_1c
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    move v3, v2

    goto :goto_8

    :cond_23
    move v2, v3

    .line 109
    goto :goto_1c

    .line 110
    :catch_25
    move-exception v0

    .line 115
    .local v0, e:Ljava/net/SocketTimeoutException;
    iget-object v2, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_8

    .line 112
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_2c
    move-exception v0

    .line 115
    .local v0, e:Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    move v3, v2

    goto :goto_8

    .end local v0           #e:Ljava/io/IOException;
    :catchall_34
    move-exception v2

    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
.end method
