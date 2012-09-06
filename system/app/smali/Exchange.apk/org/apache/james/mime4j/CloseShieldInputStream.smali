.class public Lorg/apache/james/mime4j/CloseShieldInputStream;
.super Ljava/io/InputStream;
.source "CloseShieldInputStream.java"


# instance fields
.field private is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .parameter "is"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    .line 41
    return-void
.end method

.method private checkIfClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    if-nez v0, :cond_c

    .line 127
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_c
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
    .line 59
    invoke-direct {p0}, Lorg/apache/james/mime4j/CloseShieldInputStream;->checkIfClosed()V

    .line 60
    iget-object v0, p0, Lorg/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

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
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    .line 69
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .parameter "readlimit"

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    .line 93
    iget-object v0, p0, Lorg/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 94
    :cond_a
    monitor-exit p0

    return-void

    .line 92
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    if-nez v0, :cond_6

    .line 84
    const/4 v0, 0x0

    .line 85
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    goto :goto_5
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/james/mime4j/CloseShieldInputStream;->checkIfClosed()V

    .line 52
    iget-object v0, p0, Lorg/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/apache/james/mime4j/CloseShieldInputStream;->checkIfClosed()V

    .line 109
    iget-object v0, p0, Lorg/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lorg/apache/james/mime4j/CloseShieldInputStream;->checkIfClosed()V

    .line 117
    iget-object v0, p0, Lorg/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/CloseShieldInputStream;->checkIfClosed()V

    .line 76
    iget-object v0, p0, Lorg/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 77
    monitor-exit p0

    return-void

    .line 75
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/apache/james/mime4j/CloseShieldInputStream;->checkIfClosed()V

    .line 101
    iget-object v0, p0, Lorg/apache/james/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
