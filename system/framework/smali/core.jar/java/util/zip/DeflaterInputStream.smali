.class public Ljava/util/zip/DeflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "DeflaterInputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400


# instance fields
.field private available:Z

.field protected final buf:[B

.field private closed:Z

.field protected final def:Ljava/util/zip/Deflater;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 49
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    const/16 v1, 0x400

    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;)V
    .registers 4
    .parameter "in"
    .parameter "deflater"

    .prologue
    .line 61
    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V
    .registers 5
    .parameter "in"
    .parameter "deflater"
    .parameter "bufferSize"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->closed:Z

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    .line 75
    if-eqz p1, :cond_d

    if-nez p2, :cond_13

    .line 76
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 78
    :cond_13
    if-gtz p3, :cond_1b

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 81
    :cond_1b
    iput-object p2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    .line 82
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    .line 83
    return-void
.end method

.method private checkClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->closed:Z

    if-eqz v0, :cond_c

    .line 206
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
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
    .line 176
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->checkClosed()V

    .line 177
    iget-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->closed:Z

    .line 92
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 93
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 94
    return-void
.end method

.method public mark(I)V
    .registers 2
    .parameter "limit"

    .prologue
    .line 194
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p0}, Llibcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 13
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 113
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->checkClosed()V

    .line 114
    array-length v5, p1

    invoke-static {v5, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 115
    if-nez p3, :cond_d

    move v2, v3

    .line 145
    :cond_c
    :goto_c
    return v2

    .line 119
    :cond_d
    iget-boolean v5, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    if-nez v5, :cond_13

    move v2, v4

    .line 120
    goto :goto_c

    .line 123
    :cond_13
    const/4 v2, 0x0

    .line 124
    .local v2, count:I
    :goto_14
    if-ge v2, p3, :cond_48

    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->finished()Z

    move-result v5

    if-nez v5, :cond_48

    .line 125
    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 127
    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v6, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 128
    .local v1, bytesRead:I
    if-ne v1, v4, :cond_4e

    .line 129
    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->finish()V

    .line 134
    .end local v1           #bytesRead:I
    :cond_35
    :goto_35
    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    iget-object v6, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    iget-object v7, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    array-length v7, v7

    sub-int v8, p3, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v5, v6, v3, v7}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 135
    .local v0, bytesDeflated:I
    if-ne v0, v4, :cond_56

    .line 141
    .end local v0           #bytesDeflated:I
    :cond_48
    if-nez v2, :cond_c

    .line 142
    const/4 v2, -0x1

    .line 143
    iput-boolean v3, p0, Ljava/util/zip/DeflaterInputStream;->available:Z

    goto :goto_c

    .line 131
    .restart local v1       #bytesRead:I
    :cond_4e
    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    iget-object v6, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    invoke-virtual {v5, v6, v3, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    goto :goto_35

    .line 138
    .end local v1           #bytesRead:I
    .restart local v0       #bytesDeflated:I
    :cond_56
    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    add-int v6, p2, v2

    invoke-static {v5, v3, p1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    add-int/2addr v2, v0

    .line 140
    goto :goto_14
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .registers 5
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 156
    invoke-static {p0, p1, p2}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
