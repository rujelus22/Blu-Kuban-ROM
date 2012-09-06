.class public abstract Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;
.super Lorg/codehaus/jackson/impl/ReaderBasedParserBase;
.source "ReaderBasedNumericParser.java"


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V
    .registers 4
    .parameter "pc"
    .parameter "features"
    .parameter "r"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/ReaderBasedParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V

    .line 29
    return-void
.end method

.method private final parseNumberText2(Z)Lorg/codehaus/jackson/JsonToken;
    .registers 16
    .parameter "negative"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x2d

    const/16 v12, 0x39

    const/16 v11, 0x30

    .line 179
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 180
    .local v5, outBuf:[C
    const/4 v6, 0x0

    .line 183
    .local v6, outPtr:I
    if-eqz p1, :cond_14

    .line 184
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .local v7, outPtr:I
    aput-char v13, v5, v6

    move v6, v7

    .line 188
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :cond_14
    const/4 v4, 0x0

    .line 189
    .local v4, intLen:I
    const/4 v1, 0x0

    .line 194
    .local v1, eof:Z
    :goto_16
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_eb

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_eb

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, c:C
    const/4 v1, 0x1

    .line 218
    :cond_24
    if-nez v4, :cond_46

    .line 219
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing integer part (next char "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 222
    :cond_46
    const/4 v3, 0x0

    .line 224
    .local v3, fractLen:I
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_64

    .line 225
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    aput-char v0, v5, v6

    move v6, v7

    .line 229
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :goto_50
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_11a

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_11a

    .line 230
    const/4 v1, 0x1

    .line 245
    :cond_5d
    if-nez v3, :cond_64

    .line 246
    const-string v8, "Decimal point not followed by a digit"

    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 250
    :cond_64
    const/4 v2, 0x0

    .line 251
    .local v2, expLen:I
    const/16 v8, 0x65

    if-eq v0, v8, :cond_6d

    const/16 v8, 0x45

    if-ne v0, v8, :cond_d9

    .line 252
    :cond_6d
    array-length v8, v5

    if-lt v6, v8, :cond_77

    .line 253
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 254
    const/4 v6, 0x0

    .line 256
    :cond_77
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    aput-char v0, v5, v6

    .line 258
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-ge v8, v9, :cond_13b

    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 261
    :goto_8b
    if-eq v0, v13, :cond_91

    const/16 v8, 0x2b

    if-ne v0, v8, :cond_15b

    .line 262
    :cond_91
    array-length v8, v5

    if-lt v7, v8, :cond_158

    .line 263
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 264
    const/4 v6, 0x0

    .line 266
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :goto_9b
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    aput-char v0, v5, v6

    .line 268
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-ge v8, v9, :cond_143

    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    :goto_af
    move v6, v7

    .line 273
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :goto_b0
    if-gt v0, v12, :cond_d2

    if-lt v0, v11, :cond_d2

    .line 274
    add-int/lit8 v2, v2, 0x1

    .line 275
    array-length v8, v5

    if-lt v6, v8, :cond_c0

    .line 276
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 277
    const/4 v6, 0x0

    .line 279
    :cond_c0
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    aput-char v0, v5, v6

    .line 280
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_14b

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_14b

    .line 281
    const/4 v1, 0x1

    move v6, v7

    .line 287
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :cond_d2
    if-nez v2, :cond_d9

    .line 288
    const-string v8, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 293
    :cond_d9
    if-nez v1, :cond_e1

    .line 294
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 296
    :cond_e1
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8, v6}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 299
    invoke-virtual {p0, p1, v4, v3, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reset(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    return-object v8

    .line 200
    .end local v0           #c:C
    .end local v2           #expLen:I
    .end local v3           #fractLen:I
    :cond_eb
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 201
    .restart local v0       #c:C
    if-lt v0, v11, :cond_24

    if-gt v0, v12, :cond_24

    .line 204
    add-int/lit8 v4, v4, 0x1

    .line 206
    const/4 v8, 0x2

    if-ne v4, v8, :cond_109

    .line 207
    add-int/lit8 v8, v6, -0x1

    aget-char v8, v5, v8

    if-ne v8, v11, :cond_109

    .line 208
    const-string v8, "Leading zeroes not allowed"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 211
    :cond_109
    array-length v8, v5

    if-lt v6, v8, :cond_113

    .line 212
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 213
    const/4 v6, 0x0

    .line 215
    :cond_113
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    aput-char v0, v5, v6

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_16

    .line 233
    .restart local v3       #fractLen:I
    :cond_11a
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 234
    if-lt v0, v11, :cond_5d

    if-gt v0, v12, :cond_5d

    .line 237
    add-int/lit8 v3, v3, 0x1

    .line 238
    array-length v8, v5

    if-lt v6, v8, :cond_134

    .line 239
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 240
    const/4 v6, 0x0

    .line 242
    :cond_134
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    aput-char v0, v5, v6

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_50

    .line 258
    .end local v6           #outPtr:I
    .restart local v2       #expLen:I
    .restart local v7       #outPtr:I
    :cond_13b
    const-string v8, "expected a digit for number exponent"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto/16 :goto_8b

    .line 268
    :cond_143
    const-string v8, "expected a digit for number exponent"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto/16 :goto_af

    .line 284
    :cond_14b
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_b0

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_158
    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_9b

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_15b
    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_b0
.end method


# virtual methods
.method protected final parseNumberText(I)Lorg/codehaus/jackson/JsonToken;
    .registers 16
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x2d

    const/16 v12, 0x39

    const/16 v11, 0x30

    .line 61
    if-ne p1, v13, :cond_20

    const/4 v5, 0x1

    .line 62
    .local v5, negative:Z
    :goto_9
    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 63
    .local v6, ptr:I
    add-int/lit8 v8, v6, -0x1

    .line 64
    .local v8, startPtr:I
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    .line 68
    .local v2, inputLen:I
    if-eqz v5, :cond_32

    .line 69
    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v6, v9, :cond_22

    .line 165
    :cond_15
    :goto_15
    if-eqz v5, :cond_19

    add-int/lit8 v8, v8, 0x1

    .end local v8           #startPtr:I
    :cond_19
    iput v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 166
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->parseNumberText2(Z)Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    :goto_1f
    return-object v9

    .line 61
    .end local v2           #inputLen:I
    .end local v5           #negative:Z
    .end local v6           #ptr:I
    :cond_20
    const/4 v5, 0x0

    goto :goto_9

    .line 72
    .restart local v2       #inputLen:I
    .restart local v5       #negative:Z
    .restart local v6       #ptr:I
    .restart local v8       #startPtr:I
    :cond_22
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6           #ptr:I
    .local v7, ptr:I
    aget-char p1, v9, v6

    .line 74
    if-gt p1, v12, :cond_2c

    if-ge p1, v11, :cond_31

    .line 75
    :cond_2c
    const-string v9, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v9}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_31
    move v6, v7

    .line 89
    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    :cond_32
    const/4 v3, 0x1

    .line 95
    .local v3, intLen:I
    :goto_33
    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-ge v6, v9, :cond_15

    .line 98
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    aget-char p1, v9, v6

    .line 99
    if-lt p1, v11, :cond_41

    if-le p1, v12, :cond_4a

    .line 110
    :cond_41
    const/4 v1, 0x0

    .line 113
    .local v1, fractLen:I
    const/16 v9, 0x2e

    if-ne p1, v9, :cond_70

    .line 116
    :goto_46
    if-lt v7, v2, :cond_5e

    move v6, v7

    .line 117
    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    goto :goto_15

    .line 103
    .end local v1           #fractLen:I
    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x2

    if-ne v3, v9, :cond_c5

    .line 104
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v10, v7, -0x2

    aget-char v9, v9, v10

    if-ne v9, v11, :cond_c5

    .line 105
    const-string v9, "Leading zeroes not allowed"

    invoke-virtual {p0, v9}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    move v6, v7

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    goto :goto_33

    .line 119
    .end local v6           #ptr:I
    .restart local v1       #fractLen:I
    .restart local v7       #ptr:I
    :cond_5e
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    aget-char p1, v9, v7

    .line 120
    if-lt p1, v11, :cond_68

    if-le p1, v12, :cond_7d

    .line 126
    :cond_68
    if-nez v1, :cond_6f

    .line 127
    const-string v9, "Decimal point not followed by a digit"

    invoke-virtual {p0, p1, v9}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_6f
    move v7, v6

    .line 131
    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    :cond_70
    const/4 v0, 0x0

    .line 132
    .local v0, expLen:I
    const/16 v9, 0x65

    if-eq p1, v9, :cond_79

    const/16 v9, 0x45

    if-ne p1, v9, :cond_af

    .line 133
    :cond_79
    if-lt v7, v2, :cond_81

    move v6, v7

    .line 134
    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    goto :goto_15

    .line 123
    .end local v0           #expLen:I
    :cond_7d
    add-int/lit8 v1, v1, 0x1

    move v7, v6

    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    goto :goto_46

    .line 137
    .restart local v0       #expLen:I
    :cond_81
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    aget-char p1, v9, v7

    .line 138
    if-eq p1, v13, :cond_8d

    const/16 v9, 0x2b

    if-ne p1, v9, :cond_c3

    .line 139
    :cond_8d
    if-ge v6, v2, :cond_15

    .line 142
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    aget-char p1, v9, v6

    .line 144
    :goto_95
    if-gt p1, v12, :cond_a8

    if-lt p1, v11, :cond_a8

    .line 145
    add-int/lit8 v0, v0, 0x1

    .line 146
    if-lt v7, v2, :cond_a0

    move v6, v7

    .line 147
    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    goto/16 :goto_15

    .line 149
    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    :cond_a0
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    aget-char p1, v9, v7

    move v7, v6

    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    goto :goto_95

    .line 152
    :cond_a8
    if-nez v0, :cond_af

    .line 153
    const-string v9, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, v9}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_af
    move v6, v7

    .line 158
    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    add-int/lit8 v6, v6, -0x1

    .line 159
    iput v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 160
    sub-int v4, v6, v8

    .line 161
    .local v4, len:I
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    invoke-virtual {v9, v10, v8, v4}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 162
    invoke-virtual {p0, v5, v3, v1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reset(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    goto/16 :goto_1f

    .end local v4           #len:I
    :cond_c3
    move v7, v6

    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    goto :goto_95

    .end local v0           #expLen:I
    .end local v1           #fractLen:I
    :cond_c5
    move v6, v7

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    goto/16 :goto_33
.end method
