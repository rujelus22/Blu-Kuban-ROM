.class public Ljava/io/PipedWriter;
.super Ljava/io/Writer;
.source "PipedWriter.java"


# instance fields
.field private destination:Ljava/io/PipedReader;

.field private isClosed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedReader;)V
    .registers 2
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0, p1}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 69
    .local v0, reader:Ljava/io/PipedReader;
    if-eqz v0, :cond_d

    .line 70
    invoke-virtual {v0}, Ljava/io/PipedReader;->done()V

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/PipedWriter;->isClosed:Z

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 74
    :cond_d
    return-void
.end method

.method public connect(Ljava/io/PipedReader;)V
    .registers 4
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_8

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_8
    monitor-enter p1

    .line 91
    :try_start_9
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    if-eqz v0, :cond_18

    .line 92
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :catchall_15
    move-exception v0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v0

    .line 94
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Ljava/io/PipedReader;->establishConnection()V

    .line 95
    iput-object p1, p0, Ljava/io/Writer;->lock:Ljava/lang/Object;

    .line 96
    iput-object p1, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 97
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_15

    .line 98
    return-void
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 110
    .local v0, reader:Ljava/io/PipedReader;
    iget-boolean v1, p0, Ljava/io/PipedWriter;->isClosed:Z

    if-eqz v1, :cond_e

    .line 111
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_e
    if-nez v0, :cond_11

    .line 120
    :goto_10
    return-void

    .line 117
    :cond_11
    monitor-enter v0

    .line 118
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 119
    monitor-exit v0

    goto :goto_10

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public write(I)V
    .registers 5
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 185
    .local v0, reader:Ljava/io/PipedReader;
    if-nez v0, :cond_c

    .line 186
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_c
    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/io/PipedReader;->receive(C)V

    .line 189
    return-void
.end method

.method public write([CII)V
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Ljava/io/PipedWriter;->destination:Ljava/io/PipedReader;

    .line 156
    .local v0, reader:Ljava/io/PipedReader;
    if-nez v0, :cond_c

    .line 157
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_c
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PipedReader;->receive([CII)V

    .line 160
    return-void
.end method
