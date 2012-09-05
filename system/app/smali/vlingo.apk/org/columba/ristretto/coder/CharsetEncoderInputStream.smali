.class public Lorg/columba/ristretto/coder/CharsetEncoderInputStream;
.super Ljava/io/FilterInputStream;
.source "CharsetEncoderInputStream.java"


# instance fields
.field private available:I

.field private charset:Ljava/nio/charset/Charset;

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private inBytes:Ljava/nio/CharBuffer;

.field private outBytes:Ljava/nio/ByteBuffer;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4
    .parameter "arg0"
    .parameter "charset"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    iput-object p2, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->charset:Ljava/nio/charset/Charset;

    .line 72
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 74
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->inBytes:Ljava/nio/CharBuffer;

    .line 75
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->outBytes:Ljava/nio/ByteBuffer;

    .line 76
    return-void
.end method

.method private encodeNextCharacter()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 85
    iget-object v4, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 87
    .local v0, read:I
    if-ne v0, v2, :cond_b

    .line 101
    :goto_a
    return v2

    .line 89
    :cond_b
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->inBytes:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 90
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->inBytes:Ljava/nio/CharBuffer;

    int-to-char v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 92
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->outBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 93
    iget-object v4, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v5, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->inBytes:Ljava/nio/CharBuffer;

    iget-object v6, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->outBytes:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-nez v2, :cond_46

    const/4 v2, 0x1

    :goto_2a
    invoke-virtual {v4, v5, v6, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 96
    .local v1, result:Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 97
    :cond_3a
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->outBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 98
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->outBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    goto :goto_a

    .end local v1           #result:Ljava/nio/charset/CoderResult;
    :cond_46
    move v2, v3

    .line 93
    goto :goto_2a

    .line 101
    .restart local v1       #result:Ljava/nio/charset/CoderResult;
    :cond_48
    iget-object v2, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->outBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    goto :goto_a
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 108
    iget v1, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->pos:I

    iget v2, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->available:I

    if-ne v1, v2, :cond_10

    .line 109
    invoke-direct {p0}, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->encodeNextCharacter()I

    move-result v1

    iput v1, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->available:I

    .line 110
    const/4 v1, 0x0

    iput v1, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->pos:I

    .line 113
    :cond_10
    iget v1, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->available:I

    if-ne v1, v0, :cond_15

    .line 115
    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->outBytes:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->pos:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    goto :goto_14
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

    .line 123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p3, :cond_16

    .line 124
    invoke-virtual {p0}, Lorg/columba/ristretto/coder/CharsetEncoderInputStream;->read()I

    move-result v1

    .line 125
    .local v1, next:I
    if-ne v1, v2, :cond_e

    .line 126
    if-nez v0, :cond_d

    move v0, v2

    .line 134
    .end local v0           #i:I
    .end local v1           #next:I
    :cond_d
    :goto_d
    return v0

    .line 132
    .restart local v0       #i:I
    .restart local v1       #next:I
    :cond_e
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #next:I
    :cond_16
    move v0, p3

    .line 134
    goto :goto_d
.end method
