.class public final Lorg/codehaus/jackson/impl/ReaderBasedParser;
.super Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;
.source "ReaderBasedParser.java"


# instance fields
.field protected _objectCodec:Lorg/codehaus/jackson/ObjectCodec;

.field protected final _symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V
    .registers 6
    .parameter "ioCtxt"
    .parameter "features"
    .parameter "r"
    .parameter "codec"
    .parameter "st"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;)V

    .line 38
    iput-object p4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 39
    iput-object p5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    .line 40
    return-void
.end method

.method private final _nextAfterName()Lorg/codehaus/jackson/JsonToken;
    .registers 5

    .prologue
    .line 206
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nameCopied:Z

    .line 207
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 208
    .local v0, t:Lorg/codehaus/jackson/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 210
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1b

    .line 211
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 215
    :cond_18
    :goto_18
    iput-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    .line 212
    :cond_1b
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_18

    .line 213
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_18
.end method

.method private _parseFieldName2(III)Ljava/lang/String;
    .registers 16
    .parameter "startPtr"
    .parameter "hash"
    .parameter "endChar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v11, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int/2addr v11, p1

    invoke-virtual {v9, v10, p1, v11}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 277
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v9}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v4

    .line 278
    .local v4, outBuf:[C
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v9}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v5

    .line 281
    .local v5, outPtr:I
    :goto_16
    iget v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v9, v10, :cond_3f

    .line 282
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v9

    if-nez v9, :cond_3f

    .line 283
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ": was expecting closing \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, p3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' for name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 286
    :cond_3f
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v1, v9, v10

    .line 287
    .local v1, c:C
    move v2, v1

    .line 288
    .local v2, i:I
    const/16 v9, 0x5c

    if-gt v2, v9, :cond_56

    .line 289
    const/16 v9, 0x5c

    if-ne v2, v9, :cond_69

    .line 294
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v1

    .line 304
    :cond_56
    :goto_56
    mul-int/lit8 v9, p2, 0x1f

    add-int p2, v9, v2

    .line 306
    add-int/lit8 v6, v5, 0x1

    .end local v5           #outPtr:I
    .local v6, outPtr:I
    aput-char v1, v4, v5

    .line 309
    array-length v9, v4

    if-lt v6, v9, :cond_91

    .line 310
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v9}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 311
    const/4 v5, 0x0

    .end local v6           #outPtr:I
    .restart local v5       #outPtr:I
    goto :goto_16

    .line 295
    :cond_69
    if-gt v2, p3, :cond_56

    .line 296
    if-ne v2, p3, :cond_87

    .line 314
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v9, v5}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 316
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    .line 317
    .local v8, tb:Lorg/codehaus/jackson/util/TextBuffer;
    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    .line 318
    .local v0, buf:[C
    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v7

    .line 319
    .local v7, start:I
    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->size()I

    move-result v3

    .line 321
    .local v3, len:I
    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v9, v0, v7, v3, p2}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 299
    .end local v0           #buf:[C
    .end local v3           #len:I
    .end local v7           #start:I
    .end local v8           #tb:Lorg/codehaus/jackson/util/TextBuffer;
    :cond_87
    const/16 v9, 0x20

    if-ge v2, v9, :cond_56

    .line 300
    const-string v9, "name"

    invoke-virtual {p0, v2, v9}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_56

    .end local v5           #outPtr:I
    .restart local v6       #outPtr:I
    :cond_91
    move v5, v6

    .end local v6           #outPtr:I
    .restart local v5       #outPtr:I
    goto :goto_16
.end method

