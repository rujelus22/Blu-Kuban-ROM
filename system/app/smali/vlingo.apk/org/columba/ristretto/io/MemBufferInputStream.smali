.class public Lorg/columba/ristretto/io/MemBufferInputStream;
.super Ljava/io/InputStream;
.source "MemBufferInputStream.java"


# instance fields
.field private buffer:Lorg/columba/ristretto/io/MemBuffer;

.field private pos:I


# direct methods
.method public constructor <init>(Lorg/columba/ristretto/io/MemBuffer;)V
    .registers 2
    .parameter "buffer"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->buffer:Lorg/columba/ristretto/io/MemBuffer;

    .line 59
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
    .line 73
    iget-object v0, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->buffer:Lorg/columba/ristretto/io/MemBuffer;

    invoke-virtual {v0}, Lorg/columba/ristretto/io/MemBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->pos:I

    sub-int/2addr v0, v1

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
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->buffer:Lorg/columba/ristretto/io/MemBuffer;

    .line 80
    return-void
.end method

.method public getBuffer()Lorg/columba/ristretto/io/MemBuffer;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->buffer:Lorg/columba/ristretto/io/MemBuffer;

    return-object v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->buffer:Lorg/columba/ristretto/io/MemBuffer;

    invoke-virtual {v0}, Lorg/columba/ristretto/io/MemBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->pos:I

    if-ne v0, v1, :cond_c

    const/4 v0, -0x1

    .line 66
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->buffer:Lorg/columba/ristretto/io/MemBuffer;

    iget v1, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->pos:I

    invoke-virtual {v0, v1}, Lorg/columba/ristretto/io/MemBuffer;->get(I)I

    move-result v0

    goto :goto_b
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
    .line 85
    iget-object v1, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->buffer:Lorg/columba/ristretto/io/MemBuffer;

    iget v2, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->pos:I

    invoke-virtual {v1, v2, p1, p2, p3}, Lorg/columba/ristretto/io/MemBuffer;->get(I[BII)I

    move-result v0

    .line 86
    .local v0, result:I
    iget v1, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->pos:I

    .line 87
    if-nez v0, :cond_10

    const/4 v0, -0x1

    .line 88
    .end local v0           #result:I
    :cond_10
    return v0
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
    .line 94
    iget v0, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lorg/columba/ristretto/io/MemBufferInputStream;->pos:I

    int-to-long v0, v0

    return-wide v0
.end method
