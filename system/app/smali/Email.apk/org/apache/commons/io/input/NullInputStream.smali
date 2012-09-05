.class public Lorg/apache/commons/io/input/NullInputStream;
.super Ljava/io/InputStream;
.source "NullInputStream.java"


# instance fields
.field private eof:Z

.field private mark:J

.field private markSupported:Z

.field private position:J

.field private readlimit:J

.field private size:J

.field private throwEofException:Z


# direct methods
.method private doEndOfFile()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    .line 321
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z

    if-eqz v0, :cond_d

    .line 322
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 324
    :cond_d
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public available()I
    .registers 7

    .prologue
    .line 124
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    sub-long v0, v2, v4

    .line 125
    .local v0, avail:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_e

    .line 126
    const/4 v2, 0x0

    .line 130
    :goto_d
    return v2

    .line 127
    :cond_e
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_19

    .line 128
    const v2, 0x7fffffff

    goto :goto_d

    .line 130
    :cond_19
    long-to-int v2, v0

    goto :goto_d
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 143
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 144
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 4
    .parameter "readlimit"

    .prologue
    .line 154
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    if-nez v0, :cond_10

    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 154
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 157
    :cond_10
    :try_start_10
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 158
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_d

    .line 159
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    return v0
.end method

.method protected processByte()I
    .registers 2

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method protected processBytes([BII)V
    .registers 4
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 309
    return-void
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    if-eqz v0, :cond_c

    .line 182
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_c
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 185
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result v0

    .line 188
    :goto_18
    return v0

    .line 187
    :cond_19
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 188
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullInputStream;->processByte()I

    move-result v0

    goto :goto_18
.end method

.method public read([B)I
    .registers 4
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    iget-boolean v1, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    if-eqz v1, :cond_c

    .line 221
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Read after end of file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_c
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v3, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_19

    .line 224
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result v0

    .line 233
    :goto_18
    return v0

    .line 226
    :cond_19
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 227
    move v0, p3

    .line 228
    .local v0, returnLength:I
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v3, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_34

    .line 229
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v3, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    sub-int v0, p3, v1

    .line 230
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    iput-wide v1, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 232
    :cond_34
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/io/input/NullInputStream;->processBytes([BII)V

    goto :goto_18
.end method

.method public declared-synchronized reset()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    if-nez v0, :cond_10

    .line 245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 244
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 247
    :cond_10
    :try_start_10
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_20

    .line 248
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_20
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_58

    .line 251
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked position ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_58
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z
    :try_end_5f
    .catchall {:try_start_10 .. :try_end_5f} :catchall_d

    .line 256
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .registers 9
    .parameter "numberOfBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    iget-boolean v2, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    if-eqz v2, :cond_c

    .line 271
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Skip after end of file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    :cond_c
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    .line 274
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result v2

    int-to-long v0, v2

    .line 282
    :cond_19
    :goto_19
    return-wide v0

    .line 276
    :cond_1a
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 277
    move-wide v0, p1

    .line 278
    .local v0, returnLength:J
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_19

    .line 279
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    sub-long/2addr v2, v4

    sub-long v0, p1, v2

    .line 280
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    iput-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    goto :goto_19
.end method
