.class public final Lorg/codehaus/jackson/io/MergedStream;
.super Ljava/io/InputStream;
.source "MergedStream.java"


# instance fields
.field _buffer:[B

.field protected final _context:Lorg/codehaus/jackson/io/IOContext;

.field final _end:I

.field final _in:Ljava/io/InputStream;

.field _ptr:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V
    .registers 6
    .parameter "context"
    .parameter "in"
    .parameter "buf"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/codehaus/jackson/io/MergedStream;->_context:Lorg/codehaus/jackson/io/IOContext;

    .line 30
    iput-object p2, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    .line 31
    iput-object p3, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    .line 32
    iput p4, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    .line 33
    iput p5, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    .line 34
    return-void
.end method

.method private freeMergedBuffer()V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    .line 138
    .local v0, buf:[B
    if-eqz v0, :cond_10

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    .line 140
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_context:Lorg/codehaus/jackson/io/IOContext;

    if-eqz v1, :cond_10

    .line 141
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V

    .line 144
    :cond_10
    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v0, :cond_a

    .line 40
    iget v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    sub-int/2addr v0, v1

    .line 42
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_9
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    .line 49
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 50
    return-void
.end method

.method public mark(I)V
    .registers 3
    .parameter "readlimit"

    .prologue
    .line 55
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-nez v0, :cond_9

    .line 56
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 58
    :cond_9
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v1, :cond_1a

    .line 71
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    iget v2, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 72
    .local v0, c:I
    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    iget v2, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    if-lt v1, v2, :cond_19

    .line 73
    invoke-direct {p0}, Lorg/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    .line 77
    .end local v0           #c:I
    :cond_19
    :goto_19
    return v0

    :cond_1a
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_19
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/io/MergedStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 7
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v1, :cond_24

    .line 90
    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    iget v2, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    sub-int v0, v1, v2

    .line 91
    .local v0, avail:I
    if-le p3, v0, :cond_d

    .line 92
    move p3, v0

    .line 94
    :cond_d
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    iget v2, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    .line 96
    iget v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    iget v2, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    if-lt v1, v2, :cond_22

    .line 97
    invoke-direct {p0}, Lorg/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    :cond_22
    move v1, p3

    .line 101
    .end local v0           #avail:I
    :goto_23
    return v1

    :cond_24
    iget-object v1, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_23
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-nez v0, :cond_9

    .line 108
    iget-object v0, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 110
    :cond_9
    return-void
.end method

.method public skip(J)J
    .registers 8
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const-wide/16 v1, 0x0

    .line 117
    .local v1, count:J
    iget-object v3, p0, Lorg/codehaus/jackson/io/MergedStream;->_buffer:[B

    if-eqz v3, :cond_20

    .line 118
    iget v3, p0, Lorg/codehaus/jackson/io/MergedStream;->_end:I

    iget v4, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    sub-int v0, v3, v4

    .line 120
    .local v0, amount:I
    int-to-long v3, v0

    cmp-long v3, v3, p1

    if-lez v3, :cond_19

    .line 121
    iget v3, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    long-to-int v4, p1

    add-int/2addr v3, v4

    iput v3, p0, Lorg/codehaus/jackson/io/MergedStream;->_ptr:I

    move-wide v3, p1

    .line 132
    .end local v0           #amount:I
    :goto_18
    return-wide v3

    .line 124
    .restart local v0       #amount:I
    :cond_19
    invoke-direct {p0}, Lorg/codehaus/jackson/io/MergedStream;->freeMergedBuffer()V

    .line 125
    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 126
    int-to-long v3, v0

    sub-long/2addr p1, v3

    .line 129
    .end local v0           #amount:I
    :cond_20
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_2d

    .line 130
    iget-object v3, p0, Lorg/codehaus/jackson/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_2d
    move-wide v3, v1

    .line 132
    goto :goto_18
.end method
