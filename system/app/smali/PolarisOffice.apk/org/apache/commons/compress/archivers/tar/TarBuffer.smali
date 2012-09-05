.class Lorg/apache/commons/compress/archivers/tar/TarBuffer;
.super Ljava/lang/Object;
.source "TarBuffer.java"


# static fields
.field public static final DEFAULT_BLKSIZE:I = 0x2800

.field public static final DEFAULT_RCDSIZE:I = 0x200


# instance fields
.field private blockBuffer:[B

.field private blockSize:I

.field private currBlkIdx:I

.field private currRecIdx:I

.field private inStream:Ljava/io/InputStream;

.field private outStream:Ljava/io/OutputStream;

.field private recordSize:I

.field private recsPerBlock:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "inStream"

    .prologue
    .line 61
    const/16 v0, 0x2800

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;-><init>(Ljava/io/InputStream;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .parameter "inStream"
    .parameter "blockSize"

    .prologue
    .line 70
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;-><init>(Ljava/io/InputStream;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5
    .parameter "inStream"
    .parameter "blockSize"
    .parameter "recordSize"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    .line 83
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->initialize(II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "outStream"

    .prologue
    .line 91
    const/16 v0, 0x2800

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;-><init>(Ljava/io/OutputStream;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4
    .parameter "outStream"
    .parameter "blockSize"

    .prologue
    .line 100
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;-><init>(Ljava/io/OutputStream;II)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .registers 5
    .parameter "outStream"
    .parameter "blockSize"
    .parameter "recordSize"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    .line 111
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    .line 113
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->initialize(II)V

    .line 114
    return-void
.end method

.method private flushBlock()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_c

    .line 384
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_c
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    if-lez v0, :cond_13

    .line 388
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->writeBlock()V

    .line 390
    :cond_13
    return-void
.end method

.method private initialize(II)V
    .registers 6
    .parameter "blockSize"
    .parameter "recordSize"

    .prologue
    const/4 v2, 0x0

    .line 120
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockSize:I

    .line 121
    iput p2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    .line 122
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockSize:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recsPerBlock:I

    .line 123
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    .line 125
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1e

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currBlkIdx:I

    .line 127
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recsPerBlock:I

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    .line 132
    :goto_1d
    return-void

    .line 129
    :cond_1e
    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currBlkIdx:I

    .line 130
    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    goto :goto_1d
.end method

.method private readBlock()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 220
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez v5, :cond_d

    .line 221
    new-instance v4, Ljava/io/IOException;

    const-string v5, "reading from an output buffer"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 224
    :cond_d
    iput v4, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    .line 226
    const/4 v3, 0x0

    .line 227
    .local v3, offset:I
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockSize:I

    .line 229
    .local v0, bytesNeeded:I
    :cond_12
    :goto_12
    if-lez v0, :cond_2d

    .line 230
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    invoke-virtual {v5, v6, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    int-to-long v1, v5

    .line 246
    .local v1, numBytes:J
    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-nez v5, :cond_35

    .line 247
    if-nez v3, :cond_26

    .line 274
    .end local v1           #numBytes:J
    :goto_25
    return v4

    .line 259
    .restart local v1       #numBytes:J
    :cond_26
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    add-int v6, v3, v0

    invoke-static {v5, v3, v6, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 272
    .end local v1           #numBytes:J
    :cond_2d
    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currBlkIdx:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currBlkIdx:I

    .line 274
    const/4 v4, 0x1

    goto :goto_25

    .line 264
    .restart local v1       #numBytes:J
    :cond_35
    int-to-long v5, v3

    add-long/2addr v5, v1

    long-to-int v3, v5

    .line 265
    int-to-long v5, v0

    sub-long/2addr v5, v1

    long-to-int v0, v5

    .line 267
    iget v5, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockSize:I

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-eqz v5, :cond_12

    goto :goto_12
.end method

.method private writeBlock()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_d

    .line 368
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockSize:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 372
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 374
    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    .line 375
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currBlkIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currBlkIdx:I

    .line 376
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 377
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 398
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1c

    .line 399
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->flushBlock()V

    .line 401
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_1b

    .line 403
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 405
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    .line 414
    :cond_1b
    :goto_1b
    return-void

    .line 407
    :cond_1c
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1b

    .line 408
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_1b

    .line 409
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 411
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    goto :goto_1b
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockSize:I

    return v0
.end method

.method public getCurrentBlockNum()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currBlkIdx:I

    return v0
.end method

.method public getCurrentRecordNum()I
    .registers 2

    .prologue
    .line 293
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getRecordSize()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    return v0
.end method

.method public isEOFRecord([B)Z
    .registers 5
    .parameter "record"

    .prologue
    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->getRecordSize()I

    move-result v1

    .local v1, sz:I
    :goto_5
    if-ge v0, v1, :cond_10

    .line 159
    aget-byte v2, p1, v0

    if-eqz v2, :cond_d

    .line 160
    const/4 v2, 0x0

    .line 164
    :goto_c
    return v2

    .line 158
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 164
    :cond_10
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public readRecord()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez v1, :cond_18

    .line 193
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v1, :cond_10

    .line 194
    new-instance v1, Ljava/io/IOException;

    const-string v2, "input buffer is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_10
    new-instance v1, Ljava/io/IOException;

    const-string v2, "reading from an output buffer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_18
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recsPerBlock:I

    if-lt v1, v2, :cond_26

    .line 200
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->readBlock()Z

    move-result v1

    if-nez v1, :cond_26

    .line 201
    const/4 v0, 0x0

    .line 213
    :goto_25
    return-object v0

    .line 205
    :cond_26
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    new-array v0, v1, [B

    .line 207
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    goto :goto_25
.end method

.method public skipRecord()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_c

    .line 173
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading (via skip) from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_c
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recsPerBlock:I

    if-lt v0, v1, :cond_19

    .line 177
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->readBlock()Z

    move-result v0

    if-nez v0, :cond_19

    .line 183
    :goto_18
    return-void

    .line 182
    :cond_19
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    goto :goto_18
.end method

.method public writeRecord([B)V
    .registers 6
    .parameter "record"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_18

    .line 304
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_10

    .line 305
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_18
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    if-eq v0, v1, :cond_49

    .line 311
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "record to write has length \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' which is not the record size of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_49
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recsPerBlock:I

    if-lt v0, v1, :cond_52

    .line 318
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->writeBlock()V

    .line 321
    :cond_52
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    mul-int/2addr v2, v3

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    .line 326
    return-void
.end method

.method public writeRecord([BI)V
    .registers 6
    .parameter "buf"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_18

    .line 339
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_10

    .line 340
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Output buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_18
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_54

    .line 346
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "record has length \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' with offset \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' which is less than the record size of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_54
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recsPerBlock:I

    if-lt v0, v1, :cond_5d

    .line 353
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->writeBlock()V

    .line 356
    :cond_5d
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->blockBuffer:[B

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    mul-int/2addr v1, v2

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->recordSize:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarBuffer;->currRecIdx:I

    .line 361
    return-void
.end method
