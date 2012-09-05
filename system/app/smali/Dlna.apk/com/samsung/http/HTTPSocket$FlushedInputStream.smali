.class Lcom/samsung/http/HTTPSocket$FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "HTTPSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/http/HTTPSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlushedInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .parameter "inputStream"

    .prologue
    .line 294
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 295
    return-void
.end method


# virtual methods
.method public skip(J)J
    .registers 17
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const-wide/16 v8, 0x0

    .line 300
    .local v8, totalBytesSkipped:J
    const/high16 v1, 0x80

    .line 301
    .local v1, bufferSize:I
    new-array v0, v1, [B

    .line 302
    .local v0, buffer:[B
    :goto_6
    cmp-long v10, v8, p1

    if-ltz v10, :cond_b

    .line 331
    :cond_a
    return-wide v8

    .line 303
    :cond_b
    const-wide/16 v3, -0x1

    .line 304
    .local v3, bytesSkipped:J
    const-wide/32 v10, 0x7fffffff

    cmp-long v10, p1, v10

    if-lez v10, :cond_63

    .line 305
    iget-object v10, p0, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->in:Ljava/io/InputStream;

    const-wide/32 v11, 0x7fffffff

    invoke-virtual {v10, v11, v12}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    .line 306
    sub-long v10, p1, v3

    int-to-long v12, v1

    div-long/2addr v10, v12

    const-wide/16 v12, 0x1

    sub-long v5, v10, v12

    .line 307
    .local v5, count:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_26
    int-to-long v10, v7

    cmp-long v10, v10, v5

    if-ltz v10, :cond_41

    .line 310
    const-wide/16 v5, 0x0

    .line 311
    :cond_2d
    cmp-long v10, v3, p1

    if-ltz v10, :cond_4c

    .line 321
    .end local v5           #count:J
    .end local v7           #i:I
    :goto_31
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-nez v10, :cond_3f

    .line 322
    invoke-virtual {p0}, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->read()I

    move-result v2

    .line 323
    .local v2, byteOne:I
    if-ltz v2, :cond_a

    .line 326
    const-wide/16 v3, 0x1

    .line 329
    .end local v2           #byteOne:I
    :cond_3f
    add-long/2addr v8, v3

    goto :goto_6

    .line 308
    .restart local v5       #count:J
    .restart local v7       #i:I
    :cond_41
    iget-object v10, p0, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v3, v10

    .line 307
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    .line 312
    :cond_4c
    sub-long v10, p1, v3

    long-to-int v10, v10

    new-array v0, v10, [B

    .line 313
    iget-object v10, p0, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v3, v10

    .line 314
    const-wide/16 v10, 0x1

    add-long/2addr v5, v10

    .line 315
    const-wide/16 v10, 0x3

    cmp-long v10, v5, v10

    if-lez v10, :cond_2d

    goto :goto_31

    .line 319
    .end local v5           #count:J
    .end local v7           #i:I
    :cond_63
    iget-object v10, p0, Lcom/samsung/http/HTTPSocket$FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v11, p1, v8

    invoke-virtual {v10, v11, v12}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    goto :goto_31
.end method