.method private _parseUnusualFieldName2(II[I)Ljava/lang/String;
    .registers 18
    .parameter "startPtr"
    .parameter "hash"
    .parameter "codes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 484
    iget-object v11, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v12, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v13, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int/2addr v13, p1

    invoke-virtual {v11, v12, p1, v13}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 485
    iget-object v11, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v11}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v6

    .line 486
    .local v6, outBuf:[C
    iget-object v11, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v11}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v7

    .line 487
    .local v7, outPtr:I
    move-object/from16 v0, p3

    array-length v5, v0

    .line 490
    .local v5, maxCode:I
    :goto_19
    iget v11, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v12, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v11, v12, :cond_41

    .line 491
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v11

    if-nez v11, :cond_41

    .line 515
    :cond_25
    :goto_25
    iget-object v11, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v11, v7}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 517
    iget-object v10, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    .line 518
    .local v10, tb:Lorg/codehaus/jackson/util/TextBuffer;
    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v1

    .line 519
    .local v1, buf:[C
    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v9

    .line 520
    .local v9, start:I
    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->size()I

    move-result v4

    .line 522
    .local v4, len:I
    iget-object v11, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move/from16 v0, p2

    invoke-virtual {v11, v1, v9, v4, v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 495
    .end local v1           #buf:[C
    .end local v4           #len:I
    .end local v9           #start:I
    .end local v10           #tb:Lorg/codehaus/jackson/util/TextBuffer;
    :cond_41
    iget-object v11, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v12, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v2, v11, v12

    .line 496
    .local v2, c:C
    move v3, v2

    .line 497
    .local v3, i:I
    if-gt v3, v5, :cond_67

    .line 498
    aget v11, p3, v3

    if-nez v11, :cond_25

    .line 504
    :cond_4e
    iget v11, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 505
    mul-int/lit8 v11, p2, 0x1f

    add-int p2, v11, v3

    .line 507
    add-int/lit8 v8, v7, 0x1

    .end local v7           #outPtr:I
    .local v8, outPtr:I
    aput-char v2, v6, v7

    .line 510
    array-length v11, v6

    if-lt v8, v11, :cond_6e

    .line 511
    iget-object v11, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v11}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v6

    .line 512
    const/4 v7, 0x0

    .end local v8           #outPtr:I
    .restart local v7       #outPtr:I
    goto :goto_19

    .line 501
    :cond_67
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v11

    if-nez v11, :cond_4e

    goto :goto_25

    .end local v7           #outPtr:I
    .restart local v8       #outPtr:I
    :cond_6e
    move v7, v8

    .end local v8           #outPtr:I
    .restart local v7       #outPtr:I
    goto :goto_19
.end method

.method private _reportInvalidToken(Ljava/lang/String;)V
    .registers 6
    .parameter "matchedPart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 692
    .local v1, sb:Ljava/lang/StringBuilder;
    :goto_5
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v2, v3, :cond_32

    .line 693
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_32

    .line 705
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized token \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': was expecting \'null\', \'true\' or \'false\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V

    .line 706
    return-void

    .line 697
    :cond_32
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v2, v3

    .line 698
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 701
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 702
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method private final _skipCComment()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2a

    .line 808
    :cond_2
    :goto_2
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_e

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 809
    :cond_e
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 810
    .local v0, i:I
    if-gt v0, v4, :cond_2

    .line 811
    if-ne v0, v4, :cond_3f

    .line 812
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_2e

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 832
    .end local v0           #i:I
    :cond_28
    const-string v1, " in a comment"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 833
    :goto_2d
    return-void

    .line 815
    .restart local v0       #i:I
    :cond_2e
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v1, v1, v2

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    .line 816
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    goto :goto_2d

    .line 821
    :cond_3f
    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    .line 822
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4b

    .line 823
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_2

    .line 824
    :cond_4b
    const/16 v1, 0xd

    if-ne v0, v1, :cond_53

    .line 825
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_2

    .line 826
    :cond_53
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 827
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_2
.end method

.method private final _skipComment()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2f

    .line 786
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 787
    const-string v1, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 790
    :cond_f
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_20

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_20

    .line 791
    const-string v1, " in a comment"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 793
    :cond_20
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 794
    .local v0, c:C
    if-ne v0, v4, :cond_30

    .line 795
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCppComment()V

    .line 801
    :goto_2f
    return-void

    .line 796
    :cond_30
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_38

    .line 797
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCComment()V

    goto :goto_2f

    .line 799
    :cond_38
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_2f
.end method

.method private final _skipCppComment()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 839
    :cond_0
    :goto_0
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_c

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 840
    :cond_c
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 841
    .local v0, i:I
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 842
    const/16 v1, 0xa

    if-ne v0, v1, :cond_22

    .line 843
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    .line 853
    .end local v0           #i:I
    :cond_21
    :goto_21
    return-void

    .line 845
    .restart local v0       #i:I
    :cond_22
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2a

    .line 846
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_21

    .line 848
    :cond_2a
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 849
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipWS()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 738
    :cond_2
    :goto_2
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_e

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 739
    :cond_e
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 740
    .local v0, i:I
    if-le v0, v4, :cond_23

    .line 741
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1f

    .line 742
    return v0

    .line 744
    :cond_1f
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipComment()V

    goto :goto_2

    .line 745
    :cond_23
    if-eq v0, v4, :cond_2

    .line 746
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2d

    .line 747
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_2

    .line 748
    :cond_2d
    const/16 v1, 0xd

    if-ne v0, v1, :cond_35

    .line 749
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_2

    .line 750
    :cond_35
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 751
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_2

    .line 755
    .end local v0           #i:I
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end-of-input within/between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v1

    throw v1
.end method

.method private final _skipWSOrEnd()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 761
    :cond_2
    :goto_2
    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v1, v2, :cond_e

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 762
    :cond_e
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v1, v2

    .line 763
    .local v0, i:I
    if-le v0, v4, :cond_23

    .line 764
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1f

    .line 780
    .end local v0           #i:I
    :goto_1e
    return v0

    .line 767
    .restart local v0       #i:I
    :cond_1f
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipComment()V

    goto :goto_2

    .line 768
    :cond_23
    if-eq v0, v4, :cond_2

    .line 769
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2d

    .line 770
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipLF()V

    goto :goto_2

    .line 771
    :cond_2d
    const/16 v1, 0xd

    if-ne v0, v1, :cond_35

    .line 772
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipCR()V

    goto :goto_2

    .line 773
    :cond_35
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 774
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwInvalidSpace(I)V

    goto :goto_2

    .line 779
    .end local v0           #i:I
    :cond_3d
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_handleEOF()V

    .line 780
    const/4 v0, -0x1

    goto :goto_1e
.end method


# virtual methods
.method protected final _decodeEscaped()C
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 858
    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v5, v6, :cond_11

    .line 859
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_11

    .line 860
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 863
    :cond_11
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v5, v6

    .line 865
    .local v0, c:C
    sparse-switch v0, :sswitch_data_7c

    .line 888
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized character escape "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportError(Ljava/lang/String;)V

    .line 892
    :sswitch_38
    const/4 v4, 0x0

    .line 893
    .local v4, value:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3a
    const/4 v5, 0x4

    if-ge v3, v5, :cond_79

    .line 894
    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v5, v6, :cond_4e

    .line 895
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_4e

    .line 896
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 899
    :cond_4e
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v1, v5, v6

    .line 900
    .local v1, ch:I
    invoke-static {v1}, Lorg/codehaus/jackson/util/CharTypes;->charToHex(I)I

    move-result v2

    .line 901
    .local v2, digit:I
    if-gez v2, :cond_63

    .line 902
    const-string v5, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v1, v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 904
    :cond_63
    shl-int/lit8 v5, v4, 0x4

    or-int v4, v5, v2

    .line 893
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 868
    .end local v1           #ch:I
    .end local v2           #digit:I
    .end local v3           #i:I
    .end local v4           #value:I
    :sswitch_6a
    const/16 v0, 0x8

    .line 906
    .end local v0           #c:C
    :goto_6c
    :sswitch_6c
    return v0

    .line 870
    .restart local v0       #c:C
    :sswitch_6d
    const/16 v0, 0x9

    goto :goto_6c

    .line 872
    :sswitch_70
    const/16 v0, 0xa

    goto :goto_6c

    .line 874
    :sswitch_73
    const/16 v0, 0xc

    goto :goto_6c

    .line 876
    :sswitch_76
    const/16 v0, 0xd

    goto :goto_6c

    .line 906
    .restart local v3       #i:I
    .restart local v4       #value:I
    :cond_79
    int-to-char v0, v4

    goto :goto_6c

    .line 865
    nop

    :sswitch_data_7c
    .sparse-switch
        0x22 -> :sswitch_6c
        0x2f -> :sswitch_6c
        0x5c -> :sswitch_6c
        0x62 -> :sswitch_6a
        0x66 -> :sswitch_73
        0x6e -> :sswitch_70
        0x72 -> :sswitch_76
        0x74 -> :sswitch_6d
        0x75 -> :sswitch_38
    .end sparse-switch
.end method

.method protected _finishString()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 534
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 535
    .local v4, ptr:I
    iget v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 537
    .local v2, inputLen:I
    if-ge v4, v2, :cond_2f

    .line 538
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v1

    .line 539
    .local v1, codes:[I
    array-length v3, v1

    .line 542
    .local v3, maxCode:I
    :cond_b
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v0, v5, v4

    .line 543
    .local v0, ch:I
    if-ge v0, v3, :cond_2b

    aget v5, v1, v0

    if-eqz v5, :cond_2b

    .line 544
    const/16 v5, 0x22

    if-ne v0, v5, :cond_2f

    .line 545
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int v8, v4, v8

    invoke-virtual {v5, v6, v7, v8}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithShared([CII)V

    .line 546
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 562
    .end local v0           #ch:I
    .end local v1           #codes:[I
    .end local v3           #maxCode:I
    :goto_2a
    return-void

    .line 552
    .restart local v0       #ch:I
    .restart local v1       #codes:[I
    .restart local v3       #maxCode:I
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    .line 553
    if-lt v4, v2, :cond_b

    .line 559
    .end local v0           #ch:I
    .end local v1           #codes:[I
    .end local v3           #maxCode:I
    :cond_2f
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    sub-int v8, v4, v8

    invoke-virtual {v5, v6, v7, v8}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithCopy([CII)V

    .line 560
    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 561
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_finishString2()V

    goto :goto_2a
.end method

.method protected _finishString2()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x22

    .line 567
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v2

    .line 568
    .local v2, outBuf:[C
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v3

    .line 571
    .local v3, outPtr:I
    :goto_10
    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v5, v6, :cond_21

    .line 572
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_21

    .line 573
    const-string v5, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 576
    :cond_21
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v5, v6

    .line 577
    .local v0, c:C
    move v1, v0

    .line 578
    .local v1, i:I
    if-gt v1, v9, :cond_34

    .line 579
    if-ne v1, v9, :cond_44

    .line 584
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v0

    .line 595
    :cond_34
    :goto_34
    array-length v5, v2

    if-lt v3, v5, :cond_3e

    .line 596
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 597
    const/4 v3, 0x0

    .line 600
    :cond_3e
    add-int/lit8 v4, v3, 0x1

    .end local v3           #outPtr:I
    .local v4, outPtr:I
    aput-char v0, v2, v3

    move v3, v4

    .line 601
    .end local v4           #outPtr:I
    .restart local v3       #outPtr:I
    goto :goto_10

    .line 585
    :cond_44
    if-gt v1, v8, :cond_34

    .line 586
    if-ne v1, v8, :cond_4e

    .line 602
    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v5, v3}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 603
    return-void

    .line 589
    :cond_4e
    const/16 v5, 0x20

    if-ge v1, v5, :cond_34

    .line 590
    const-string v5, "string value"

    invoke-virtual {p0, v1, v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_34
.end method

.method protected final _handleUnexpectedValue(I)Lorg/codehaus/jackson/JsonToken;
    .registers 11
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x27

    .line 428
    if-ne p1, v7, :cond_e

    sget-object v4, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 429
    :cond_e
    const-string v4, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 439
    :cond_13
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 440
    .local v1, outBuf:[C
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v2

    .line 443
    .local v2, outPtr:I
    :goto_1f
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v4, v5, :cond_30

    .line 444
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v4

    if-nez v4, :cond_30

    .line 445
    const-string v4, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 448
    :cond_30
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v4, v5

    .line 449
    .local v0, c:C
    move p1, v0

    .line 450
    if-gt p1, v8, :cond_43

    .line 451
    if-ne p1, v8, :cond_53

    .line 456
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v0

    .line 467
    :cond_43
    :goto_43
    array-length v4, v1

    if-lt v2, v4, :cond_4d

    .line 468
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 469
    const/4 v2, 0x0

    .line 472
    :cond_4d
    add-int/lit8 v3, v2, 0x1

    .end local v2           #outPtr:I
    .local v3, outPtr:I
    aput-char v0, v1, v2

    move v2, v3

    .line 473
    .end local v3           #outPtr:I
    .restart local v2       #outPtr:I
    goto :goto_1f

    .line 457
    :cond_53
    if-gt p1, v7, :cond_43

    .line 458
    if-ne p1, v7, :cond_5f

    .line 474
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v4, v2}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 475
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    return-object v4

    .line 461
    :cond_5f
    const/16 v4, 0x20

    if-ge p1, v4, :cond_43

    .line 462
    const-string v4, "string value"

    invoke-virtual {p0, p1, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_43
.end method

.method protected final _handleUnusualFieldName(I)Ljava/lang/String;
    .registers 13
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 337
    const/16 v8, 0x27

    if-ne p1, v8, :cond_11

    sget-object v8, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 338
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parseApostropheFieldName()Ljava/lang/String;

    move-result-object v8

    .line 382
    :goto_10
    return-object v8

    .line 341
    :cond_11
    sget-object v8, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 342
    const-string v8, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v8}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 344
    :cond_1e
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1JsNames()[I

    move-result-object v1

    .line 345
    .local v1, codes:[I
    array-length v5, v1

    .line 350
    .local v5, maxCode:I
    if-ge p1, v5, :cond_5d

    .line 351
    aget v8, v1, p1

    if-nez v8, :cond_5b

    const/16 v8, 0x30

    if-lt p1, v8, :cond_31

    const/16 v8, 0x39

    if-le p1, v8, :cond_5b

    :cond_31
    const/4 v2, 0x1

    .line 355
    .local v2, firstOk:Z
    :goto_32
    if-nez v2, :cond_39

    .line 356
    const-string v8, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v8}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 358
    :cond_39
    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 359
    .local v6, ptr:I
    const/4 v3, 0x0

    .line 360
    .local v3, hash:I
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 362
    .local v4, inputLen:I
    if-ge v6, v4, :cond_83

    .line 364
    :cond_40
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v0, v8, v6

    .line 365
    .local v0, ch:I
    if-ge v0, v5, :cond_63

    .line 366
    aget v8, v1, v0

    if-eqz v8, :cond_7b

    .line 367
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v8, -0x1

    .line 368
    .local v7, start:I
    iput v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 369
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int v10, v6, v7

    invoke-virtual {v8, v9, v7, v10, v3}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v8

    goto :goto_10

    .line 351
    .end local v0           #ch:I
    .end local v2           #firstOk:Z
    .end local v3           #hash:I
    .end local v4           #inputLen:I
    .end local v6           #ptr:I
    .end local v7           #start:I
    :cond_5b
    const/4 v2, 0x0

    goto :goto_32

    .line 353
    :cond_5d
    int-to-char v8, p1

    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    .restart local v2       #firstOk:Z
    goto :goto_32

    .line 371
    .restart local v0       #ch:I
    .restart local v3       #hash:I
    .restart local v4       #inputLen:I
    .restart local v6       #ptr:I
    :cond_63
    int-to-char v8, v0

    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v8

    if-nez v8, :cond_7b

    .line 372
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v8, -0x1

    .line 373
    .restart local v7       #start:I
    iput v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 374
    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v9, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int v10, v6, v7

    invoke-virtual {v8, v9, v7, v10, v3}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v8

    goto :goto_10

    .line 376
    .end local v7           #start:I
    :cond_7b
    mul-int/lit8 v8, v3, 0x1f

    add-int v3, v8, v0

    .line 377
    add-int/lit8 v6, v6, 0x1

    .line 378
    if-lt v6, v4, :cond_40

    .line 380
    .end local v0           #ch:I
    :cond_83
    iget v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v7, v8, -0x1

    .line 381
    .restart local v7       #start:I
    iput v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 382
    invoke-direct {p0, v7, v3, v1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parseUnusualFieldName2(II[I)Ljava/lang/String;

    move-result-object v8

    goto :goto_10
.end method

.method protected _matchToken(Lorg/codehaus/jackson/JsonToken;)V
    .registers 8
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, matchStr:Ljava/lang/String;
    const/4 v1, 0x1

    .line 664
    .local v1, i:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, len:I
    :goto_9
    if-ge v1, v2, :cond_39

    .line 665
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v4, v5, :cond_1c

    .line 666
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 667
    const-string v4, " in a value"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 670
    :cond_1c
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v4, v5

    .line 671
    .local v0, c:C
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_30

    .line 672
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 674
    :cond_30
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 680
    .end local v0           #c:C
    :cond_39
    return-void
.end method

.method protected final _parseApostropheFieldName()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x27

    .line 389
    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 390
    .local v5, ptr:I
    const/4 v2, 0x0

    .line 391
    .local v2, hash:I
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 393
    .local v3, inputLen:I
    if-ge v5, v3, :cond_2b

    .line 394
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v1

    .line 395
    .local v1, codes:[I
    array-length v4, v1

    .line 398
    .local v4, maxCode:I
    :cond_e
    iget-object v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v0, v7, v5

    .line 399
    .local v0, ch:I
    if-ne v0, v8, :cond_25

    .line 400
    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 401
    .local v6, start:I
    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 402
    iget-object v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int v9, v5, v6

    invoke-virtual {v7, v8, v6, v9, v2}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v7

    .line 415
    .end local v0           #ch:I
    .end local v1           #codes:[I
    .end local v4           #maxCode:I
    :goto_24
    return-object v7

    .line 404
    .end local v6           #start:I
    .restart local v0       #ch:I
    .restart local v1       #codes:[I
    .restart local v4       #maxCode:I
    :cond_25
    if-ge v0, v4, :cond_34

    aget v7, v1, v0

    if-eqz v7, :cond_34

    .line 412
    .end local v0           #ch:I
    .end local v1           #codes:[I
    .end local v4           #maxCode:I
    :cond_2b
    :goto_2b
    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 413
    .restart local v6       #start:I
    iput v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 415
    invoke-direct {p0, v6, v2, v8}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object v7

    goto :goto_24

    .line 407
    .end local v6           #start:I
    .restart local v0       #ch:I
    .restart local v1       #codes:[I
    .restart local v4       #maxCode:I
    :cond_34
    mul-int/lit8 v7, v2, 0x1f

    add-int v2, v7, v0

    .line 408
    add-int/lit8 v5, v5, 0x1

    .line 409
    if-lt v5, v3, :cond_e

    goto :goto_2b
.end method

.method protected final _parseFieldName(I)Ljava/lang/String;
    .registers 12
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x22

    .line 234
    if-eq p1, v8, :cond_9

    .line 235
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_handleUnusualFieldName(I)Ljava/lang/String;

    move-result-object v7

    .line 266
    :goto_8
    return-object v7

    .line 241
    :cond_9
    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 242
    .local v5, ptr:I
    const/4 v2, 0x0

    .line 243
    .local v2, hash:I
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 245
    .local v3, inputLen:I
    if-ge v5, v3, :cond_3a

    .line 246
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v1

    .line 247
    .local v1, codes:[I
    array-length v4, v1

    .line 250
    .local v4, maxCode:I
    :cond_15
    iget-object v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    aget-char v0, v7, v5

    .line 251
    .local v0, ch:I
    if-ge v0, v4, :cond_32

    aget v7, v1, v0

    if-eqz v7, :cond_32

    .line 252
    if-ne v0, v8, :cond_3a

    .line 253
    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 254
    .local v6, start:I
    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 255
    iget-object v7, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    iget-object v8, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    sub-int v9, v5, v6

    invoke-virtual {v7, v8, v6, v9, v2}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    .line 259
    .end local v6           #start:I
    :cond_32
    mul-int/lit8 v7, v2, 0x1f

    add-int v2, v7, v0

    .line 260
    add-int/lit8 v5, v5, 0x1

    .line 261
    if-lt v5, v3, :cond_15

    .line 264
    .end local v0           #ch:I
    .end local v1           #codes:[I
    .end local v4           #maxCode:I
    :cond_3a
    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 265
    .restart local v6       #start:I
    iput v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 266
    invoke-direct {p0, v6, v2, v8}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parseFieldName2(III)Ljava/lang/String;

    move-result-object v7

    goto :goto_8
.end method

.method protected final _skipCR()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 720
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 721
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    iget v1, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    .line 722
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 725
    :cond_1c
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    .line 726
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    .line 727
    return-void
.end method

.method protected final _skipLF()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    .line 732
    iget v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iput v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    .line 733
    return-void
.end method

.method protected _skipString()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x22

    .line 613
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 615
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 616
    .local v4, inputPtr:I
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 617
    .local v3, inputLen:I
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputBuffer:[C

    .line 620
    .local v2, inputBuffer:[C
    :goto_d
    if-lt v4, v3, :cond_20

    .line 621
    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 622
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->loadMore()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 623
    const-string v6, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 625
    :cond_1c
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 626
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    .line 628
    :cond_20
    add-int/lit8 v5, v4, 0x1

    .end local v4           #inputPtr:I
    .local v5, inputPtr:I
    aget-char v0, v2, v4

    .line 629
    .local v0, c:C
    move v1, v0

    .line 630
    .local v1, i:I
    if-gt v1, v8, :cond_46

    .line 631
    if-ne v1, v8, :cond_34

    .line 636
    iput v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 637
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_decodeEscaped()C

    move-result v0

    .line 638
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 639
    .end local v5           #inputPtr:I
    .restart local v4       #inputPtr:I
    iget v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputEnd:I

    goto :goto_d

    .line 640
    .end local v4           #inputPtr:I
    .restart local v5       #inputPtr:I
    :cond_34
    if-gt v1, v7, :cond_46

    .line 641
    if-ne v1, v7, :cond_3b

    .line 642
    iput v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 652
    return-void

    .line 645
    :cond_3b
    const/16 v6, 0x20

    if-ge v1, v6, :cond_46

    .line 646
    iput v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    .line 647
    const-string v6, "string value"

    invoke-virtual {p0, v1, v6}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    :cond_46
    move v4, v5

    .end local v5           #inputPtr:I
    .restart local v4       #inputPtr:I
    goto :goto_d
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-super {p0}, Lorg/codehaus/jackson/impl/ReaderBasedNumericParser;->close()V

    .line 222
    iget-object v0, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_symbols:Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->release()V

    .line 223
    return-void
.end method

.method public nextToken()Lorg/codehaus/jackson/JsonToken;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x7d

    const/16 v8, 0x5d

    .line 68
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_10

    .line 69
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextAfterName()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 201
    :goto_f
    return-object v3

    .line 71
    :cond_10
    iget-boolean v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    if-eqz v4, :cond_17

    .line 72
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipString()V

    .line 75
    :cond_17
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipWSOrEnd()I

    move-result v0

    .line 76
    .local v0, i:I
    if-gez v0, :cond_23

    .line 80
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->close()V

    .line 81
    iput-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_f

    .line 87
    :cond_23
    iget-wide v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputProcessed:J

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputTotal:J

    .line 88
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRow:I

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    .line 89
    iget v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currInputRowStart:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    .line 92
    iput-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_binaryValue:[B

    .line 95
    if-ne v0, v8, :cond_57

    .line 96
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->inArray()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 97
    invoke-virtual {p0, v0, v9}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportMismatchedEndMarker(IC)V

    .line 99
    :cond_4a
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 100
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_f

    .line 102
    :cond_57
    if-ne v0, v9, :cond_71

    .line 103
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v4

    if-nez v4, :cond_64

    .line 104
    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportMismatchedEndMarker(IC)V

    .line 106
    :cond_64
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 107
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_f

    .line 111
    :cond_71
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->expectComma()Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 112
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_9f

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "was expecting comma to separate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 115
    :cond_9f
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I

    move-result v0

    .line 122
    :cond_a3
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v1

    .line 123
    .local v1, inObject:Z
    if-eqz v1, :cond_c9

    .line 125
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parseFieldName(I)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4, v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 127
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 128
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I

    move-result v0

    .line 129
    const/16 v4, 0x3a

    if-eq v0, v4, :cond_c5

    .line 130
    const-string v4, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 132
    :cond_c5
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_skipWS()I

    move-result v0

    .line 139
    .end local v2           #name:Ljava/lang/String;
    :cond_c9
    sparse-switch v0, :sswitch_data_126

    .line 192
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_handleUnexpectedValue(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 196
    .local v3, t:Lorg/codehaus/jackson/JsonToken;
    :goto_d0
    if-eqz v1, :cond_122

    .line 197
    iput-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 198
    iget-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_f

    .line 141
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_d8
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenIncomplete:Z

    .line 142
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    .line 143
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_d0

    .line 145
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_de
    if-nez v1, :cond_ec

    .line 146
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 148
    :cond_ec
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    .line 149
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_d0

    .line 151
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_ef
    if-nez v1, :cond_fd

    .line 152
    iget-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v5, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputRow:I

    iget v6, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 154
    :cond_fd
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    .line 155
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_d0

    .line 160
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_100
    const-string v4, "expected a value"

    invoke-virtual {p0, v0, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 162
    :sswitch_105
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Lorg/codehaus/jackson/JsonToken;)V

    .line 163
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    .line 164
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_d0

    .line 166
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_10d
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Lorg/codehaus/jackson/JsonToken;)V

    .line 167
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    .line 168
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_d0

    .line 170
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_115
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_matchToken(Lorg/codehaus/jackson/JsonToken;)V

    .line 171
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    .line 172
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_d0

    .line 189
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_11d
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/ReaderBasedParser;->parseNumberText(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 190
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_d0

    .line 200
    :cond_122
    iput-object v3, p0, Lorg/codehaus/jackson/impl/ReaderBasedParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_f

    .line 139
    :sswitch_data_126
    .sparse-switch
        0x22 -> :sswitch_d8
        0x2d -> :sswitch_11d
        0x30 -> :sswitch_11d
        0x31 -> :sswitch_11d
        0x32 -> :sswitch_11d
        0x33 -> :sswitch_11d
        0x34 -> :sswitch_11d
        0x35 -> :sswitch_11d
        0x36 -> :sswitch_11d
        0x37 -> :sswitch_11d
        0x38 -> :sswitch_11d
        0x39 -> :sswitch_11d
        0x5b -> :sswitch_de
        0x5d -> :sswitch_100
        0x66 -> :sswitch_10d
        0x6e -> :sswitch_115
        0x74 -> :sswitch_105
        0x7b -> :sswitch_ef
        0x7d -> :sswitch_100
    .end sparse-switch
.end method
