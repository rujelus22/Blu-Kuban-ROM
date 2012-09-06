.class public abstract Lorg/codehaus/jackson/impl/Utf8NumericParser;
.super Lorg/codehaus/jackson/impl/StreamBasedParserBase;
.source "Utf8NumericParser.java"


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V
    .registers 8
    .parameter "pc"
    .parameter "features"
    .parameter "in"
    .parameter "inputBuffer"
    .parameter "start"
    .parameter "end"
    .parameter "bufferRecyclable"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p7}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V

    .line 32
    return-void
.end method


# virtual methods
.method protected final parseNumberText(I)Lorg/codehaus/jackson/JsonToken;
    .registers 16
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x39

    const/16 v12, 0x2d

    const/16 v11, 0x30

    .line 59
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 60
    .local v5, outBuf:[C
    const/4 v6, 0x0

    .line 61
    .local v6, outPtr:I
    if-ne p1, v12, :cond_107

    const/4 v4, 0x1

    .line 64
    .local v4, negative:Z
    :goto_10
    if-eqz v4, :cond_2c

    .line 65
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .local v7, outPtr:I
    aput-char v12, v5, v6

    .line 67
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_1f

    .line 68
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMoreGuaranteed()V

    .line 70
    :cond_1f
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .line 73
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :cond_2c
    const/4 v3, 0x0

    .line 74
    .local v3, intLen:I
    const/4 v0, 0x0

    .line 79
    .local v0, eof:Z
    :goto_2e
    if-lt p1, v11, :cond_184

    if-le p1, v13, :cond_10a

    move v7, v6

    .line 103
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :goto_33
    if-nez v3, :cond_55

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing integer part (next char "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 107
    :cond_55
    const/4 v2, 0x0

    .line 109
    .local v2, fractLen:I
    const/16 v8, 0x2e

    if-ne p1, v8, :cond_181

    .line 110
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    int-to-char v8, p1

    aput-char v8, v5, v7

    .line 114
    :goto_5f
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_148

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_148

    .line 115
    const/4 v0, 0x1

    .line 130
    :cond_6c
    if-nez v2, :cond_73

    .line 131
    const-string v8, "Decimal point not followed by a digit"

    invoke-virtual {p0, p1, v8}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 135
    :cond_73
    :goto_73
    const/4 v1, 0x0

    .line 136
    .local v1, expLen:I
    const/16 v8, 0x65

    if-eq p1, v8, :cond_7c

    const/16 v8, 0x45

    if-ne p1, v8, :cond_f5

    .line 137
    :cond_7c
    array-length v8, v5

    if-lt v6, v8, :cond_86

    .line 138
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 139
    const/4 v6, 0x0

    .line 141
    :cond_86
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 143
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_94

    .line 144
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMoreGuaranteed()V

    .line 146
    :cond_94
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    .line 148
    if-eq p1, v12, :cond_a6

    const/16 v8, 0x2b

    if-ne p1, v8, :cond_17e

    .line 149
    :cond_a6
    array-length v8, v5

    if-lt v7, v8, :cond_17b

    .line 150
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 151
    const/4 v6, 0x0

    .line 153
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :goto_b0
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 155
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_be

    .line 156
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMoreGuaranteed()V

    .line 158
    :cond_be
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .line 162
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :goto_cb
    if-gt p1, v13, :cond_ee

    if-lt p1, v11, :cond_ee

    .line 163
    add-int/lit8 v1, v1, 0x1

    .line 164
    array-length v8, v5

    if-lt v6, v8, :cond_db

    .line 165
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 166
    const/4 v6, 0x0

    .line 168
    :cond_db
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 169
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_16c

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_16c

    .line 170
    const/4 v0, 0x1

    move v6, v7

    .line 176
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :cond_ee
    if-nez v1, :cond_f5

    .line 177
    const-string v8, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, v8}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 182
    :cond_f5
    if-nez v0, :cond_fd

    .line 183
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    .line 185
    :cond_fd
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8, v6}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 188
    invoke-virtual {p0, v4, v3, v2, v1}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reset(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    return-object v8

    .line 61
    .end local v0           #eof:Z
    .end local v1           #expLen:I
    .end local v2           #fractLen:I
    .end local v3           #intLen:I
    .end local v4           #negative:Z
    :cond_107
    const/4 v4, 0x0

    goto/16 :goto_10

    .line 82
    .restart local v0       #eof:Z
    .restart local v3       #intLen:I
    .restart local v4       #negative:Z
    :cond_10a
    add-int/lit8 v3, v3, 0x1

    .line 84
    const/4 v8, 0x2

    if-ne v3, v8, :cond_11a

    .line 85
    add-int/lit8 v8, v6, -0x1

    aget-char v8, v5, v8

    if-ne v8, v11, :cond_11a

    .line 86
    const-string v8, "Leading zeroes not allowed"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 89
    :cond_11a
    array-length v8, v5

    if-lt v6, v8, :cond_124

    .line 90
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 91
    const/4 v6, 0x0

    .line 93
    :cond_124
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 94
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_139

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_139

    .line 96
    const/4 p1, 0x0

    .line 97
    const/4 v0, 0x1

    .line 98
    goto/16 :goto_33

    .line 100
    :cond_139
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_2e

    .line 118
    .restart local v2       #fractLen:I
    :cond_148
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    .line 119
    if-lt p1, v11, :cond_6c

    if-gt p1, v13, :cond_6c

    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 123
    array-length v8, v5

    if-lt v6, v8, :cond_164

    .line 124
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 125
    const/4 v6, 0x0

    .line 127
    :cond_164
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    int-to-char v8, p1

    aput-char v8, v5, v6

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_5f

    .line 173
    .end local v6           #outPtr:I
    .restart local v1       #expLen:I
    .restart local v7       #outPtr:I
    :cond_16c
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_cb

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_17b
    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_b0

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_17e
    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_cb

    .end local v1           #expLen:I
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_181
    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_73

    .end local v2           #fractLen:I
    :cond_184
    move v7, v6

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    goto/16 :goto_33
.end method
