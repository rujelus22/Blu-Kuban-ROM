.class public abstract Ljava/io/Reader;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Readable;
.implements Ljava/io/Closeable;


# instance fields
.field protected lock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p0, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "lock"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-nez p1, :cond_b

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 66
    :cond_b
    iput-object p1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 67
    return-void
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public mark(I)V
    .registers 3
    .parameter "readLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 123
    iget-object v2, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    const/4 v3, 0x1

    :try_start_5
    new-array v0, v3, [C

    .line 125
    .local v0, charArray:[C
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v3

    if-eq v3, v1, :cond_14

    .line 126
    const/4 v1, 0x0

    aget-char v1, v0, v1

    monitor-exit v2

    .line 128
    :goto_13
    return v1

    :cond_14
    monitor-exit v2

    goto :goto_13

    .line 129
    .end local v0           #charArray:[C
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .registers 5
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->length()I

    move-result v1

    .line 257
    .local v1, length:I
    new-array v0, v1, [C

    .line 258
    .local v0, buf:[C
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 259
    if-lez v1, :cond_14

    .line 260
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    .line 262
    :cond_14
    return v1
.end method

.method public read([C)I
    .registers 4
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0
.end method

.method public abstract read([CII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .registers 16
    .parameter "charCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-gez v7, :cond_1f

    .line 218
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "charCount < 0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 220
    :cond_1f
    iget-object v8, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 221
    const-wide/16 v2, 0x0

    .line 222
    .local v2, skipped:J
    const-wide/16 v9, 0x200

    cmp-long v7, p1, v9

    if-gez v7, :cond_3c

    long-to-int v6, p1

    .line 223
    .local v6, toRead:I
    :goto_2b
    :try_start_2b
    new-array v0, v6, [C

    .line 224
    .local v0, charsSkipped:[C
    :cond_2d
    :goto_2d
    cmp-long v7, v2, p1

    if-gez v7, :cond_51

    .line 225
    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7, v6}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 226
    .local v1, read:I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_3f

    .line 227
    monitor-exit v8

    move-wide v4, v2

    .line 237
    .end local v1           #read:I
    .end local v2           #skipped:J
    .local v4, skipped:J
    :goto_3b
    return-wide v4

    .line 222
    .end local v0           #charsSkipped:[C
    .end local v4           #skipped:J
    .end local v6           #toRead:I
    .restart local v2       #skipped:J
    :cond_3c
    const/16 v6, 0x200

    goto :goto_2b

    .line 229
    .restart local v0       #charsSkipped:[C
    .restart local v1       #read:I
    .restart local v6       #toRead:I
    :cond_3f
    int-to-long v9, v1

    add-long/2addr v2, v9

    .line 230
    if-ge v1, v6, :cond_46

    .line 231
    monitor-exit v8

    move-wide v4, v2

    .end local v2           #skipped:J
    .restart local v4       #skipped:J
    goto :goto_3b

    .line 233
    .end local v4           #skipped:J
    .restart local v2       #skipped:J
    :cond_46
    sub-long v9, p1, v2

    int-to-long v11, v6

    cmp-long v7, v9, v11

    if-gez v7, :cond_2d

    .line 234
    sub-long v9, p1, v2

    long-to-int v6, v9

    goto :goto_2d

    .line 237
    .end local v1           #read:I
    :cond_51
    monitor-exit v8

    move-wide v4, v2

    .end local v2           #skipped:J
    .restart local v4       #skipped:J
    goto :goto_3b

    .line 238
    .end local v0           #charsSkipped:[C
    .end local v4           #skipped:J
    .restart local v2       #skipped:J
    :catchall_54
    move-exception v7

    monitor-exit v8
    :try_end_56
    .catchall {:try_start_2b .. :try_end_56} :catchall_54

    throw v7
.end method
