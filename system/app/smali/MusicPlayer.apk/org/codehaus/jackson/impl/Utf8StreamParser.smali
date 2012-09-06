.class public final Lorg/codehaus/jackson/impl/Utf8StreamParser;
.super Lorg/codehaus/jackson/impl/Utf8NumericParser;
.source "Utf8StreamParser.java"


# instance fields
.field protected _objectCodec:Lorg/codehaus/jackson/ObjectCodec;

.field protected _quadBuffer:[I

.field protected final _symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;[BIIZ)V
    .registers 18
    .parameter "ctxt"
    .parameter "features"
    .parameter "in"
    .parameter "codec"
    .parameter "sym"
    .parameter "inputBuffer"
    .parameter "start"
    .parameter "end"
    .parameter "bufferRecyclable"

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p6

    move v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/impl/Utf8NumericParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V

    .line 38
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 53
    iput-object p4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_objectCodec:Lorg/codehaus/jackson/ObjectCodec;

    .line 54
    iput-object p5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 55
    return-void
.end method

.method private final _decodeUtf8_2(I)I
    .registers 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1459
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_9

    .line 1460
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1462
    :cond_9
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1463
    .local v0, d:I
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_20

    .line 1464
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1466
    :cond_20
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    return v1
.end method

.method private final _decodeUtf8_3(I)I
    .registers 8
    .parameter "c1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 1472
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v2, v3, :cond_b

    .line 1473
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1475
    :cond_b
    and-int/lit8 p1, p1, 0xf

    .line 1476
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1477
    .local v1, d:I
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_22

    .line 1478
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1480
    :cond_22
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1481
    .local v0, c:I
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v2, v3, :cond_31

    .line 1482
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1484
    :cond_31
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1485
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_46

    .line 1486
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1488
    :cond_46
    shl-int/lit8 v2, v0, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1489
    return v0
.end method

.method private final _decodeUtf8_3fast(I)I
    .registers 8
    .parameter "c1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 1495
    and-int/lit8 p1, p1, 0xf

    .line 1496
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1497
    .local v1, d:I
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_19

    .line 1498
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1500
    :cond_19
    shl-int/lit8 v2, p1, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1501
    .local v0, c:I
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v2, v3

    .line 1502
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_34

    .line 1503
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1505
    :cond_34
    shl-int/lit8 v2, v0, 0x6

    and-int/lit8 v3, v1, 0x3f

    or-int v0, v2, v3

    .line 1506
    return v0
.end method

.method private final _decodeUtf8_4(I)I
    .registers 7
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 1516
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_b

    .line 1517
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1519
    :cond_b
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1520
    .local v0, d:I
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_20

    .line 1521
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1523
    :cond_20
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int p1, v1, v2

    .line 1525
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_31

    .line 1526
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1528
    :cond_31
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1529
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_46

    .line 1530
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1532
    :cond_46
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int p1, v1, v2

    .line 1533
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_55

    .line 1534
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1536
    :cond_55
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1537
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_6a

    .line 1538
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1544
    :cond_6a
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v2, v0, 0x3f

    or-int/2addr v1, v2

    const/high16 v2, 0x1

    sub-int/2addr v1, v2

    return v1
.end method

.method private final _nextAfterName()Lorg/codehaus/jackson/JsonToken;
    .registers 5

    .prologue
    .line 220
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_nameCopied:Z

    .line 221
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 222
    .local v0, t:Lorg/codehaus/jackson/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 224
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1b

    .line 225
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 229
    :cond_18
    :goto_18
    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    .line 226
    :cond_1b
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_18

    .line 227
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_18
.end method

.method private _reportInvalidToken(Ljava/lang/String;)V
    .registers 8
    .parameter "matchedPart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v2, sb:Ljava/lang/StringBuilder;
    :goto_5
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_32

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-nez v3, :cond_32

    .line 1213
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized token \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': was expecting \'null\', \'true\' or \'false\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 1214
    return-void

    .line 1204
    :cond_32
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v3, v4

    .line 1205
    .local v1, i:I
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeCharForError(I)I

    move-result v3

    int-to-char v0, v3

    .line 1206
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1209
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1210
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method private final _skipCComment()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1294
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeComment()[I

    move-result-object v1

    .line 1297
    .local v1, codes:[I
    :cond_4
    :goto_4
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_10

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1298
    :cond_10
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v2, v3, 0xff

    .line 1299
    .local v2, i:I
    aget v0, v1, v2

    .line 1300
    .local v0, code:I
    if-eqz v0, :cond_4

    .line 1301
    sparse-switch v0, :sswitch_data_46

    .line 1316
    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_4

    .line 1303
    :sswitch_27
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_4

    .line 1304
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1321
    .end local v0           #code:I
    .end local v2           #i:I
    :goto_37
    return-void

    .line 1309
    .restart local v0       #code:I
    .restart local v2       #i:I
    :sswitch_38
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_4

    .line 1312
    :sswitch_3c
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_4

    .line 1320
    .end local v0           #code:I
    .end local v2           #i:I
    :cond_40
    const-string v3, " in a comment"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    goto :goto_37

    .line 1301
    :sswitch_data_46
    .sparse-switch
        0xa -> :sswitch_38
        0xd -> :sswitch_3c
        0x2a -> :sswitch_27
    .end sparse-switch
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

    .line 1273
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1274
    const-string v1, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1277
    :cond_f
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_20

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1278
    const-string v1, " in a comment"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1280
    :cond_20
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1281
    .local v0, c:I
    if-ne v0, v4, :cond_32

    .line 1282
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCppComment()V

    .line 1288
    :goto_31
    return-void

    .line 1283
    :cond_32
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3a

    .line 1284
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCComment()V

    goto :goto_31

    .line 1286
    :cond_3a
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_31
.end method

.method private final _skipCppComment()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1327
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeComment()[I

    move-result-object v1

    .line 1328
    .local v1, codes:[I
    :cond_4
    :goto_4
    :sswitch_4
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_10

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1329
    :cond_10
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 v2, v3, 0xff

    .line 1330
    .local v2, i:I
    aget v0, v1, v2

    .line 1331
    .local v0, code:I
    if-eqz v0, :cond_4

    .line 1332
    sparse-switch v0, :sswitch_data_30

    .line 1343
    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_4

    .line 1334
    :sswitch_27
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    .line 1347
    .end local v0           #code:I
    .end local v2           #i:I
    :cond_2a
    :goto_2a
    return-void

    .line 1337
    .restart local v0       #code:I
    .restart local v2       #i:I
    :sswitch_2b
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_2a

    .line 1332
    nop

    :sswitch_data_30
    .sparse-switch
        0xa -> :sswitch_27
        0xd -> :sswitch_2b
        0x2a -> :sswitch_4
    .end sparse-switch
.end method

.method private final _skipUtf8_2(I)V
    .registers 5
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1550
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_9

    .line 1551
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1553
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte p1, v0, v1

    .line 1554
    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_20

    .line 1555
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1557
    :cond_20
    return-void
.end method

.method private final _skipUtf8_3(I)V
    .registers 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x80

    .line 1565
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_b

    .line 1566
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1569
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte p1, v0, v1

    .line 1570
    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v3, :cond_20

    .line 1571
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1573
    :cond_20
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_29

    .line 1574
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1576
    :cond_29
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte p1, v0, v1

    .line 1577
    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v3, :cond_3e

    .line 1578
    and-int/lit16 v0, p1, 0xff

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1580
    :cond_3e
    return-void
.end method

.method private final _skipUtf8_4(I)V
    .registers 7
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    .line 1585
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_b

    .line 1586
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1588
    :cond_b
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1589
    .local v0, d:I
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_20

    .line 1590
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1592
    :cond_20
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_29

    .line 1593
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1595
    :cond_29
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_34

    .line 1596
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1598
    :cond_34
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_3d

    .line 1599
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1601
    :cond_3d
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v1, v2

    .line 1602
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_52

    .line 1603
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(II)V

    .line 1605
    :cond_52
    return-void
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

    .line 1225
    :cond_2
    :goto_2
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_e

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1226
    :cond_e
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1227
    .local v0, i:I
    if-le v0, v4, :cond_25

    .line 1228
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_21

    .line 1229
    return v0

    .line 1231
    :cond_21
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V

    goto :goto_2

    .line 1232
    :cond_25
    if-eq v0, v4, :cond_2

    .line 1233
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2f

    .line 1234
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_2

    .line 1235
    :cond_2f
    const/16 v1, 0xd

    if-ne v0, v1, :cond_37

    .line 1236
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_2

    .line 1237
    :cond_37
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 1238
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V

    goto :goto_2

    .line 1242
    .end local v0           #i:I
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end-of-input within/between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

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

    .line 1248
    :cond_2
    :goto_2
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v1, v2, :cond_e

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1249
    :cond_e
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 1250
    .local v0, i:I
    if-le v0, v4, :cond_25

    .line 1251
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_21

    .line 1267
    .end local v0           #i:I
    :goto_20
    return v0

    .line 1254
    .restart local v0       #i:I
    :cond_21
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipComment()V

    goto :goto_2

    .line 1255
    :cond_25
    if-eq v0, v4, :cond_2

    .line 1256
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2f

    .line 1257
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipLF()V

    goto :goto_2

    .line 1258
    :cond_2f
    const/16 v1, 0xd

    if-ne v0, v1, :cond_37

    .line 1259
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipCR()V

    goto :goto_2

    .line 1260
    :cond_37
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 1261
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V

    goto :goto_2

    .line 1266
    .end local v0           #i:I
    :cond_3f
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_handleEOF()V

    .line 1267
    const/4 v0, -0x1

    goto :goto_20
.end method

.method private final addName([III)Lorg/codehaus/jackson/sym/Name;
    .registers 18
    .parameter "quads"
    .parameter "qlen"
    .parameter "lastQuadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 792
    shl-int/lit8 v12, p2, 0x2

    add-int/lit8 v12, v12, -0x4

    add-int v3, v12, p3

    .line 801
    .local v3, byteLen:I
    const/4 v12, 0x4

    move/from16 v0, p3

    if-ge v0, v12, :cond_d7

    .line 802
    add-int/lit8 v12, p2, -0x1

    aget v10, p1, v12

    .line 804
    .local v10, lastQuad:I
    add-int/lit8 v12, p2, -0x1

    rsub-int/lit8 v13, p3, 0x4

    shl-int/lit8 v13, v13, 0x3

    shl-int v13, v10, v13

    aput v13, p1, v12

    .line 810
    :goto_19
    iget-object v12, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v12}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 811
    .local v4, cbuf:[C
    const/4 v7, 0x0

    .line 813
    .local v7, cix:I
    const/4 v9, 0x0

    .local v9, ix:I
    move v8, v7

    .end local v7           #cix:I
    .local v8, cix:I
    :goto_22
    if-ge v9, v3, :cond_f7

    .line 814
    shr-int/lit8 v12, v9, 0x2

    aget v5, p1, v12

    .line 815
    .local v5, ch:I
    and-int/lit8 v2, v9, 0x3

    .line 816
    .local v2, byteIx:I
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int v12, v5, v12

    and-int/lit16 v5, v12, 0xff

    .line 817
    add-int/lit8 v9, v9, 0x1

    .line 819
    const/16 v12, 0x7f

    if-le v5, v12, :cond_10f

    .line 821
    and-int/lit16 v12, v5, 0xe0

    const/16 v13, 0xc0

    if-ne v12, v13, :cond_da

    .line 822
    and-int/lit8 v5, v5, 0x1f

    .line 823
    const/4 v11, 0x1

    .line 834
    .local v11, needed:I
    :goto_41
    add-int v12, v9, v11

    if-le v12, v3, :cond_4a

    .line 835
    const-string v12, " in field name"

    invoke-virtual {p0, v12}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 839
    :cond_4a
    shr-int/lit8 v12, v9, 0x2

    aget v6, p1, v12

    .line 840
    .local v6, ch2:I
    and-int/lit8 v2, v9, 0x3

    .line 841
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v6, v12

    .line 842
    add-int/lit8 v9, v9, 0x1

    .line 844
    and-int/lit16 v12, v6, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_60

    .line 845
    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 847
    :cond_60
    shl-int/lit8 v12, v5, 0x6

    and-int/lit8 v13, v6, 0x3f

    or-int v5, v12, v13

    .line 848
    const/4 v12, 0x1

    if-le v11, v12, :cond_a6

    .line 849
    shr-int/lit8 v12, v9, 0x2

    aget v6, p1, v12

    .line 850
    and-int/lit8 v2, v9, 0x3

    .line 851
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v6, v12

    .line 852
    add-int/lit8 v9, v9, 0x1

    .line 854
    and-int/lit16 v12, v6, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_7f

    .line 855
    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 857
    :cond_7f
    shl-int/lit8 v12, v5, 0x6

    and-int/lit8 v13, v6, 0x3f

    or-int v5, v12, v13

    .line 858
    const/4 v12, 0x2

    if-le v11, v12, :cond_a6

    .line 859
    shr-int/lit8 v12, v9, 0x2

    aget v6, p1, v12

    .line 860
    and-int/lit8 v2, v9, 0x3

    .line 861
    rsub-int/lit8 v12, v2, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int/2addr v6, v12

    .line 862
    add-int/lit8 v9, v9, 0x1

    .line 863
    and-int/lit16 v12, v6, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_a0

    .line 864
    and-int/lit16 v12, v6, 0xff

    invoke-virtual {p0, v12}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 866
    :cond_a0
    shl-int/lit8 v12, v5, 0x6

    and-int/lit8 v13, v6, 0x3f

    or-int v5, v12, v13

    .line 869
    :cond_a6
    const/4 v12, 0x2

    if-le v11, v12, :cond_10f

    .line 870
    const/high16 v12, 0x1

    sub-int/2addr v5, v12

    .line 871
    array-length v12, v4

    if-lt v8, v12, :cond_b5

    .line 872
    iget-object v12, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v12}, Lorg/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v4

    .line 874
    :cond_b5
    add-int/lit8 v7, v8, 0x1

    .end local v8           #cix:I
    .restart local v7       #cix:I
    const v12, 0xd800

    shr-int/lit8 v13, v5, 0xa

    add-int/2addr v12, v13

    int-to-char v12, v12

    aput-char v12, v4, v8

    .line 875
    const v12, 0xdc00

    and-int/lit16 v13, v5, 0x3ff

    or-int v5, v12, v13

    .line 878
    .end local v6           #ch2:I
    .end local v11           #needed:I
    :goto_c7
    array-length v12, v4

    if-lt v7, v12, :cond_d0

    .line 879
    iget-object v12, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v12}, Lorg/codehaus/jackson/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v4

    .line 881
    :cond_d0
    add-int/lit8 v8, v7, 0x1

    .end local v7           #cix:I
    .restart local v8       #cix:I
    int-to-char v12, v5

    aput-char v12, v4, v7

    goto/16 :goto_22

    .line 806
    .end local v2           #byteIx:I
    .end local v4           #cbuf:[C
    .end local v5           #ch:I
    .end local v8           #cix:I
    .end local v9           #ix:I
    .end local v10           #lastQuad:I
    :cond_d7
    const/4 v10, 0x0

    .restart local v10       #lastQuad:I
    goto/16 :goto_19

    .line 824
    .restart local v2       #byteIx:I
    .restart local v4       #cbuf:[C
    .restart local v5       #ch:I
    .restart local v8       #cix:I
    .restart local v9       #ix:I
    :cond_da
    and-int/lit16 v12, v5, 0xf0

    const/16 v13, 0xe0

    if-ne v12, v13, :cond_e5

    .line 825
    and-int/lit8 v5, v5, 0xf

    .line 826
    const/4 v11, 0x2

    .restart local v11       #needed:I
    goto/16 :goto_41

    .line 827
    .end local v11           #needed:I
    :cond_e5
    and-int/lit16 v12, v5, 0xf8

    const/16 v13, 0xf0

    if-ne v12, v13, :cond_f0

    .line 828
    and-int/lit8 v5, v5, 0x7

    .line 829
    const/4 v11, 0x3

    .restart local v11       #needed:I
    goto/16 :goto_41

    .line 831
    .end local v11           #needed:I
    :cond_f0
    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V

    .line 832
    const/4 v5, 0x1

    move v11, v5

    .restart local v11       #needed:I
    goto/16 :goto_41

    .line 888
    .end local v2           #byteIx:I
    .end local v5           #ch:I
    .end local v11           #needed:I
    :cond_f7
    new-instance v1, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v1, v4, v12, v8}, Ljava/lang/String;-><init>([CII)V

    .line 890
    .local v1, baseName:Ljava/lang/String;
    const/4 v12, 0x4

    move/from16 v0, p3

    if-ge v0, v12, :cond_106

    .line 891
    add-int/lit8 v12, p2, -0x1

    aput v10, p1, v12

    .line 893
    :cond_106
    iget-object v12, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move/from16 v0, p2

    invoke-virtual {v12, v1, p1, v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v12

    return-object v12

    .end local v1           #baseName:Ljava/lang/String;
    .restart local v2       #byteIx:I
    .restart local v5       #ch:I
    :cond_10f
    move v7, v8

    .end local v8           #cix:I
    .restart local v7       #cix:I
    goto :goto_c7
.end method

.method private final findName(II)Lorg/codehaus/jackson/sym/Name;
    .registers 6
    .parameter "q1"
    .parameter "lastQuadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 741
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 742
    .local v0, name:Lorg/codehaus/jackson/sym/Name;
    if-eqz v0, :cond_9

    .line 747
    .end local v0           #name:Lorg/codehaus/jackson/sym/Name;
    :goto_8
    return-object v0

    .line 746
    .restart local v0       #name:Lorg/codehaus/jackson/sym/Name;
    :cond_9
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 747
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_8
.end method

.method private final findName(III)Lorg/codehaus/jackson/sym/Name;
    .registers 7
    .parameter "q1"
    .parameter "q2"
    .parameter "lastQuadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 754
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 755
    .local v0, name:Lorg/codehaus/jackson/sym/Name;
    if-eqz v0, :cond_9

    .line 761
    .end local v0           #name:Lorg/codehaus/jackson/sym/Name;
    :goto_8
    return-object v0

    .line 759
    .restart local v0       #name:Lorg/codehaus/jackson/sym/Name;
    :cond_9
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 760
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x1

    aput p2, v1, v2

    .line 761
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, p3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_8
.end method

.method private final findName([IIII)Lorg/codehaus/jackson/sym/Name;
    .registers 8
    .parameter "quads"
    .parameter "qlen"
    .parameter "lastQuad"
    .parameter "lastQuadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 767
    array-length v2, p1

    if-lt p2, v2, :cond_a

    .line 768
    array-length v2, p1

    invoke-static {p1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 770
    :cond_a
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, qlen:I
    aput p3, p1, p2

    .line 771
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v2, p1, v1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 772
    .local v0, name:Lorg/codehaus/jackson/sym/Name;
    if-nez v0, :cond_1a

    .line 773
    invoke-direct {p0, p1, v1, p4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 775
    .end local v0           #name:Lorg/codehaus/jackson/sym/Name;
    :cond_1a
    return-object v0
.end method

.method public static growArrayBy([II)[I
    .registers 6
    .parameter "arr"
    .parameter "more"

    .prologue
    const/4 v3, 0x0

    .line 1680
    if-nez p0, :cond_6

    .line 1681
    new-array p0, p1, [I

    .line 1687
    .end local p0
    :goto_5
    return-object p0

    .line 1683
    .restart local p0
    :cond_6
    move-object v1, p0

    .line 1684
    .local v1, old:[I
    array-length v0, p0

    .line 1685
    .local v0, len:I
    add-int v2, v0, p1

    new-array p0, v2, [I

    .line 1686
    invoke-static {v1, v3, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5
.end method

.method private nextByte()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1637
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_9

    .line 1638
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1640
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private final parseFieldName(III)Lorg/codehaus/jackson/sym/Name;
    .registers 10
    .parameter "q1"
    .parameter "ch"
    .parameter "lastQuadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0
.end method

.method private final parseFieldName(IIII)Lorg/codehaus/jackson/sym/Name;
    .registers 11
    .parameter "q1"
    .parameter "q2"
    .parameter "ch"
    .parameter "lastQuadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 441
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _decodeCharForError(I)I
    .registers 8
    .parameter "firstByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x80

    .line 1406
    move v0, p1

    .line 1407
    .local v0, c:I
    if-gez v0, :cond_4d

    .line 1411
    and-int/lit16 v3, v0, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_4e

    .line 1412
    and-int/lit8 v0, v0, 0x1f

    .line 1413
    const/4 v2, 0x1

    .line 1426
    .local v2, needed:I
    :goto_e
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I

    move-result v1

    .line 1427
    .local v1, d:I
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_1b

    .line 1428
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 1430
    :cond_1b
    shl-int/lit8 v3, v0, 0x6

    and-int/lit8 v4, v1, 0x3f

    or-int v0, v3, v4

    .line 1432
    const/4 v3, 0x1

    if-le v2, v3, :cond_4d

    .line 1433
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I

    move-result v1

    .line 1434
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_31

    .line 1435
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 1437
    :cond_31
    shl-int/lit8 v3, v0, 0x6

    and-int/lit8 v4, v1, 0x3f

    or-int v0, v3, v4

    .line 1438
    const/4 v3, 0x2

    if-le v2, v3, :cond_4d

    .line 1439
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->nextByte()I

    move-result v1

    .line 1440
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_47

    .line 1441
    and-int/lit16 v3, v1, 0xff

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 1443
    :cond_47
    shl-int/lit8 v3, v0, 0x6

    and-int/lit8 v4, v1, 0x3f

    or-int v0, v3, v4

    .line 1447
    .end local v1           #d:I
    .end local v2           #needed:I
    :cond_4d
    return v0

    .line 1414
    :cond_4e
    and-int/lit16 v3, v0, 0xf0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_58

    .line 1415
    and-int/lit8 v0, v0, 0xf

    .line 1416
    const/4 v2, 0x2

    .restart local v2       #needed:I
    goto :goto_e

    .line 1417
    .end local v2           #needed:I
    :cond_58
    and-int/lit16 v3, v0, 0xf8

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_62

    .line 1419
    and-int/lit8 v0, v0, 0x7

    .line 1420
    const/4 v2, 0x3

    .restart local v2       #needed:I
    goto :goto_e

    .line 1422
    .end local v2           #needed:I
    :cond_62
    and-int/lit16 v3, v0, 0xff

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V

    .line 1423
    const/4 v2, 0x1

    .restart local v2       #needed:I
    goto :goto_e
.end method

.method protected final _decodeEscaped()C
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1352
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v5, v6, :cond_11

    .line 1353
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_11

    .line 1354
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1357
    :cond_11
    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v5, v6

    .line 1359
    .local v0, c:I
    sparse-switch v0, :sswitch_data_88

    .line 1382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized character escape (\\ followed by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeCharForError(I)I

    move-result v6

    invoke-static {v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 1386
    :sswitch_42
    const/4 v4, 0x0

    .line 1387
    .local v4, value:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_44
    const/4 v5, 0x4

    if-ge v3, v5, :cond_85

    .line 1388
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v5, v6, :cond_58

    .line 1389
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v5

    if-nez v5, :cond_58

    .line 1390
    const-string v5, " in character escape sequence"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 1393
    :cond_58
    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v1, v5, v6

    .line 1394
    .local v1, ch:I
    invoke-static {v1}, Lorg/codehaus/jackson/util/CharTypes;->charToHex(I)I

    move-result v2

    .line 1395
    .local v2, digit:I
    if-gez v2, :cond_6d

    .line 1396
    const-string v5, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v1, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1398
    :cond_6d
    shl-int/lit8 v5, v4, 0x4

    or-int v4, v5, v2

    .line 1387
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 1362
    .end local v1           #ch:I
    .end local v2           #digit:I
    .end local v3           #i:I
    .end local v4           #value:I
    :sswitch_74
    const/16 v5, 0x8

    .line 1400
    :goto_76
    return v5

    .line 1364
    :sswitch_77
    const/16 v5, 0x9

    goto :goto_76

    .line 1366
    :sswitch_7a
    const/16 v5, 0xa

    goto :goto_76

    .line 1368
    :sswitch_7d
    const/16 v5, 0xc

    goto :goto_76

    .line 1370
    :sswitch_80
    const/16 v5, 0xd

    goto :goto_76

    .line 1376
    :sswitch_83
    int-to-char v5, v0

    goto :goto_76

    .line 1400
    .restart local v3       #i:I
    .restart local v4       #value:I
    :cond_85
    int-to-char v5, v4

    goto :goto_76

    .line 1359
    nop

    :sswitch_data_88
    .sparse-switch
        0x22 -> :sswitch_83
        0x2f -> :sswitch_83
        0x5c -> :sswitch_83
        0x62 -> :sswitch_74
        0x66 -> :sswitch_7d
        0x6e -> :sswitch_7a
        0x72 -> :sswitch_80
        0x74 -> :sswitch_77
        0x75 -> :sswitch_42
    .end sparse-switch
.end method

.method protected _finishString()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 906
    const/4 v6, 0x0

    .line 908
    .local v6, outPtr:I
    iget-object v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 911
    .local v5, outBuf:[C
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeUtf8()[I

    move-result-object v1

    .line 912
    .local v1, codes:[I
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 919
    .local v2, inputBuffer:[B
    :goto_d
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 920
    .local v8, ptr:I
    iget v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v8, v10, :cond_18

    .line 921
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 922
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 924
    :cond_18
    array-length v10, v5

    if-lt v6, v10, :cond_22

    .line 925
    iget-object v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 926
    const/4 v6, 0x0

    .line 928
    :cond_22
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    .line 930
    .local v3, max:I
    array-length v10, v5

    sub-int/2addr v10, v6

    add-int v4, v8, v10

    .line 931
    .local v4, max2:I
    if-ge v4, v3, :cond_b7

    .line 932
    move v3, v4

    move v9, v8

    .end local v8           #ptr:I
    .local v9, ptr:I
    move v7, v6

    .line 935
    .end local v6           #outPtr:I
    .local v7, outPtr:I
    :goto_2d
    if-ge v9, v3, :cond_4d

    .line 936
    add-int/lit8 v8, v9, 0x1

    .end local v9           #ptr:I
    .restart local v8       #ptr:I
    aget-byte v10, v2, v9

    and-int/lit16 v0, v10, 0xff

    .line 937
    .local v0, c:I
    aget v10, v1, v0

    if-eqz v10, :cond_45

    .line 938
    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 946
    const/16 v10, 0x22

    if-ne v0, v10, :cond_51

    .line 992
    iget-object v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10, v7}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 993
    return-void

    .line 941
    :cond_45
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    int-to-char v10, v0

    aput-char v10, v5, v7

    move v9, v8

    .end local v8           #ptr:I
    .restart local v9       #ptr:I
    move v7, v6

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    goto :goto_2d

    .line 943
    .end local v0           #c:I
    :cond_4d
    iput v9, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    move v6, v7

    .line 944
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_d

    .line 950
    .end local v6           #outPtr:I
    .end local v9           #ptr:I
    .restart local v0       #c:I
    .restart local v7       #outPtr:I
    .restart local v8       #ptr:I
    :cond_51
    aget v10, v1, v0

    packed-switch v10, :pswitch_data_bc

    .line 976
    const/16 v10, 0x20

    if-ge v0, v10, :cond_b2

    .line 978
    const-string v10, "string value"

    invoke-virtual {p0, v0, v10}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    move v6, v7

    .line 985
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    :goto_60
    array-length v10, v5

    if-lt v6, v10, :cond_6a

    .line 986
    iget-object v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 987
    const/4 v6, 0x0

    .line 990
    :cond_6a
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    int-to-char v10, v0

    aput-char v10, v5, v6

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_d

    .line 952
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :pswitch_71
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result v0

    move v6, v7

    .line 953
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_60

    .line 955
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :pswitch_77
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_2(I)I

    move-result v0

    move v6, v7

    .line 956
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_60

    .line 958
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :pswitch_7d
    iget v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v11, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v10, v11

    const/4 v11, 0x2

    if-lt v10, v11, :cond_8b

    .line 959
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3fast(I)I

    move-result v0

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_60

    .line 961
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_8b
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3(I)I

    move-result v0

    move v6, v7

    .line 963
    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_60

    .line 965
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :pswitch_91
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_4(I)I

    move-result v0

    .line 967
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    const v10, 0xd800

    shr-int/lit8 v11, v0, 0xa

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v5, v7

    .line 968
    array-length v10, v5

    if-lt v6, v10, :cond_aa

    .line 969
    iget-object v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v10}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 970
    const/4 v6, 0x0

    .line 972
    :cond_aa
    const v10, 0xdc00

    and-int/lit16 v11, v0, 0x3ff

    or-int v0, v10, v11

    .line 974
    goto :goto_60

    .line 981
    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    :cond_b2
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    move v6, v7

    .end local v7           #outPtr:I
    .restart local v6       #outPtr:I
    goto :goto_60

    .end local v0           #c:I
    :cond_b7
    move v9, v8

    .end local v8           #ptr:I
    .restart local v9       #ptr:I
    move v7, v6

    .end local v6           #outPtr:I
    .restart local v7       #outPtr:I
    goto/16 :goto_2d

    .line 950
    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_71
        :pswitch_77
        :pswitch_7d
        :pswitch_91
    .end packed-switch
.end method

.method protected final _handleUnexpectedValue(I)Lorg/codehaus/jackson/JsonToken;
    .registers 12
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x27

    .line 1071
    if-ne p1, v9, :cond_c

    sget-object v7, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 1072
    :cond_c
    const-string v7, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 1076
    :cond_11
    const/4 v5, 0x0

    .line 1077
    .local v5, outPtr:I
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v4

    .line 1080
    .local v4, outBuf:[C
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeUtf8()[I

    move-result-object v0

    .line 1081
    .local v0, codes:[I
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 1088
    .local v1, inputBuffer:[B
    :cond_1e
    :goto_1e
    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v7, v8, :cond_27

    .line 1089
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1091
    :cond_27
    array-length v7, v4

    if-lt v5, v7, :cond_31

    .line 1092
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 1093
    const/4 v5, 0x0

    .line 1095
    :cond_31
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    .line 1097
    .local v2, max:I
    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    array-length v8, v4

    sub-int/2addr v8, v5

    add-int v3, v7, v8

    .line 1098
    .local v3, max2:I
    if-ge v3, v2, :cond_3c

    .line 1099
    move v2, v3

    .line 1102
    :cond_3c
    :goto_3c
    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    if-ge v7, v2, :cond_1e

    .line 1103
    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v7, v1, v7

    and-int/lit16 p1, v7, 0xff

    .line 1104
    if-eq p1, v9, :cond_50

    aget v7, v0, p1

    if-eqz v7, :cond_5a

    .line 1112
    :cond_50
    if-ne p1, v9, :cond_61

    .line 1158
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7, v5}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 1160
    sget-object v7, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    return-object v7

    .line 1107
    :cond_5a
    add-int/lit8 v6, v5, 0x1

    .end local v5           #outPtr:I
    .local v6, outPtr:I
    int-to-char v7, p1

    aput-char v7, v4, v5

    move v5, v6

    .end local v6           #outPtr:I
    .restart local v5       #outPtr:I
    goto :goto_3c

    .line 1116
    :cond_61
    aget v7, v0, p1

    packed-switch v7, :pswitch_data_c6

    .line 1144
    const/16 v7, 0x20

    if-ge p1, v7, :cond_6f

    .line 1145
    const-string v7, "string value"

    invoke-virtual {p0, p1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 1148
    :cond_6f
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    .line 1151
    :cond_72
    :goto_72
    array-length v7, v4

    if-lt v5, v7, :cond_7c

    .line 1152
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 1153
    const/4 v5, 0x0

    .line 1156
    :cond_7c
    add-int/lit8 v6, v5, 0x1

    .end local v5           #outPtr:I
    .restart local v6       #outPtr:I
    int-to-char v7, p1

    aput-char v7, v4, v5

    move v5, v6

    .end local v6           #outPtr:I
    .restart local v5       #outPtr:I
    goto :goto_1e

    .line 1118
    :pswitch_83
    const/16 v7, 0x22

    if-eq p1, v7, :cond_72

    .line 1119
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result p1

    goto :goto_72

    .line 1123
    :pswitch_8c
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_2(I)I

    move-result p1

    .line 1124
    goto :goto_72

    .line 1126
    :pswitch_91
    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    if-lt v7, v8, :cond_9e

    .line 1127
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3fast(I)I

    move-result p1

    goto :goto_72

    .line 1129
    :cond_9e
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_3(I)I

    move-result p1

    .line 1131
    goto :goto_72

    .line 1133
    :pswitch_a3
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeUtf8_4(I)I

    move-result p1

    .line 1135
    add-int/lit8 v6, v5, 0x1

    .end local v5           #outPtr:I
    .restart local v6       #outPtr:I
    const v7, 0xd800

    shr-int/lit8 v8, p1, 0xa

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v4, v5

    .line 1136
    array-length v7, v4

    if-lt v6, v7, :cond_c4

    .line 1137
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v7}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v4

    .line 1138
    const/4 v5, 0x0

    .line 1140
    .end local v6           #outPtr:I
    .restart local v5       #outPtr:I
    :goto_bc
    const v7, 0xdc00

    and-int/lit16 v8, p1, 0x3ff

    or-int p1, v7, v8

    .line 1142
    goto :goto_72

    .end local v5           #outPtr:I
    .restart local v6       #outPtr:I
    :cond_c4
    move v5, v6

    .end local v6           #outPtr:I
    .restart local v5       #outPtr:I
    goto :goto_bc

    .line 1116
    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_83
        :pswitch_8c
        :pswitch_91
        :pswitch_a3
    .end packed-switch
.end method

.method protected final _handleUnusualFieldName(I)Lorg/codehaus/jackson/sym/Name;
    .registers 11
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 556
    const/16 v7, 0x27

    if-ne p1, v7, :cond_11

    sget-object v7, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 557
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parseApostropheFieldName()Lorg/codehaus/jackson/sym/Name;

    move-result-object v3

    .line 617
    :cond_10
    :goto_10
    return-object v3

    .line 560
    :cond_11
    sget-object v7, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 561
    const-string v7, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 567
    :cond_1e
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeUtf8JsNames()[I

    move-result-object v0

    .line 569
    .local v0, codes:[I
    aget v7, v0, p1

    if-eqz v7, :cond_2b

    .line 570
    const-string v7, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 577
    :cond_2b
    iget-object v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 578
    .local v6, quads:[I
    const/4 v4, 0x0

    .line 579
    .local v4, qlen:I
    const/4 v1, 0x0

    .line 580
    .local v1, currQuad:I
    const/4 v2, 0x0

    .local v2, currQuadBytes:I
    move v5, v4

    .line 584
    .end local v4           #qlen:I
    .local v5, qlen:I
    :goto_31
    const/4 v7, 0x4

    if-ge v2, v7, :cond_76

    .line 585
    add-int/lit8 v2, v2, 0x1

    .line 586
    shl-int/lit8 v7, v1, 0x8

    or-int v1, v7, p1

    move v4, v5

    .line 595
    .end local v5           #qlen:I
    .restart local v4       #qlen:I
    :goto_3b
    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v7, v8, :cond_4c

    .line 596
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v7

    if-nez v7, :cond_4c

    .line 597
    const-string v7, " in field name"

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 600
    :cond_4c
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v7, v7, v8

    and-int/lit16 p1, v7, 0xff

    .line 601
    aget v7, v0, p1

    if-eqz v7, :cond_87

    .line 607
    if-lez v2, :cond_69

    .line 608
    array-length v7, v6

    if-lt v4, v7, :cond_64

    .line 609
    array-length v7, v6

    invoke-static {v6, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 611
    :cond_64
    add-int/lit8 v5, v4, 0x1

    .end local v4           #qlen:I
    .restart local v5       #qlen:I
    aput v1, v6, v4

    move v4, v5

    .line 613
    .end local v5           #qlen:I
    .restart local v4       #qlen:I
    :cond_69
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v7, v6, v4}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v3

    .line 614
    .local v3, name:Lorg/codehaus/jackson/sym/Name;
    if-nez v3, :cond_10

    .line 615
    invoke-direct {p0, v6, v4, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v3

    goto :goto_10

    .line 588
    .end local v3           #name:Lorg/codehaus/jackson/sym/Name;
    .end local v4           #qlen:I
    .restart local v5       #qlen:I
    :cond_76
    array-length v7, v6

    if-lt v5, v7, :cond_80

    .line 589
    array-length v7, v6

    invoke-static {v6, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 591
    :cond_80
    add-int/lit8 v4, v5, 0x1

    .end local v5           #qlen:I
    .restart local v4       #qlen:I
    aput v1, v6, v5

    .line 592
    move v1, p1

    .line 593
    const/4 v2, 0x1

    goto :goto_3b

    .line 604
    :cond_87
    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    move v5, v4

    .end local v4           #qlen:I
    .restart local v5       #qlen:I
    goto :goto_31
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
    .line 1173
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asByteArray()[B

    move-result-object v2

    .line 1174
    .local v2, matchBytes:[B
    const/4 v0, 0x1

    .line 1176
    .local v0, i:I
    array-length v1, v2

    .local v1, len:I
    :goto_6
    if-ge v0, v1, :cond_30

    .line 1177
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_11

    .line 1178
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1180
    :cond_11
    aget-byte v3, v2, v0

    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_27

    .line 1181
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 1183
    :cond_27
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1176
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1189
    :cond_30
    return-void
.end method

.method protected final _parseApostropheFieldName()Lorg/codehaus/jackson/sym/Name;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x27

    const/4 v11, 0x4

    .line 628
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v8, v9, :cond_14

    .line 629
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_14

    .line 630
    const-string v8, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 633
    :cond_14
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 v0, v8, 0xff

    .line 634
    .local v0, ch:I
    if-ne v0, v12, :cond_27

    .line 635
    invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lorg/codehaus/jackson/sym/Name;

    move-result-object v4

    .line 728
    :cond_26
    :goto_26
    return-object v4

    .line 637
    :cond_27
    iget-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 638
    .local v7, quads:[I
    const/4 v5, 0x0

    .line 639
    .local v5, qlen:I
    const/4 v2, 0x0

    .line 640
    .local v2, currQuad:I
    const/4 v3, 0x0

    .line 644
    .local v3, currQuadBytes:I
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v1

    .local v1, codes:[I
    move v6, v5

    .line 647
    .end local v5           #qlen:I
    .local v6, qlen:I
    :goto_31
    if-ne v0, v12, :cond_50

    .line 718
    if-lez v3, :cond_f4

    .line 719
    array-length v8, v7

    if-lt v6, v8, :cond_3f

    .line 720
    array-length v8, v7

    invoke-static {v7, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 722
    :cond_3f
    add-int/lit8 v5, v6, 0x1

    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    aput v2, v7, v6

    .line 724
    :goto_43
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v8, v7, v5}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v4

    .line 725
    .local v4, name:Lorg/codehaus/jackson/sym/Name;
    if-nez v4, :cond_26

    .line 726
    invoke-direct {p0, v7, v5, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v4

    goto :goto_26

    .line 651
    .end local v4           #name:Lorg/codehaus/jackson/sym/Name;
    .end local v5           #qlen:I
    .restart local v6       #qlen:I
    :cond_50
    const/16 v8, 0x22

    if-eq v0, v8, :cond_8c

    aget v8, v1, v0

    if-eqz v8, :cond_8c

    .line 652
    const/16 v8, 0x5c

    if-eq v0, v8, :cond_b5

    .line 655
    const-string v8, "name"

    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 665
    :goto_61
    const/16 v8, 0x7f

    if-le v0, v8, :cond_8c

    .line 667
    if-lt v3, v11, :cond_78

    .line 668
    array-length v8, v7

    if-lt v6, v8, :cond_71

    .line 669
    array-length v8, v7

    invoke-static {v7, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 671
    :cond_71
    add-int/lit8 v5, v6, 0x1

    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    aput v2, v7, v6

    .line 672
    const/4 v2, 0x0

    .line 673
    const/4 v3, 0x0

    move v6, v5

    .line 675
    .end local v5           #qlen:I
    .restart local v6       #qlen:I
    :cond_78
    const/16 v8, 0x800

    if-ge v0, v8, :cond_ba

    .line 676
    shl-int/lit8 v8, v2, 0x8

    shr-int/lit8 v9, v0, 0x6

    or-int/lit16 v9, v9, 0xc0

    or-int v2, v8, v9

    .line 677
    add-int/lit8 v3, v3, 0x1

    move v5, v6

    .line 695
    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    :goto_87
    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v0, v8, 0x80

    move v6, v5

    .line 699
    .end local v5           #qlen:I
    .restart local v6       #qlen:I
    :cond_8c
    if-ge v3, v11, :cond_e3

    .line 700
    add-int/lit8 v3, v3, 0x1

    .line 701
    shl-int/lit8 v8, v2, 0x8

    or-int v2, v8, v0

    move v5, v6

    .line 710
    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    :goto_95
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v8, v9, :cond_a6

    .line 711
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_a6

    .line 712
    const-string v8, " in field name"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 715
    :cond_a6
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 v0, v8, 0xff

    move v6, v5

    .end local v5           #qlen:I
    .restart local v6       #qlen:I
    goto/16 :goto_31

    .line 658
    :cond_b5
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result v0

    goto :goto_61

    .line 680
    :cond_ba
    shl-int/lit8 v8, v2, 0x8

    shr-int/lit8 v9, v0, 0xc

    or-int/lit16 v9, v9, 0xe0

    or-int v2, v8, v9

    .line 681
    add-int/lit8 v3, v3, 0x1

    .line 683
    if-lt v3, v11, :cond_f7

    .line 684
    array-length v8, v7

    if-lt v6, v8, :cond_d0

    .line 685
    array-length v8, v7

    invoke-static {v7, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 687
    :cond_d0
    add-int/lit8 v5, v6, 0x1

    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    aput v2, v7, v6

    .line 688
    const/4 v2, 0x0

    .line 689
    const/4 v3, 0x0

    .line 691
    :goto_d6
    shl-int/lit8 v8, v2, 0x8

    shr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    or-int v2, v8, v9

    .line 692
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 703
    .end local v5           #qlen:I
    .restart local v6       #qlen:I
    :cond_e3
    array-length v8, v7

    if-lt v6, v8, :cond_ed

    .line 704
    array-length v8, v7

    invoke-static {v7, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v7

    iput-object v7, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 706
    :cond_ed
    add-int/lit8 v5, v6, 0x1

    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    aput v2, v7, v6

    .line 707
    move v2, v0

    .line 708
    const/4 v3, 0x1

    goto :goto_95

    .end local v5           #qlen:I
    .restart local v6       #qlen:I
    :cond_f4
    move v5, v6

    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    goto/16 :goto_43

    .end local v5           #qlen:I
    .restart local v6       #qlen:I
    :cond_f7
    move v5, v6

    .end local v6           #qlen:I
    .restart local v5       #qlen:I
    goto :goto_d6
.end method

.method protected final _parseFieldName(I)Lorg/codehaus/jackson/sym/Name;
    .registers 12
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x22

    .line 249
    if-eq p1, v5, :cond_d

    .line 250
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_handleUnusualFieldName(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    .line 304
    :goto_c
    return-object v2

    .line 253
    :cond_d
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v2, v3

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1b

    .line 254
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->slowParseFieldName()Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_c

    .line 263
    :cond_1b
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    .line 265
    .local v0, codes:[I
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 266
    .local v1, q:I
    aget v2, v0, v1

    if-eqz v2, :cond_3b

    .line 267
    if-ne v1, v5, :cond_36

    .line 268
    invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_c

    .line 270
    :cond_36
    invoke-direct {p0, v6, v1, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_c

    .line 273
    :cond_3b
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 p1, v2, 0xff

    .line 274
    aget v2, v0, p1

    if-eqz v2, :cond_57

    .line 275
    if-ne p1, v5, :cond_52

    .line 276
    invoke-direct {p0, v1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_c

    .line 278
    :cond_52
    invoke-direct {p0, v1, p1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_c

    .line 280
    :cond_57
    shl-int/lit8 v2, v1, 0x8

    or-int v1, v2, p1

    .line 281
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 p1, v2, 0xff

    .line 282
    aget v2, v0, p1

    if-eqz v2, :cond_77

    .line 283
    if-ne p1, v5, :cond_72

    .line 284
    invoke-direct {p0, v1, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_c

    .line 286
    :cond_72
    invoke-direct {p0, v1, p1, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_c

    .line 288
    :cond_77
    shl-int/lit8 v2, v1, 0x8

    or-int v1, v2, p1

    .line 289
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 p1, v2, 0xff

    .line 290
    aget v2, v0, p1

    if-eqz v2, :cond_99

    .line 291
    if-ne p1, v5, :cond_93

    .line 292
    invoke-direct {p0, v1, v9}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto/16 :goto_c

    .line 294
    :cond_93
    invoke-direct {p0, v1, p1, v9}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto/16 :goto_c

    .line 296
    :cond_99
    shl-int/lit8 v2, v1, 0x8

    or-int v1, v2, p1

    .line 297
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 p1, v2, 0xff

    .line 298
    aget v2, v0, p1

    if-eqz v2, :cond_bd

    .line 299
    if-ne p1, v5, :cond_b6

    .line 300
    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto/16 :goto_c

    .line 302
    :cond_b6
    const/4 v2, 0x4

    invoke-direct {p0, v1, p1, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto/16 :goto_c

    .line 304
    :cond_bd
    invoke-virtual {p0, v1, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseMediumFieldName(II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto/16 :goto_c
.end method

.method protected _reportInvalidChar(I)V
    .registers 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1653
    const/16 v0, 0x20

    if-ge p1, v0, :cond_7

    .line 1654
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwInvalidSpace(I)V

    .line 1656
    :cond_7
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidInitial(I)V

    .line 1657
    return-void
.end method

.method protected _reportInvalidInitial(I)V
    .registers 4
    .parameter "mask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 1663
    return-void
.end method

.method protected _reportInvalidOther(I)V
    .registers 4
    .parameter "mask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportError(Ljava/lang/String;)V

    .line 1669
    return-void
.end method

.method protected _reportInvalidOther(II)V
    .registers 3
    .parameter "mask"
    .parameter "ptr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1674
    iput p2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1675
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidOther(I)V

    .line 1676
    return-void
.end method

.method protected final _skipCR()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1619
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1620
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    .line 1621
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1624
    :cond_1c
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    .line 1625
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    .line 1626
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
    .line 1630
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    .line 1631
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    .line 1632
    return-void
.end method

.method protected _skipString()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1003
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 1006
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeUtf8()[I

    move-result-object v1

    .line 1007
    .local v1, codes:[I
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    .line 1015
    .local v2, inputBuffer:[B
    :goto_9
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1016
    .local v4, ptr:I
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    .line 1017
    .local v3, max:I
    if-lt v4, v3, :cond_50

    .line 1018
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMoreGuaranteed()V

    .line 1019
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1020
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    move v5, v4

    .line 1022
    .end local v4           #ptr:I
    .local v5, ptr:I
    :goto_17
    if-ge v5, v3, :cond_2a

    .line 1023
    add-int/lit8 v4, v5, 0x1

    .end local v5           #ptr:I
    .restart local v4       #ptr:I
    aget-byte v6, v2, v5

    and-int/lit16 v0, v6, 0xff

    .line 1024
    .local v0, c:I
    aget v6, v1, v0

    if-eqz v6, :cond_50

    .line 1025
    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    .line 1032
    const/16 v6, 0x22

    if-ne v0, v6, :cond_2d

    .line 1059
    return-void

    .line 1029
    .end local v0           #c:I
    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    :cond_2a
    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    goto :goto_9

    .line 1036
    .end local v5           #ptr:I
    .restart local v0       #c:I
    .restart local v4       #ptr:I
    :cond_2d
    aget v6, v1, v0

    packed-switch v6, :pswitch_data_52

    .line 1050
    const/16 v6, 0x20

    if-ge v0, v6, :cond_4c

    .line 1052
    const-string v6, "string value"

    invoke-virtual {p0, v0, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_9

    .line 1038
    :pswitch_3c
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    goto :goto_9

    .line 1041
    :pswitch_40
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_2(I)V

    goto :goto_9

    .line 1044
    :pswitch_44
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_3(I)V

    goto :goto_9

    .line 1047
    :pswitch_48
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipUtf8_4(I)V

    goto :goto_9

    .line 1055
    :cond_4c
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidChar(I)V

    goto :goto_9

    .end local v0           #c:I
    :cond_50
    move v5, v4

    .end local v4           #ptr:I
    .restart local v5       #ptr:I
    goto :goto_17

    .line 1036
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_40
        :pswitch_44
        :pswitch_48
    .end packed-switch
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-super {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->close()V

    .line 237
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->release()V

    .line 238
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

    .line 83
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_10

    .line 84
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_nextAfterName()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 215
    :goto_f
    return-object v3

    .line 86
    :cond_10
    iget-boolean v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    if-eqz v4, :cond_17

    .line 87
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipString()V

    .line 90
    :cond_17
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipWSOrEnd()I

    move-result v0

    .line 91
    .local v0, i:I
    if-gez v0, :cond_23

    .line 95
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->close()V

    .line 96
    iput-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_f

    .line 102
    :cond_23
    iget-wide v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputProcessed:J

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputTotal:J

    .line 103
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRow:I

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    .line 104
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currInputRowStart:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    .line 107
    iput-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_binaryValue:[B

    .line 110
    if-ne v0, v8, :cond_57

    .line 111
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->inArray()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 112
    invoke-virtual {p0, v0, v9}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportMismatchedEndMarker(IC)V

    .line 114
    :cond_4a
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 115
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_f

    .line 117
    :cond_57
    if-ne v0, v9, :cond_71

    .line 118
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v4

    if-nez v4, :cond_64

    .line 119
    invoke-virtual {p0, v0, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportMismatchedEndMarker(IC)V

    .line 121
    :cond_64
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 122
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto :goto_f

    .line 126
    :cond_71
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->expectComma()Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 127
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_9f

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "was expecting comma to separate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 130
    :cond_9f
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    .line 137
    :cond_a3
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v4}, Lorg/codehaus/jackson/impl/JsonReadContext;->inObject()Z

    move-result v1

    .line 138
    .local v1, inObject:Z
    if-eqz v1, :cond_cd

    .line 140
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parseFieldName(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    .line 141
    .local v2, n:Lorg/codehaus/jackson/sym/Name;
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/sym/Name;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/codehaus/jackson/impl/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 142
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 143
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    .line 144
    const/16 v4, 0x3a

    if-eq v0, v4, :cond_c9

    .line 145
    const-string v4, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 147
    :cond_c9
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_skipWS()I

    move-result v0

    .line 154
    .end local v2           #n:Lorg/codehaus/jackson/sym/Name;
    :cond_cd
    sparse-switch v0, :sswitch_data_12a

    .line 207
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_handleUnexpectedValue(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 210
    .local v3, t:Lorg/codehaus/jackson/JsonToken;
    :goto_d4
    if-eqz v1, :cond_126

    .line 211
    iput-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_nextToken:Lorg/codehaus/jackson/JsonToken;

    .line 212
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_f

    .line 156
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_dc
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenIncomplete:Z

    .line 157
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    .line 158
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_d4

    .line 160
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_e2
    if-nez v1, :cond_f0

    .line 161
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 163
    :cond_f0
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    .line 164
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_d4

    .line 166
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_f3
    if-nez v1, :cond_101

    .line 167
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputRow:I

    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_tokenInputCol:I

    invoke-virtual {v4, v5, v6}, Lorg/codehaus/jackson/impl/JsonReadContext;->createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_parsingContext:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 169
    :cond_101
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    .line 170
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_d4

    .line 175
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_104
    const-string v4, "expected a value"

    invoke-virtual {p0, v0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 177
    :sswitch_109
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Lorg/codehaus/jackson/JsonToken;)V

    .line 178
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    .line 179
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_d4

    .line 181
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_111
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Lorg/codehaus/jackson/JsonToken;)V

    .line 182
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    .line 183
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_d4

    .line 185
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_119
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_matchToken(Lorg/codehaus/jackson/JsonToken;)V

    .line 186
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    .line 187
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_d4

    .line 204
    .end local v3           #t:Lorg/codehaus/jackson/JsonToken;
    :sswitch_121
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseNumberText(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 205
    .restart local v3       #t:Lorg/codehaus/jackson/JsonToken;
    goto :goto_d4

    .line 214
    :cond_126
    iput-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_f

    .line 154
    :sswitch_data_12a
    .sparse-switch
        0x22 -> :sswitch_dc
        0x2d -> :sswitch_121
        0x30 -> :sswitch_121
        0x31 -> :sswitch_121
        0x32 -> :sswitch_121
        0x33 -> :sswitch_121
        0x34 -> :sswitch_121
        0x35 -> :sswitch_121
        0x36 -> :sswitch_121
        0x37 -> :sswitch_121
        0x38 -> :sswitch_121
        0x39 -> :sswitch_121
        0x5b -> :sswitch_e2
        0x5d -> :sswitch_104
        0x66 -> :sswitch_111
        0x6e -> :sswitch_119
        0x74 -> :sswitch_109
        0x7b -> :sswitch_f3
        0x7d -> :sswitch_104
    .end sparse-switch
.end method

.method protected parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;
    .registers 13
    .parameter "quads"
    .parameter "qlen"
    .parameter "currQuad"
    .parameter "ch"
    .parameter "currQuadBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 460
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    .line 463
    .local v0, codes:[I
    :goto_5
    aget v3, v0, p4

    if-eqz v3, :cond_c8

    .line 464
    const/16 v3, 0x22

    if-ne p4, v3, :cond_2b

    .line 533
    if-lez p5, :cond_1e

    .line 534
    array-length v3, p1

    if-lt p2, v3, :cond_19

    .line 535
    array-length v3, p1

    invoke-static {p1, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 537
    :cond_19
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .local v2, qlen:I
    aput p3, p1, p2

    move p2, v2

    .line 539
    .end local v2           #qlen:I
    .restart local p2
    :cond_1e
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_symbols:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findName([II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 540
    .local v1, name:Lorg/codehaus/jackson/sym/Name;
    if-nez v1, :cond_2a

    .line 541
    invoke-direct {p0, p1, p2, p5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->addName([III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 543
    :cond_2a
    return-object v1

    .line 468
    .end local v1           #name:Lorg/codehaus/jackson/sym/Name;
    :cond_2b
    const/16 v3, 0x5c

    if-eq p4, v3, :cond_85

    .line 470
    const-string v3, "name"

    invoke-virtual {p0, p4, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 480
    :goto_34
    const/16 v3, 0x7f

    if-le p4, v3, :cond_c8

    .line 482
    if-lt p5, v6, :cond_c6

    .line 483
    array-length v3, p1

    if-lt p2, v3, :cond_44

    .line 484
    array-length v3, p1

    invoke-static {p1, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 486
    :cond_44
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #qlen:I
    aput p3, p1, p2

    .line 487
    const/4 p3, 0x0

    .line 488
    const/4 p5, 0x0

    .line 490
    :goto_4a
    const/16 v3, 0x800

    if-ge p4, v3, :cond_8a

    .line 491
    shl-int/lit8 v3, p3, 0x8

    shr-int/lit8 v4, p4, 0x6

    or-int/lit16 v4, v4, 0xc0

    or-int p3, v3, v4

    .line 492
    add-int/lit8 p5, p5, 0x1

    move p2, v2

    .line 510
    .end local v2           #qlen:I
    .restart local p2
    :goto_59
    and-int/lit8 v3, p4, 0x3f

    or-int/lit16 p4, v3, 0x80

    move v2, p2

    .line 514
    .end local p2
    .restart local v2       #qlen:I
    :goto_5e
    if-ge p5, v6, :cond_b3

    .line 515
    add-int/lit8 p5, p5, 0x1

    .line 516
    shl-int/lit8 v3, p3, 0x8

    or-int p3, v3, p4

    move p2, v2

    .line 525
    .end local v2           #qlen:I
    .restart local p2
    :goto_67
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v3, v4, :cond_78

    .line 526
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v3

    if-nez v3, :cond_78

    .line 527
    const-string v3, " in field name"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 530
    :cond_78
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v3, v3, v4

    and-int/lit16 p4, v3, 0xff

    goto :goto_5

    .line 473
    :cond_85
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_decodeEscaped()C

    move-result p4

    goto :goto_34

    .line 495
    .end local p2
    .restart local v2       #qlen:I
    :cond_8a
    shl-int/lit8 v3, p3, 0x8

    shr-int/lit8 v4, p4, 0xc

    or-int/lit16 v4, v4, 0xe0

    or-int p3, v3, v4

    .line 496
    add-int/lit8 p5, p5, 0x1

    .line 498
    if-lt p5, v6, :cond_c4

    .line 499
    array-length v3, p1

    if-lt v2, v3, :cond_a0

    .line 500
    array-length v3, p1

    invoke-static {p1, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 502
    :cond_a0
    add-int/lit8 p2, v2, 0x1

    .end local v2           #qlen:I
    .restart local p2
    aput p3, p1, v2

    .line 503
    const/4 p3, 0x0

    .line 504
    const/4 p5, 0x0

    .line 506
    :goto_a6
    shl-int/lit8 v3, p3, 0x8

    shr-int/lit8 v4, p4, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    or-int p3, v3, v4

    .line 507
    add-int/lit8 p5, p5, 0x1

    goto :goto_59

    .line 518
    .end local p2
    .restart local v2       #qlen:I
    :cond_b3
    array-length v3, p1

    if-lt v2, v3, :cond_bd

    .line 519
    array-length v3, p1

    invoke-static {p1, v3}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 521
    :cond_bd
    add-int/lit8 p2, v2, 0x1

    .end local v2           #qlen:I
    .restart local p2
    aput p3, p1, v2

    .line 522
    move p3, p4

    .line 523
    const/4 p5, 0x1

    goto :goto_67

    .end local p2
    .restart local v2       #qlen:I
    :cond_c4
    move p2, v2

    .end local v2           #qlen:I
    .restart local p2
    goto :goto_a6

    :cond_c6
    move v2, p2

    .end local p2
    .restart local v2       #qlen:I
    goto :goto_4a

    .end local v2           #qlen:I
    .restart local p2
    :cond_c8
    move v2, p2

    .end local p2
    .restart local v2       #qlen:I
    goto :goto_5e
.end method

.method protected parseLongFieldName(I)Lorg/codehaus/jackson/sym/Name;
    .registers 14
    .parameter "q"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x4

    const/16 v9, 0x22

    .line 354
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v6

    .line 355
    .local v6, codes:[I
    const/4 v2, 0x2

    .line 362
    .local v2, qlen:I
    :goto_b
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    sub-int/2addr v0, v1

    if-ge v0, v10, :cond_1c

    .line 363
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v4, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 399
    :goto_1b
    return-object v0

    .line 367
    :cond_1c
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 368
    .local v4, i:I
    aget v0, v6, v4

    if-eqz v0, :cond_3e

    .line 369
    if-ne v4, v9, :cond_35

    .line 370
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, p1, v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1b

    .line 372
    :cond_35
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1b

    .line 375
    :cond_3e
    shl-int/lit8 v0, p1, 0x8

    or-int p1, v0, v4

    .line 376
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 377
    aget v0, v6, v4

    if-eqz v0, :cond_65

    .line 378
    if-ne v4, v9, :cond_5b

    .line 379
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, p1, v11}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1b

    .line 381
    :cond_5b
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, p1

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1b

    .line 384
    :cond_65
    shl-int/lit8 v0, p1, 0x8

    or-int p1, v0, v4

    .line 385
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 386
    aget v0, v6, v4

    if-eqz v0, :cond_8d

    .line 387
    if-ne v4, v9, :cond_83

    .line 388
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, p1, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1b

    .line 390
    :cond_83
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v5, 0x3

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_1b

    .line 393
    :cond_8d
    shl-int/lit8 v0, p1, 0x8

    or-int p1, v0, v4

    .line 394
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v8, v1, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 395
    aget v0, v6, v4

    if-eqz v0, :cond_b6

    .line 396
    if-ne v4, v9, :cond_ab

    .line 397
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-direct {p0, v0, v2, p1, v10}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName([IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_1b

    .line 399
    :cond_ab
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, p1

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto/16 :goto_1b

    .line 403
    :cond_b6
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    array-length v0, v0

    if-lt v2, v0, :cond_c3

    .line 404
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    invoke-static {v0, v2}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->growArrayBy([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    .line 406
    :cond_c3
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    add-int/lit8 v7, v2, 0x1

    .end local v2           #qlen:I
    .local v7, qlen:I
    aput p1, v0, v2

    .line 407
    move p1, v4

    move v2, v7

    .line 408
    .end local v7           #qlen:I
    .restart local v2       #qlen:I
    goto/16 :goto_b
.end method

.method protected parseMediumFieldName(II)Lorg/codehaus/jackson/sym/Name;
    .registers 13
    .parameter "q1"
    .parameter "q2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x22

    .line 311
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    .line 314
    .local v0, codes:[I
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 315
    .local v1, i:I
    aget v2, v0, v1

    if-eqz v2, :cond_26

    .line 316
    if-ne v1, v5, :cond_21

    .line 317
    invoke-direct {p0, p1, p2, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    .line 347
    :goto_20
    return-object v2

    .line 319
    :cond_21
    invoke-direct {p0, p1, p2, v1, v6}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_20

    .line 321
    :cond_26
    shl-int/lit8 v2, p2, 0x8

    or-int p2, v2, v1

    .line 322
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 323
    aget v2, v0, v1

    if-eqz v2, :cond_46

    .line 324
    if-ne v1, v5, :cond_41

    .line 325
    invoke-direct {p0, p1, p2, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_20

    .line 327
    :cond_41
    invoke-direct {p0, p1, p2, v1, v7}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_20

    .line 329
    :cond_46
    shl-int/lit8 v2, p2, 0x8

    or-int p2, v2, v1

    .line 330
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 331
    aget v2, v0, v1

    if-eqz v2, :cond_66

    .line 332
    if-ne v1, v5, :cond_61

    .line 333
    invoke-direct {p0, p1, p2, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_20

    .line 335
    :cond_61
    invoke-direct {p0, p1, p2, v1, v8}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_20

    .line 337
    :cond_66
    shl-int/lit8 v2, p2, 0x8

    or-int p2, v2, v1

    .line 338
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 339
    aget v2, v0, v1

    if-eqz v2, :cond_86

    .line 340
    if-ne v1, v5, :cond_81

    .line 341
    invoke-direct {p0, p1, p2, v9}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->findName(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_20

    .line 343
    :cond_81
    invoke-direct {p0, p1, p2, v1, v9}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseFieldName(IIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_20

    .line 345
    :cond_86
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 346
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    aput p2, v2, v6

    .line 347
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseLongFieldName(I)Lorg/codehaus/jackson/sym/Name;

    move-result-object v2

    goto :goto_20
.end method

.method protected slowParseFieldName()Lorg/codehaus/jackson/sym/Name;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 419
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputEnd:I

    if-lt v0, v1, :cond_12

    .line 420
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_12

    .line 421
    const-string v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 424
    :cond_12
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_inputPtr:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    .line 425
    .local v4, i:I
    const/16 v0, 0x22

    if-ne v4, v0, :cond_27

    .line 426
    invoke-static {}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->getEmptyName()Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    .line 428
    :goto_26
    return-object v0

    :cond_27
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8StreamParser;->_quadBuffer:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8StreamParser;->parseEscapedFieldName([IIIII)Lorg/codehaus/jackson/sym/Name;

    move-result-object v0

    goto :goto_26
.end method
