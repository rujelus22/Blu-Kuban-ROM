.class public Ljava/io/PushbackReader;
.super Ljava/io/FilterReader;
.source "PushbackReader.java"


# instance fields
.field buf:[C

.field pos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 52
    new-array v0, v1, [C

    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    .line 53
    iput v1, p0, Ljava/io/PushbackReader;->pos:I

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 5
    .parameter "in"
    .parameter "size"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 69
    if-gtz p2, :cond_d

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_d
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    .line 73
    iput p2, p0, Ljava/io/PushbackReader;->pos:I

    .line 74
    return-void
.end method

.method private checkNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    if-nez v0, :cond_c

    .line 153
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PushbackReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_c
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
    .line 85
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    .line 87
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public mark(I)V
    .registers 4
    .parameter "readAheadLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_3
    invoke-direct {p0}, Ljava/io/PushbackReader;->checkNotClosed()V

    .line 140
    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    iget-object v2, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 141
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PushbackReader;->pos:I

    aget-char v0, v0, v2

    monitor-exit v1

    .line 147
    :goto_18
    return v0

    :cond_19
    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    monitor-exit v1

    goto :goto_18

    .line 148
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public read([CII)I
    .registers 11
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v5, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 185
    :try_start_3
    invoke-direct {p0}, Ljava/io/PushbackReader;->checkNotClosed()V

    .line 186
    array-length v4, p1

    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, copiedChars:I
    const/4 v1, 0x0

    .line 190
    .local v1, copyLength:I
    move v3, p2

    .line 192
    .local v3, newOffset:I
    iget v4, p0, Ljava/io/PushbackReader;->pos:I

    iget-object v6, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v6, v6

    if-ge v4, v6, :cond_2b

    .line 193
    iget-object v4, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v4, v4

    iget v6, p0, Ljava/io/PushbackReader;->pos:I

    sub-int/2addr v4, v6

    if-lt v4, p3, :cond_2f

    move v1, p3

    .line 195
    :goto_1d
    iget-object v4, p0, Ljava/io/PushbackReader;->buf:[C

    iget v6, p0, Ljava/io/PushbackReader;->pos:I

    invoke-static {v4, v6, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    add-int/2addr v3, v1

    .line 197
    add-int/2addr v0, v1

    .line 199
    iget v4, p0, Ljava/io/PushbackReader;->pos:I

    add-int/2addr v4, v1

    iput v4, p0, Ljava/io/PushbackReader;->pos:I

    .line 202
    :cond_2b
    if-ne v1, p3, :cond_37

    .line 203
    monitor-exit v5

    .line 212
    .end local p3
    :goto_2e
    return p3

    .line 193
    .restart local p3
    :cond_2f
    iget-object v4, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v4, v4

    iget v6, p0, Ljava/io/PushbackReader;->pos:I

    sub-int v1, v4, v6

    goto :goto_1d

    .line 205
    :cond_37
    iget-object v4, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    sub-int v6, p3, v0

    invoke-virtual {v4, p1, v3, v6}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 206
    .local v2, inCopied:I
    if-lez v2, :cond_48

    .line 207
    add-int p3, v2, v0

    monitor-exit v5

    goto :goto_2e

    .line 213
    .end local v0           #copiedChars:I
    .end local v1           #copyLength:I
    .end local v2           #inCopied:I
    .end local v3           #newOffset:I
    .end local p3
    :catchall_45
    move-exception v4

    monitor-exit v5
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v4

    .line 209
    .restart local v0       #copiedChars:I
    .restart local v1       #copyLength:I
    .restart local v2       #inCopied:I
    .restart local v3       #newOffset:I
    .restart local p3
    :cond_48
    if-nez v0, :cond_4d

    .line 210
    :try_start_4a
    monitor-exit v5

    move p3, v2

    goto :goto_2e

    .line 212
    :cond_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_45

    move p3, v0

    goto :goto_2e
.end method

.method public ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_3
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    if-nez v0, :cond_12

    .line 233
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Reader is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    .line 235
    :cond_12
    :try_start_12
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v0, v0

    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    sub-int/2addr v0, v2

    if-gtz v0, :cond_22

    iget-object v0, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_22
    const/4 v0, 0x1

    :goto_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_f

    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .registers 13
    .parameter "charCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 353
    cmp-long v7, p1, v5

    if-gez v7, :cond_1f

    .line 354
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "charCount < 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 356
    :cond_1f
    iget-object v7, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 357
    :try_start_22
    invoke-direct {p0}, Ljava/io/PushbackReader;->checkNotClosed()V

    .line 358
    cmp-long v8, p1, v5

    if-nez v8, :cond_2c

    .line 359
    monitor-exit v7

    move-wide p1, v5

    .line 374
    .end local p1
    :goto_2b
    return-wide p1

    .line 362
    .restart local p1
    :cond_2c
    iget-object v8, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v8, v8

    iget v9, p0, Ljava/io/PushbackReader;->pos:I

    sub-int v0, v8, v9

    .line 363
    .local v0, availableFromBuffer:I
    if-lez v0, :cond_58

    .line 364
    int-to-long v8, v0

    sub-long v3, p1, v8

    .line 365
    .local v3, requiredFromIn:J
    cmp-long v5, v3, v5

    if-gtz v5, :cond_48

    .line 366
    iget v5, p0, Ljava/io/PushbackReader;->pos:I

    int-to-long v5, v5

    add-long/2addr v5, p1

    long-to-int v5, v5

    iput v5, p0, Ljava/io/PushbackReader;->pos:I

    .line 367
    monitor-exit v7

    goto :goto_2b

    .line 375
    .end local v0           #availableFromBuffer:I
    .end local v3           #requiredFromIn:J
    .end local p1
    :catchall_45
    move-exception v5

    monitor-exit v7
    :try_end_47
    .catchall {:try_start_22 .. :try_end_47} :catchall_45

    throw v5

    .line 369
    .restart local v0       #availableFromBuffer:I
    .restart local v3       #requiredFromIn:J
    .restart local p1
    :cond_48
    :try_start_48
    iget v5, p0, Ljava/io/PushbackReader;->pos:I

    add-int/2addr v5, v0

    iput v5, p0, Ljava/io/PushbackReader;->pos:I

    .line 370
    iget-object v5, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v5, v3, v4}, Ljava/io/Reader;->skip(J)J

    move-result-wide v1

    .line 374
    .end local v3           #requiredFromIn:J
    .local v1, inSkipped:J
    :goto_53
    int-to-long v5, v0

    add-long p1, v1, v5

    monitor-exit v7

    goto :goto_2b

    .line 372
    .end local v1           #inSkipped:J
    :cond_58
    iget-object v5, p0, Ljava/io/FilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v5, p1, p2}, Ljava/io/Reader;->skip(J)J
    :try_end_5d
    .catchall {:try_start_48 .. :try_end_5d} :catchall_45

    move-result-wide v1

    .restart local v1       #inSkipped:J
    goto :goto_53
.end method

.method public unread(I)V
    .registers 6
    .parameter "oneChar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 333
    :try_start_3
    invoke-direct {p0}, Ljava/io/PushbackReader;->checkNotClosed()V

    .line 334
    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    if-nez v0, :cond_15

    .line 335
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Pushback buffer full"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0

    .line 337
    :cond_15
    :try_start_15
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/io/PushbackReader;->pos:I

    int-to-char v3, p1

    aput-char v3, v0, v2

    .line 338
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_12

    .line 339
    return-void
.end method

.method public unread([C)V
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PushbackReader;->unread([CII)V

    .line 272
    return-void
.end method

.method public unread([CII)V
    .registers 8
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v2, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 306
    :try_start_3
    invoke-direct {p0}, Ljava/io/PushbackReader;->checkNotClosed()V

    .line 307
    iget v1, p0, Ljava/io/PushbackReader;->pos:I

    if-le p3, v1, :cond_15

    .line 308
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Pushback buffer full"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1

    .line 310
    :cond_15
    :try_start_15
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 311
    add-int v1, p2, p3

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_1d
    if-lt v0, p2, :cond_27

    .line 312
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/PushbackReader;->unread(I)V

    .line 311
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 314
    :cond_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_12

    .line 315
    return-void
.end method
