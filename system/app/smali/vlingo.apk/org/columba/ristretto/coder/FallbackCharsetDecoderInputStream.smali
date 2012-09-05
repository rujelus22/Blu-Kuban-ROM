.class public Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;
.super Ljava/io/FilterInputStream;
.source "FallbackCharsetDecoderInputStream.java"


# static fields
.field private static fallbackTable:Ljava/util/Hashtable;


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private inBytes:Ljava/nio/ByteBuffer;

.field private outChars:Ljava/nio/CharBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    invoke-static {}, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->initFallBackTable()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->fallbackTable:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4
    .parameter "arg0"
    .parameter "charset"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    iput-object p2, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->charset:Ljava/nio/charset/Charset;

    .line 74
    invoke-direct {p0}, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->initDecoder()V

    .line 76
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    .line 77
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->outChars:Ljava/nio/CharBuffer;

    .line 78
    return-void
.end method

.method public static addFallback(Ljava/nio/charset/Charset;Ljava/nio/charset/Charset;)V
    .registers 3
    .parameter "original"
    .parameter "fallback"

    .prologue
    .line 97
    sget-object v0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->fallbackTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method private decodeNextChar()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 112
    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 113
    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 115
    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 116
    .local v0, read:I
    if-ne v0, v6, :cond_17

    move v3, v6

    .line 142
    :goto_16
    return v3

    .line 117
    :cond_17
    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    int-to-byte v7, v0

    invoke-virtual {v3, v5, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 119
    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->outChars:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 120
    iget-object v7, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v8, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->outChars:Ljava/nio/CharBuffer;

    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-nez v3, :cond_47

    move v3, v4

    :goto_31
    invoke-virtual {v7, v8, v9, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 124
    .local v1, result:Ljava/nio/charset/CoderResult;
    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->outChars:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    if-nez v3, :cond_7c

    .line 125
    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 126
    if-ne v0, v6, :cond_49

    move v3, v6

    goto :goto_16

    .end local v1           #result:Ljava/nio/charset/CoderResult;
    :cond_47
    move v3, v5

    .line 120
    goto :goto_31

    .line 127
    .restart local v1       #result:Ljava/nio/charset/CoderResult;
    :cond_49
    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 128
    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-byte v7, v0

    invoke-virtual {v3, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 130
    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->outChars:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 131
    iget-object v6, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v7, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->outChars:Ljava/nio/CharBuffer;

    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-nez v3, :cond_b6

    move v3, v4

    :goto_78
    invoke-virtual {v6, v7, v8, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 134
    :cond_7c
    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->charset:Ljava/nio/charset/Charset;

    iget-object v6, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->outChars:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 135
    .local v2, test:Ljava/nio/ByteBuffer;
    :goto_84
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-nez v3, :cond_ba

    invoke-direct {p0}, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->fallback()Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 136
    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 137
    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->outChars:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 138
    iget-object v6, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v7, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->inBytes:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->outChars:Ljava/nio/CharBuffer;

    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-nez v3, :cond_b8

    move v3, v4

    :goto_a9
    invoke-virtual {v6, v7, v8, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 139
    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->charset:Ljava/nio/charset/Charset;

    iget-object v6, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->outChars:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_84

    .end local v2           #test:Ljava/nio/ByteBuffer;
    :cond_b6
    move v3, v5

    .line 131
    goto :goto_78

    .restart local v2       #test:Ljava/nio/ByteBuffer;
    :cond_b8
    move v3, v5

    .line 138
    goto :goto_a9

    .line 142
    :cond_ba
    iget-object v3, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->outChars:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    goto/16 :goto_16
.end method

.method private fallback()Z
    .registers 3

    .prologue
    .line 147
    sget-object v0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->fallbackTable:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 148
    sget-object v0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->fallbackTable:Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->charset:Ljava/nio/charset/Charset;

    .line 149
    invoke-direct {p0}, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->initDecoder()V

    .line 151
    const/4 v0, 0x1

    .line 154
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private initDecoder()V
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 159
    return-void
.end method

.method private static initFallBackTable()Ljava/util/Hashtable;
    .registers 3

    .prologue
    .line 81
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 83
    .local v0, table:Ljava/util/Hashtable;
    const-string v1, "iso-8859-15"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "windows-1252"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "iso-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "windows-1252"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "us-ascii"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "windows-1252"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-object v0
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

    .line 166
    invoke-direct {p0}, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->decodeNextChar()I

    move-result v1

    if-ne v1, v0, :cond_8

    .line 168
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->outChars:Ljava/nio/CharBuffer;

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

    .line 176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p3, :cond_16

    .line 177
    invoke-virtual {p0}, Lorg/columba/ristretto/coder/FallbackCharsetDecoderInputStream;->read()I

    move-result v1

    .line 178
    .local v1, next:I
    if-ne v1, v2, :cond_e

    .line 179
    if-nez v0, :cond_d

    move v0, v2

    .line 187
    .end local v0           #i:I
    .end local v1           #next:I
    :cond_d
    :goto_d
    return v0

    .line 185
    .restart local v0       #i:I
    .restart local v1       #next:I
    :cond_e
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #next:I
    :cond_16
    move v0, p3

    .line 187
    goto :goto_d
.end method
