.class public Lorg/columba/ristretto/coder/CharsetDecoderInputStream;
.super Ljava/io/FilterInputStream;
.source "CharsetDecoderInputStream.java"


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private inBytes:Ljava/nio/ByteBuffer;

.field private outBytes:Ljava/nio/CharBuffer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 5
    .parameter "arg0"
    .parameter "charset"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    iput-object p2, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->charset:Ljava/nio/charset/Charset;

    .line 70
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 72
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    .line 73
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->outBytes:Ljava/nio/CharBuffer;

    .line 74
    return-void
.end method

.method private decodeNextChar()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 88
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 89
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 91
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 92
    .local v0, read:I
    if-ne v0, v5, :cond_17

    move v2, v5

    .line 110
    :goto_16
    return v2

    .line 93
    :cond_17
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    int-to-byte v6, v0

    invoke-virtual {v2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 95
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->outBytes:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 96
    iget-object v6, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v7, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->outBytes:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-nez v2, :cond_47

    move v2, v3

    :goto_31
    invoke-virtual {v6, v7, v8, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 100
    .local v1, result:Ljava/nio/charset/CoderResult;
    :goto_35
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->outBytes:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    if-nez v2, :cond_7f

    .line 101
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 102
    if-ne v0, v5, :cond_49

    move v2, v5

    goto :goto_16

    .end local v1           #result:Ljava/nio/charset/CoderResult;
    :cond_47
    move v2, v4

    .line 96
    goto :goto_31

    .line 103
    .restart local v1       #result:Ljava/nio/charset/CoderResult;
    :cond_49
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 104
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-byte v7, v0

    invoke-virtual {v2, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 106
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->outBytes:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 107
    iget-object v6, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v7, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->outBytes:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-nez v2, :cond_7d

    move v2, v3

    :goto_78
    invoke-virtual {v6, v7, v8, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_35

    :cond_7d
    move v2, v4

    goto :goto_78

    .line 110
    :cond_7f
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->outBytes:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    goto :goto_16
.end method


# virtual methods
.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 118
    invoke-direct {p0}, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->decodeNextChar()I

    move-result v1

    if-ne v1, v0, :cond_8

    .line 120
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->outBytes:Ljava/nio/CharBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    goto :goto_7
.end method

.method public read([BII)I
    .registers 9
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p3, :cond_16

    .line 129
    invoke-virtual {p0}, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;->read()I

    move-result v1

    .line 130
    .local v1, next:I
    if-ne v1, v2, :cond_e

    .line 131
    if-nez v0, :cond_d

    move v0, v2

    .line 139
    .end local v0           #i:I
    .end local v1           #next:I
    :cond_d
    :goto_d
    return v0

    .line 137
    .restart local v0       #i:I
    .restart local v1       #next:I
    :cond_e
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #next:I
    :cond_16
    move v0, p3

    .line 139
    goto :goto_d
.end method
