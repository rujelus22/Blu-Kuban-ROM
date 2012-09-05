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

.method private final _verifyNoLeadingZeroes()C
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x39

    const/16 v1, 0x30

    .line 303
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v2, v3, :cond_12

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_12

    move v0, v1

    .line 328
    :cond_11
    :goto_11
    return v0

    .line 306
    :cond_12
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 308
    .local v0, ch:C
    if-lt v0, v1, :cond_1c

    if-le v0, v4, :cond_1e

    :cond_1c
    move v0, v1

    .line 309
    goto :goto_11

    .line 311
    :cond_1e
    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 312
    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 315
    :cond_2b
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 316
    if-ne v0, v1, :cond_11

    .line 317
    :cond_33
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v2, v3, :cond_3f

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 318
    :cond_3f
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 319
    if-lt v0, v1, :cond_49

    if-le v0, v4, :cond_4b

    :cond_49
    move v0, v1

    .line 320
    goto :goto_11

    .line 322
    :cond_4b
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 323
    if-eq v0, v1, :cond_33

    goto :goto_11
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

    .line 178
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 179
    .local v5, outBuf:[C
    const/4 v6, 0x0

    .line 182
    .local v6, outPtr:I
    if-eqz p1, :cond_14

    .line 183
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .local v7, outPtr:I
    aput-char v13, v5, v6

    move v6, v7

    .line 187
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :cond_14
    const/4 v4, 0x0

    .line 188
    .local v4, intLen:I
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-ge v8, v9, :cond_114

    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 189
    .local v0, c:C
    :goto_25
    if-ne v0, v11, :cond_2b

    .line 190
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_verifyNoLeadingZeroes()C

    move-result v0

    .line 192
    :cond_2b
    const/4 v1, 0x0

    .line 196
    .local v1, eof:Z
    :goto_2c
    if-lt v0, v11, :cond_16f

    if-gt v0, v12, :cond_16f

    .line 197
    add-int/lit8 v4, v4, 0x1

    .line 198
    array-length v8, v5

    if-lt v6, v8, :cond_3c

    .line 199
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 200
    const/4 v6, 0x0

    .line 202
    :cond_3c
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    aput-char v0, v5, v6

    .line 203
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_11c

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_11c

    .line 205
    const/4 v0, 0x0

    .line 206
    const/4 v1, 0x1

    .line 212
    :goto_4e
    if-nez v4, :cond_70

    .line 213
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

    .line 216
    :cond_70
    const/4 v3, 0x0

    .line 218
    .local v3, fractLen:I
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_16c

    .line 219
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    aput-char v0, v5, v7

    .line 223
    :goto_79
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_129

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_129

    .line 224
    const/4 v1, 0x1

    .line 239
    :cond_86
    if-nez v3, :cond_8d

    .line 240
    const-string v8, "Decimal point not followed by a digit"

    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 244
    :cond_8d
    :goto_8d
    const/4 v2, 0x0

    .line 245
    .local v2, expLen:I
    const/16 v8, 0x65

    if-eq v0, v8, :cond_96

    const/16 v8, 0x45

    if-ne v0, v8, :cond_102

    .line 246
    :cond_96
    array-length v8, v5

    if-lt v6, v8, :cond_a0

    .line 247
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 248
    const/4 v6, 0x0

    .line 250
    :cond_a0
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    aput-char v0, v5, v6

    .line 252
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-ge v8, v9, :cond_14a

    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 255
    :goto_b4
    if-eq v0, v13, :cond_ba

    const/16 v8, 0x2b

    if-ne v0, v8, :cond_169

    .line 256
    :cond_ba
    array-length v8, v5

    if-lt v7, v8, :cond_166

    .line 257
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 258
    const/4 v6, 0x0

    .line 260
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :goto_c4
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    aput-char v0, v5, v6

    .line 262
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-ge v8, v9, :cond_152

    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    :goto_d8
    move v6, v7

    .line 267
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :goto_d9
    if-gt v0, v12, :cond_fb

    if-lt v0, v11, :cond_fb

    .line 268
    add-int/lit8 v2, v2, 0x1

    .line 269
    array-length v8, v5

    if-lt v6, v8, :cond_e9

    .line 270
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 271
    const/4 v6, 0x0

    .line 273
    :cond_e9
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    aput-char v0, v5, v6

    .line 274
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_159

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_159

    .line 275
    const/4 v1, 0x1

    move v6, v7

    .line 281
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :cond_fb
    if-nez v2, :cond_102

    .line 282
    const-string v8, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 287
    :cond_102
    if-nez v1, :cond_10a

    .line 288
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 290
    :cond_10a
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8, v6}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 292
    invoke-virtual {p0, p1, v4, v3, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reset(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    return-object v8

    .line 188
    .end local v0           #c:C
    .end local v1           #eof:Z
    .end local v2           #expLen:I
    .end local v3           #fractLen:I
    :cond_114
    const-string v8, "No digit following minus sign"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto/16 :goto_25

    .line 209
    .end local v6           #outPtr:I
    .restart local v0       #c:C
    .restart local v1       #eof:Z
    .restart local v7       #outPtr:I
    :cond_11c
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_2c

    .line 227
    .restart local v3       #fractLen:I
    :cond_129
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    .line 228
    if-lt v0, v11, :cond_86

    if-gt v0, v12, :cond_86

    .line 231
    add-int/lit8 v3, v3, 0x1

    .line 232
    array-length v8, v5

    if-lt v6, v8, :cond_143

    .line 233
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 234
    const/4 v6, 0x0

    .line 236
    :cond_143
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    aput-char v0, v5, v6

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_79

    .line 252
    .end local v6           #outPtr:I
    .restart local v2       #expLen:I
    .restart local v7       #outPtr:I
    :cond_14a
    const-string v8, "expected a digit for number exponent"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto/16 :goto_b4

    .line 262
    :cond_152
    const-string v8, "expected a digit for number exponent"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto :goto_d8

    .line 278
    :cond_159
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char v0, v8, v9

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_d9

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_166
    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_c4

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_169
    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_d9

    .end local v2           #expLen:I
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_16c
    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto/16 :goto_8d

    .end local v3           #fractLen:I
    :cond_16f
    move v7, v6

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    goto/16 :goto_4e
.end method


# virtual methods
.method protected _handleInvalidNumberStart(IZ)Lorg/codehaus/jackson/JsonToken;
    .registers 12
    .parameter "ch"
    .parameter "negative"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const-wide/high16 v3, 0x7ff0

    const-wide/high16 v1, -0x10

    .line 338
    const/16 v5, 0x49

    if-ne p1, v5, :cond_60

    .line 339
    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v5, v6, :cond_18

    .line 340
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_18

    .line 341
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_reportInvalidEOFInValue()V

    .line 344
    :cond_18
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    aget-char p1, v5, v6

    .line 345
    const/16 v5, 0x4e

    if-ne p1, v5, :cond_67

    .line 346
    if-eqz p2, :cond_3f

    const-string v0, "-INF"

    .line 347
    .local v0, match:Ljava/lang/String;
    :goto_2a
    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_matchToken(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 348
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 349
    if-eqz p2, :cond_42

    :goto_3a
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->resetAsNaN(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 364
    .end local v0           #match:Ljava/lang/String;
    :goto_3e
    return-object v1

    .line 346
    :cond_3f
    const-string v0, "+INF"

    goto :goto_2a

    .restart local v0       #match:Ljava/lang/String;
    :cond_42
    move-wide v1, v3

    .line 349
    goto :goto_3a

    .line 351
    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_reportError(Ljava/lang/String;)V

    .line 363
    .end local v0           #match:Ljava/lang/String;
    :cond_60
    :goto_60
    const-string v1, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 364
    const/4 v1, 0x0

    goto :goto_3e

    .line 353
    :cond_67
    const/16 v5, 0x6e

    if-ne p1, v5, :cond_60

    .line 354
    if-eqz p2, :cond_84

    const-string v0, "-Infinity"

    .line 355
    .restart local v0       #match:Ljava/lang/String;
    :goto_6f
    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_matchToken(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 356
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 357
    if-eqz p2, :cond_87

    :goto_7f
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->resetAsNaN(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_3e

    .line 354
    .end local v0           #match:Ljava/lang/String;
    :cond_84
    const-string v0, "+Infinity"

    goto :goto_6f

    .restart local v0       #match:Ljava/lang/String;
    :cond_87
    move-wide v1, v3

    .line 357
    goto :goto_7f

    .line 359
    :cond_89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_reportError(Ljava/lang/String;)V

    goto :goto_60
.end method

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

    const/4 v9, 0x1

    const/16 v12, 0x39

    const/16 v11, 0x30

    .line 60
    if-ne p1, v13, :cond_21

    move v5, v9

    .line 61
    .local v5, negative:Z
    :goto_a
    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 62
    .local v6, ptr:I
    add-int/lit8 v8, v6, -0x1

    .line 63
    .local v8, startPtr:I
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    .line 67
    .local v2, inputLen:I
    if-eqz v5, :cond_36

    .line 68
    iget v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-lt v6, v10, :cond_23

    .line 164
    :cond_16
    :goto_16
    if-eqz v5, :cond_1a

    add-int/lit8 v8, v8, 0x1

    .end local v8           #startPtr:I
    :cond_1a
    iput v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 165
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->parseNumberText2(Z)Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    :goto_20
    return-object v9

    .line 60
    .end local v2           #inputLen:I
    .end local v5           #negative:Z
    .end local v6           #ptr:I
    :cond_21
    const/4 v5, 0x0

    goto :goto_a

    .line 71
    .restart local v2       #inputLen:I
    .restart local v5       #negative:Z
    .restart local v6       #ptr:I
    .restart local v8       #startPtr:I
    :cond_23
    iget-object v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6           #ptr:I
    .local v7, ptr:I
    aget-char p1, v10, v6

    .line 73
    if-gt p1, v12, :cond_2d

    if-ge p1, v11, :cond_35

    .line 74
    :cond_2d
    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 75
    invoke-virtual {p0, p1, v9}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_handleInvalidNumberStart(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    move v6, v7

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    goto :goto_20

    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    :cond_35
    move v6, v7

    .line 83
    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    :cond_36
    if-eq p1, v11, :cond_16

    .line 93
    const/4 v3, 0x1

    .line 99
    .local v3, intLen:I
    :goto_39
    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputEnd:I

    if-ge v6, v9, :cond_16

    .line 102
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    aget-char p1, v9, v6

    .line 103
    if-lt p1, v11, :cond_47

    if-le p1, v12, :cond_50

    .line 109
    :cond_47
    const/4 v1, 0x0

    .line 112
    .local v1, fractLen:I
    const/16 v9, 0x2e

    if-ne p1, v9, :cond_66

    .line 115
    :goto_4c
    if-lt v7, v2, :cond_54

    move v6, v7

    .line 116
    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    goto :goto_16

    .line 106
    .end local v1           #fractLen:I
    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    :cond_50
    add-int/lit8 v3, v3, 0x1

    move v6, v7

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    goto :goto_39

    .line 118
    .end local v6           #ptr:I
    .restart local v1       #fractLen:I
    .restart local v7       #ptr:I
    :cond_54
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    aget-char p1, v9, v7

    .line 119
    if-lt p1, v11, :cond_5e

    if-le p1, v12, :cond_73

    .line 125
    :cond_5e
    if-nez v1, :cond_65

    .line 126
    const-string v9, "Decimal point not followed by a digit"

    invoke-virtual {p0, p1, v9}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_65
    move v7, v6

    .line 130
    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    :cond_66
    const/4 v0, 0x0

    .line 131
    .local v0, expLen:I
    const/16 v9, 0x65

    if-eq p1, v9, :cond_6f

    const/16 v9, 0x45

    if-ne p1, v9, :cond_a4

    .line 132
    :cond_6f
    if-lt v7, v2, :cond_77

    move v6, v7

    .line 133
    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    goto :goto_16

    .line 122
    .end local v0           #expLen:I
    :cond_73
    add-int/lit8 v1, v1, 0x1

    move v7, v6

    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    goto :goto_4c

    .line 136
    .restart local v0       #expLen:I
    :cond_77
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    aget-char p1, v9, v7

    .line 137
    if-eq p1, v13, :cond_83

    const/16 v9, 0x2b

    if-ne p1, v9, :cond_b8

    .line 138
    :cond_83
    if-ge v6, v2, :cond_16

    .line 141
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v7, v6, 0x1

    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    aget-char p1, v9, v6

    .line 143
    :goto_8b
    if-gt p1, v12, :cond_9d

    if-lt p1, v11, :cond_9d

    .line 144
    add-int/lit8 v0, v0, 0x1

    .line 145
    if-lt v7, v2, :cond_95

    move v6, v7

    .line 146
    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    goto :goto_16

    .line 148
    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    :cond_95
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    add-int/lit8 v6, v7, 0x1

    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    aget-char p1, v9, v7

    move v7, v6

    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    goto :goto_8b

    .line 151
    :cond_9d
    if-nez v0, :cond_a4

    .line 152
    const-string v9, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, v9}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_a4
    move v6, v7

    .line 157
    .end local v7           #ptr:I
    .restart local v6       #ptr:I
    add-int/lit8 v6, v6, -0x1

    .line 158
    iput v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputPtr:I

    .line 159
    sub-int v4, v6, v8

    .line 160
    .local v4, len:I
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->_inputBuffer:[C

    invoke-virtual {v9, v10, v8, v4}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 161
    invoke-virtual {p0, v5, v3, v1, v0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->reset(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    goto/16 :goto_20

    .end local v4           #len:I
    :cond_b8
    move v7, v6

    .end local v6           #ptr:I
    .restart local v7       #ptr:I
    goto :goto_8b
.end method
