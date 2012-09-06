.class public Lorg/apache/commons/io/input/TeeInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "TeeInputStream.java"


# instance fields
.field private final branch:Ljava/io/OutputStream;

.field private final closeBranch:Z


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    .line 92
    iget-boolean v0, p0, Lorg/apache/commons/io/input/TeeInputStream;->closeBranch:Z

    if-eqz v0, :cond_c

    .line 93
    iget-object v0, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 96
    :cond_c
    return-void

    .line 92
    :catchall_d
    move-exception v0

    iget-boolean v1, p0, Lorg/apache/commons/io/input/TeeInputStream;->closeBranch:Z

    if-eqz v1, :cond_17

    .line 93
    iget-object v1, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_17
    throw v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->read()I

    move-result v0

    .line 107
    .local v0, ch:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 108
    iget-object v1, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 110
    :cond_c
    return v0
.end method

.method public read([B)I
    .registers 5
    .parameter "bts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;->read([B)I

    move-result v0

    .line 141
    .local v0, n:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 142
    iget-object v1, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 144
    :cond_d
    return v0
.end method

.method public read([BII)I
    .registers 6
    .parameter "bts"
    .parameter "st"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->read([BII)I

    move-result v0

    .line 125
    .local v0, n:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 126
    iget-object v1, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 128
    :cond_c
    return v0
.end method
