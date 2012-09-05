.class public Lorg/codehaus/jackson/impl/Utf8Generator;
.super Lorg/codehaus/jackson/impl/JsonGeneratorBase;
.source "Utf8Generator.java"


# static fields
.field private static final FALSE_BYTES:[B

.field static final HEX_CHARS:[B

.field private static final NULL_BYTES:[B

.field private static final TRUE_BYTES:[B

.field protected static final sOutputEscapes:[I


# instance fields
.field protected _bufferRecyclable:Z

.field protected _charBuffer:[C

.field protected final _charBufferLength:I

.field protected _characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

.field protected final _ioContext:Lorg/codehaus/jackson/io/IOContext;

.field protected _maximumNonEscapedChar:I

.field protected _outputBuffer:[B

.field protected final _outputEnd:I

.field protected _outputEscapes:[I

.field protected final _outputMaxContiguous:I

.field protected final _outputStream:Ljava/io/OutputStream;

.field protected _outputTail:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 40
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->HEX_CHARS:[B

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_24

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->NULL_BYTES:[B

    .line 43
    new-array v0, v1, [B

    fill-array-data v0, :array_2a

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->TRUE_BYTES:[B

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_30

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->FALSE_BYTES:[B

    .line 50
    invoke-static {}, Lorg/codehaus/jackson/util/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->sOutputEscapes:[I

    return-void

    .line 42
    :array_24
    .array-data 0x1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data

    .line 43
    :array_2a
    .array-data 0x1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    .line 44
    :array_30
    .array-data 0x1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILorg/codehaus/jackson/ObjectCodec;Ljava/io/OutputStream;)V
    .registers 6
    .parameter "ctxt"
    .parameter "features"
    .parameter "codec"
    .parameter "out"

    .prologue
    .line 162
    invoke-direct {p0, p2, p3}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;-><init>(ILorg/codehaus/jackson/ObjectCodec;)V

    .line 77
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->sOutputEscapes:[I

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 163
    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    .line 164
    iput-object p4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_bufferRecyclable:Z

    .line 166
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocWriteEncodingBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 167
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    .line 172
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    .line 173
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocConcatBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    .line 174
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBufferLength:I

    .line 177
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 178
    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->setHighestNonEscapedChar(I)Lorg/codehaus/jackson/JsonGenerator;

    .line 180
    :cond_3a
    return-void
.end method

.method private _handleLongCustomEscape([BII[BI)I
    .registers 9
    .parameter "outputBuffer"
    .parameter "outputPtr"
    .parameter "outputEnd"
    .parameter "raw"
    .parameter "remainingChars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1474
    array-length v0, p4

    .line 1475
    .local v0, len:I
    add-int v1, p2, v0

    if-le v1, p3, :cond_1b

    .line 1476
    iput p2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1477
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1478
    iget p2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1479
    array-length v1, p1

    if-le v0, v1, :cond_17

    .line 1480
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p4, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    move v1, p2

    .line 1491
    :goto_16
    return v1

    .line 1483
    :cond_17
    invoke-static {p4, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1484
    add-int/2addr p2, v0

    .line 1487
    :cond_1b
    mul-int/lit8 v1, p5, 0x6

    add-int/2addr v1, p2

    if-le v1, p3, :cond_26

    .line 1488
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1489
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    goto :goto_16

    :cond_26
    move v1, p2

    .line 1491
    goto :goto_16
.end method

.method private final _outputMultiByteChar(II)I
    .registers 7
    .parameter "ch"
    .parameter "outputPtr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1678
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1679
    .local v0, bbuf:[B
    const v2, 0xd800

    if-lt p1, v2, :cond_47

    const v2, 0xdfff

    if-gt p1, v2, :cond_47

    .line 1680
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, outputPtr:I
    const/16 v2, 0x5c

    aput-byte v2, v0, p2

    .line 1681
    add-int/lit8 p2, v1, 0x1

    .end local v1           #outputPtr:I
    .restart local p2
    const/16 v2, 0x75

    aput-byte v2, v0, v1

    .line 1683
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #outputPtr:I
    sget-object v2, Lorg/codehaus/jackson/impl/Utf8Generator;->HEX_CHARS:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v0, p2

    .line 1684
    add-int/lit8 p2, v1, 0x1

    .end local v1           #outputPtr:I
    .restart local p2
    sget-object v2, Lorg/codehaus/jackson/impl/Utf8Generator;->HEX_CHARS:[B

    shr-int/lit8 v3, p1, 0x8

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 1685
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #outputPtr:I
    sget-object v2, Lorg/codehaus/jackson/impl/Utf8Generator;->HEX_CHARS:[B

    shr-int/lit8 v3, p1, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v0, p2

    .line 1686
    add-int/lit8 p2, v1, 0x1

    .end local v1           #outputPtr:I
    .restart local p2
    sget-object v2, Lorg/codehaus/jackson/impl/Utf8Generator;->HEX_CHARS:[B

    and-int/lit8 v3, p1, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 1692
    :goto_46
    return p2

    .line 1688
    :cond_47
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #outputPtr:I
    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, p2

    .line 1689
    add-int/lit8 p2, v1, 0x1

    .end local v1           #outputPtr:I
    .restart local p2
    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1690
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #outputPtr:I
    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, p2

    move p2, v1

    .end local v1           #outputPtr:I
    .restart local p2
    goto :goto_46
.end method

.method private final _outputRawMultiByteChar(I[CII)I
    .registers 8
    .parameter "ch"
    .parameter "cbuf"
    .parameter "inputOffset"
    .parameter "inputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1635
    const v1, 0xd800

    if-lt p1, v1, :cond_19

    .line 1636
    const v1, 0xdfff

    if-gt p1, v1, :cond_19

    .line 1638
    if-lt p3, p4, :cond_11

    .line 1639
    const-string v1, "Split surrogate on writeRaw() input (last character)"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_reportError(Ljava/lang/String;)V

    .line 1641
    :cond_11
    aget-char v1, p2, p3

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputSurrogates(II)V

    .line 1642
    add-int/lit8 p3, p3, 0x1

    .line 1649
    .end local p3
    :goto_18
    return p3

    .line 1645
    .restart local p3
    :cond_19
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1646
    .local v0, bbuf:[B
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1647
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1648
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_18
.end method

.method private _writeCustomEscape([BILorg/codehaus/jackson/SerializableString;I)I
    .registers 12
    .parameter "outputBuffer"
    .parameter "outputPtr"
    .parameter "esc"
    .parameter "remainingChars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1460
    invoke-interface {p3}, Lorg/codehaus/jackson/SerializableString;->asUnquotedUTF8()[B

    move-result-object v4

    .line 1461
    .local v4, raw:[B
    array-length v6, v4

    .line 1462
    .local v6, len:I
    const/4 v0, 0x6

    if-le v6, v0, :cond_13

    .line 1463
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/Utf8Generator;->_handleLongCustomEscape([BII[BI)I

    move-result v0

    .line 1467
    :goto_12
    return v0

    .line 1466
    :cond_13
    const/4 v0, 0x0

    invoke-static {v4, v0, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1467
    add-int v0, p2, v6

    goto :goto_12
.end method

.method private final _writeCustomStringSegment2([CII)V
    .registers 18
    .parameter "cbuf"
    .parameter "offset"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1403
    iget v11, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    sub-int v12, p3, p2

    mul-int/lit8 v12, v12, 0x6

    add-int/2addr v11, v12

    iget v12, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v11, v12, :cond_e

    .line 1404
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1406
    :cond_e
    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1408
    .local v9, outputPtr:I
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1409
    .local v8, outputBuffer:[B
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    .line 1411
    .local v4, escCodes:[I
    iget v11, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_maximumNonEscapedChar:I

    if-gtz v11, :cond_39

    const v6, 0xffff

    .line 1412
    .local v6, maxUnescaped:I
    :goto_1b
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    .local v2, customEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;
    move v10, v9

    .end local v9           #outputPtr:I
    .local v10, outputPtr:I
    move/from16 v7, p2

    .line 1414
    .end local p2
    .local v7, offset:I
    :goto_20
    move/from16 v0, p3

    if-ge v7, v0, :cond_c8

    .line 1415
    add-int/lit8 p2, v7, 0x1

    .end local v7           #offset:I
    .restart local p2
    aget-char v1, p1, v7

    .line 1416
    .local v1, ch:I
    const/16 v11, 0x7f

    if-gt v1, v11, :cond_8c

    .line 1417
    aget v11, v4, v1

    if-nez v11, :cond_3c

    .line 1418
    add-int/lit8 v9, v10, 0x1

    .end local v10           #outputPtr:I
    .restart local v9       #outputPtr:I
    int-to-byte v11, v1

    aput-byte v11, v8, v10

    move v10, v9

    .end local v9           #outputPtr:I
    .restart local v10       #outputPtr:I
    move/from16 v7, p2

    .line 1419
    .end local p2
    .restart local v7       #offset:I
    goto :goto_20

    .line 1411
    .end local v1           #ch:I
    .end local v2           #customEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;
    .end local v6           #maxUnescaped:I
    .end local v7           #offset:I
    .end local v10           #outputPtr:I
    .restart local v9       #outputPtr:I
    .restart local p2
    :cond_39
    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_maximumNonEscapedChar:I

    goto :goto_1b

    .line 1421
    .end local v9           #outputPtr:I
    .restart local v1       #ch:I
    .restart local v2       #customEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;
    .restart local v6       #maxUnescaped:I
    .restart local v10       #outputPtr:I
    :cond_3c
    aget v5, v4, v1

    .line 1422
    .local v5, escape:I
    if-lez v5, :cond_4e

    .line 1423
    add-int/lit8 v9, v10, 0x1

    .end local v10           #outputPtr:I
    .restart local v9       #outputPtr:I
    const/16 v11, 0x5c

    aput-byte v11, v8, v10

    .line 1424
    add-int/lit8 v10, v9, 0x1

    .end local v9           #outputPtr:I
    .restart local v10       #outputPtr:I
    int-to-byte v11, v5

    aput-byte v11, v8, v9

    move/from16 v7, p2

    .end local p2
    .restart local v7       #offset:I
    goto :goto_20

    .line 1425
    .end local v7           #offset:I
    .restart local p2
    :cond_4e
    const/4 v11, -0x2

    if-ne v5, v11, :cond_84

    .line 1426
    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lorg/codehaus/jackson/SerializableString;

    move-result-object v3

    .line 1427
    .local v3, esc:Lorg/codehaus/jackson/SerializableString;
    if-nez v3, :cond_7a

    .line 1428
    new-instance v11, Lorg/codehaus/jackson/JsonGenerationException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid custom escape definitions; custom escape not found for character code 0x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", although was supposed to have one"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1431
    :cond_7a
    sub-int v11, p3, p2

    invoke-direct {p0, v8, v10, v3, v11}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeCustomEscape([BILorg/codehaus/jackson/SerializableString;I)I

    move-result v9

    .end local v10           #outputPtr:I
    .restart local v9       #outputPtr:I
    move v10, v9

    .end local v9           #outputPtr:I
    .restart local v10       #outputPtr:I
    move/from16 v7, p2

    .line 1432
    .end local p2
    .restart local v7       #offset:I
    goto :goto_20

    .line 1434
    .end local v3           #esc:Lorg/codehaus/jackson/SerializableString;
    .end local v7           #offset:I
    .restart local p2
    :cond_84
    invoke-direct {p0, v1, v10}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeGenericEscape(II)I

    move-result v9

    .end local v10           #outputPtr:I
    .restart local v9       #outputPtr:I
    move v10, v9

    .end local v9           #outputPtr:I
    .restart local v10       #outputPtr:I
    move/from16 v7, p2

    .line 1436
    .end local p2
    .restart local v7       #offset:I
    goto :goto_20

    .line 1438
    .end local v5           #escape:I
    .end local v7           #offset:I
    .restart local p2
    :cond_8c
    if-le v1, v6, :cond_96

    .line 1439
    invoke-direct {p0, v1, v10}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeGenericEscape(II)I

    move-result v9

    .end local v10           #outputPtr:I
    .restart local v9       #outputPtr:I
    move v10, v9

    .end local v9           #outputPtr:I
    .restart local v10       #outputPtr:I
    move/from16 v7, p2

    .line 1440
    .end local p2
    .restart local v7       #offset:I
    goto :goto_20

    .line 1442
    .end local v7           #offset:I
    .restart local p2
    :cond_96
    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/io/CharacterEscapes;->getEscapeSequence(I)Lorg/codehaus/jackson/SerializableString;

    move-result-object v3

    .line 1443
    .restart local v3       #esc:Lorg/codehaus/jackson/SerializableString;
    if-eqz v3, :cond_a7

    .line 1444
    sub-int v11, p3, p2

    invoke-direct {p0, v8, v10, v3, v11}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeCustomEscape([BILorg/codehaus/jackson/SerializableString;I)I

    move-result v9

    .end local v10           #outputPtr:I
    .restart local v9       #outputPtr:I
    move v10, v9

    .end local v9           #outputPtr:I
    .restart local v10       #outputPtr:I
    move/from16 v7, p2

    .line 1445
    .end local p2
    .restart local v7       #offset:I
    goto/16 :goto_20

    .line 1447
    .end local v7           #offset:I
    .restart local p2
    :cond_a7
    const/16 v11, 0x7ff

    if-gt v1, v11, :cond_c3

    .line 1448
    add-int/lit8 v9, v10, 0x1

    .end local v10           #outputPtr:I
    .restart local v9       #outputPtr:I
    shr-int/lit8 v11, v1, 0x6

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    .line 1449
    add-int/lit8 v10, v9, 0x1

    .end local v9           #outputPtr:I
    .restart local v10       #outputPtr:I
    and-int/lit8 v11, v1, 0x3f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    aput-byte v11, v8, v9

    move v9, v10

    .end local v10           #outputPtr:I
    .restart local v9       #outputPtr:I
    :goto_be
    move v10, v9

    .end local v9           #outputPtr:I
    .restart local v10       #outputPtr:I
    move/from16 v7, p2

    .line 1453
    .end local p2
    .restart local v7       #offset:I
    goto/16 :goto_20

    .line 1451
    .end local v7           #offset:I
    .restart local p2
    :cond_c3
    invoke-direct {p0, v1, v10}, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputMultiByteChar(II)I

    move-result v9

    .end local v10           #outputPtr:I
    .restart local v9       #outputPtr:I
    goto :goto_be

    .line 1454
    .end local v1           #ch:I
    .end local v3           #esc:Lorg/codehaus/jackson/SerializableString;
    .end local v9           #outputPtr:I
    .end local p2
    .restart local v7       #offset:I
    .restart local v10       #outputPtr:I
    :cond_c8
    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1455
    return-void
.end method

.method private _writeGenericEscape(II)I
    .registers 8
    .parameter "charToEscape"
    .parameter "outputPtr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 1723
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1724
    .local v0, bbuf:[B
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .local v2, outputPtr:I
    const/16 v3, 0x5c

    aput-byte v3, v0, p2

    .line 1725
    add-int/lit8 p2, v2, 0x1

    .end local v2           #outputPtr:I
    .restart local p2
    const/16 v3, 0x75

    aput-byte v3, v0, v2

    .line 1726
    const/16 v3, 0xff

    if-le p1, v3, :cond_43

    .line 1727
    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v1, v3, 0xff

    .line 1728
    .local v1, hi:I
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #outputPtr:I
    sget-object v3, Lorg/codehaus/jackson/impl/Utf8Generator;->HEX_CHARS:[B

    shr-int/lit8 v4, v1, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, v0, p2

    .line 1729
    add-int/lit8 p2, v2, 0x1

    .end local v2           #outputPtr:I
    .restart local p2
    sget-object v3, Lorg/codehaus/jackson/impl/Utf8Generator;->HEX_CHARS:[B

    and-int/lit8 v4, v1, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 1730
    and-int/lit16 p1, p1, 0xff

    .line 1736
    .end local v1           #hi:I
    :goto_2e
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #outputPtr:I
    sget-object v3, Lorg/codehaus/jackson/impl/Utf8Generator;->HEX_CHARS:[B

    shr-int/lit8 v4, p1, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, v0, p2

    .line 1737
    add-int/lit8 p2, v2, 0x1

    .end local v2           #outputPtr:I
    .restart local p2
    sget-object v3, Lorg/codehaus/jackson/impl/Utf8Generator;->HEX_CHARS:[B

    and-int/lit8 v4, p1, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    .line 1738
    return p2

    .line 1732
    :cond_43
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #outputPtr:I
    aput-byte v4, v0, p2

    .line 1733
    add-int/lit8 p2, v2, 0x1

    .end local v2           #outputPtr:I
    .restart local p2
    aput-byte v4, v0, v2

    goto :goto_2e
.end method

.method private final _writeLongString(Ljava/lang/String;)V
    .registers 6
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 571
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_b

    .line 572
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 574
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 575
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments(Ljava/lang/String;)V

    .line 576
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_21

    .line 577
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 579
    :cond_21
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 580
    return-void
.end method

.method private final _writeLongString([CII)V
    .registers 8
    .parameter "text"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 585
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_b

    .line 586
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 588
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 589
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments([CII)V

    .line 590
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_24

    .line 591
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 593
    :cond_24
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 594
    return-void
.end method

.method private final _writeNull()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1708
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_b

    .line 1709
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1711
    :cond_b
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->NULL_BYTES:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1712
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1713
    return-void
.end method

.method private final _writeQuotedInt(I)V
    .registers 6
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 861
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_d

    .line 862
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 864
    :cond_d
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 865
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 866
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 867
    return-void
.end method

.method private final _writeQuotedLong(J)V
    .registers 7
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 886
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_d

    .line 887
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 889
    :cond_d
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 890
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->outputLong(J[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 891
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 892
    return-void
.end method

.method private final _writeQuotedRaw(Ljava/lang/Object;)V
    .registers 6
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 970
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_b

    .line 971
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 973
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 974
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->writeRaw(Ljava/lang/String;)V

    .line 975
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_25

    .line 976
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 978
    :cond_25
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v3, v0, v1

    .line 979
    return-void
.end method

.method private final _writeSegmentedRaw([CII)V
    .registers 10
    .parameter "cbuf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 781
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    .line 782
    .local v2, end:I
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 785
    .local v0, bbuf:[B
    :goto_4
    if-ge p2, p3, :cond_4f

    .line 788
    :cond_6
    aget-char v1, p1, p2

    .line 789
    .local v1, ch:I
    const/16 v4, 0x80

    if-lt v1, v4, :cond_3b

    .line 801
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v4, v4, 0x3

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v4, v5, :cond_17

    .line 802
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 804
    :cond_17
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, offset:I
    aget-char v1, p1, p2

    .line 805
    .local v1, ch:C
    const/16 v4, 0x800

    if-ge v1, v4, :cond_50

    .line 806
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v5, v1, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 807
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    and-int/lit8 v5, v1, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    :goto_39
    move p2, v3

    .line 811
    .end local v3           #offset:I
    .restart local p2
    goto :goto_4

    .line 793
    .local v1, ch:I
    :cond_3b
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    if-lt v4, v2, :cond_42

    .line 794
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 796
    :cond_42
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 797
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_6

    .line 812
    .end local v1           #ch:I
    :cond_4f
    return-void

    .line 809
    .end local p2
    .local v1, ch:C
    .restart local v3       #offset:I
    :cond_50
    invoke-direct {p0, v1, p1, v3, p3}, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputRawMultiByteChar(I[CII)I

    goto :goto_39
.end method

.method private final _writeStringSegment([CII)V
    .registers 10
    .parameter "cbuf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1253
    add-int/2addr p3, p2

    .line 1255
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1256
    .local v3, outputPtr:I
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1257
    .local v2, outputBuffer:[B
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    .local v1, escCodes:[I
    move v4, v3

    .line 1259
    .end local v3           #outputPtr:I
    .local v4, outputPtr:I
    :goto_8
    if-ge p2, p3, :cond_14

    .line 1260
    aget-char v0, p1, p2

    .line 1262
    .local v0, ch:I
    const/16 v5, 0x7f

    if-gt v0, v5, :cond_14

    aget v5, v1, v0

    if-eqz v5, :cond_20

    .line 1268
    .end local v0           #ch:I
    :cond_14
    iput v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1269
    if-ge p2, p3, :cond_1f

    .line 1271
    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    if-eqz v5, :cond_29

    .line 1272
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeCustomStringSegment2([CII)V

    .line 1281
    :cond_1f
    :goto_1f
    return-void

    .line 1265
    .restart local v0       #ch:I
    :cond_20
    add-int/lit8 v3, v4, 0x1

    .end local v4           #outputPtr:I
    .restart local v3       #outputPtr:I
    int-to-byte v5, v0

    aput-byte v5, v2, v4

    .line 1266
    add-int/lit8 p2, p2, 0x1

    move v4, v3

    .line 1267
    .end local v3           #outputPtr:I
    .restart local v4       #outputPtr:I
    goto :goto_8

    .line 1274
    .end local v0           #ch:I
    :cond_29
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_maximumNonEscapedChar:I

    if-nez v5, :cond_31

    .line 1275
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeStringSegment2([CII)V

    goto :goto_1f

    .line 1277
    :cond_31
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeStringSegmentASCII2([CII)V

    goto :goto_1f
.end method

.method private final _writeStringSegment2([CII)V
    .registers 13
    .parameter "cbuf"
    .parameter "offset"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1291
    iget v7, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    sub-int v8, p3, p2

    mul-int/lit8 v8, v8, 0x6

    add-int/2addr v7, v8

    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v7, v8, :cond_e

    .line 1292
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1295
    :cond_e
    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1297
    .local v5, outputPtr:I
    iget-object v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1298
    .local v4, outputBuffer:[B
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    .local v1, escCodes:[I
    move v6, v5

    .end local v5           #outputPtr:I
    .local v6, outputPtr:I
    move v3, p2

    .line 1300
    .end local p2
    .local v3, offset:I
    :goto_16
    if-ge v3, p3, :cond_63

    .line 1301
    add-int/lit8 p2, v3, 0x1

    .end local v3           #offset:I
    .restart local p2
    aget-char v0, p1, v3

    .line 1302
    .local v0, ch:I
    const/16 v7, 0x7f

    if-gt v0, v7, :cond_44

    .line 1303
    aget v7, v1, v0

    if-nez v7, :cond_2c

    .line 1304
    add-int/lit8 v5, v6, 0x1

    .end local v6           #outputPtr:I
    .restart local v5       #outputPtr:I
    int-to-byte v7, v0

    aput-byte v7, v4, v6

    move v6, v5

    .end local v5           #outputPtr:I
    .restart local v6       #outputPtr:I
    move v3, p2

    .line 1305
    .end local p2
    .restart local v3       #offset:I
    goto :goto_16

    .line 1307
    .end local v3           #offset:I
    .restart local p2
    :cond_2c
    aget v2, v1, v0

    .line 1308
    .local v2, escape:I
    if-lez v2, :cond_3d

    .line 1309
    add-int/lit8 v5, v6, 0x1

    .end local v6           #outputPtr:I
    .restart local v5       #outputPtr:I
    const/16 v7, 0x5c

    aput-byte v7, v4, v6

    .line 1310
    add-int/lit8 v6, v5, 0x1

    .end local v5           #outputPtr:I
    .restart local v6       #outputPtr:I
    int-to-byte v7, v2

    aput-byte v7, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #offset:I
    goto :goto_16

    .line 1313
    .end local v3           #offset:I
    .restart local p2
    :cond_3d
    invoke-direct {p0, v0, v6}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeGenericEscape(II)I

    move-result v5

    .end local v6           #outputPtr:I
    .restart local v5       #outputPtr:I
    move v6, v5

    .end local v5           #outputPtr:I
    .restart local v6       #outputPtr:I
    move v3, p2

    .line 1315
    .end local p2
    .restart local v3       #offset:I
    goto :goto_16

    .line 1317
    .end local v2           #escape:I
    .end local v3           #offset:I
    .restart local p2
    :cond_44
    const/16 v7, 0x7ff

    if-gt v0, v7, :cond_5e

    .line 1318
    add-int/lit8 v5, v6, 0x1

    .end local v6           #outputPtr:I
    .restart local v5       #outputPtr:I
    shr-int/lit8 v7, v0, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 1319
    add-int/lit8 v6, v5, 0x1

    .end local v5           #outputPtr:I
    .restart local v6       #outputPtr:I
    and-int/lit8 v7, v0, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    move v5, v6

    .end local v6           #outputPtr:I
    .restart local v5       #outputPtr:I
    :goto_5b
    move v6, v5

    .end local v5           #outputPtr:I
    .restart local v6       #outputPtr:I
    move v3, p2

    .line 1323
    .end local p2
    .restart local v3       #offset:I
    goto :goto_16

    .line 1321
    .end local v3           #offset:I
    .restart local p2
    :cond_5e
    invoke-direct {p0, v0, v6}, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputMultiByteChar(II)I

    move-result v5

    .end local v6           #outputPtr:I
    .restart local v5       #outputPtr:I
    goto :goto_5b

    .line 1324
    .end local v0           #ch:I
    .end local v5           #outputPtr:I
    .end local p2
    .restart local v3       #offset:I
    .restart local v6       #outputPtr:I
    :cond_63
    iput v6, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1325
    return-void
.end method

.method private final _writeStringSegmentASCII2([CII)V
    .registers 14
    .parameter "cbuf"
    .parameter "offset"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1345
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    sub-int v9, p3, p2

    mul-int/lit8 v9, v9, 0x6

    add-int/2addr v8, v9

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v8, v9, :cond_e

    .line 1346
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1349
    :cond_e
    iget v6, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1351
    .local v6, outputPtr:I
    iget-object v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1352
    .local v5, outputBuffer:[B
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    .line 1353
    .local v1, escCodes:[I
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_maximumNonEscapedChar:I

    .local v3, maxUnescaped:I
    move v7, v6

    .end local v6           #outputPtr:I
    .local v7, outputPtr:I
    move v4, p2

    .line 1355
    .end local p2
    .local v4, offset:I
    :goto_18
    if-ge v4, p3, :cond_6e

    .line 1356
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    aget-char v0, p1, v4

    .line 1357
    .local v0, ch:I
    const/16 v8, 0x7f

    if-gt v0, v8, :cond_46

    .line 1358
    aget v8, v1, v0

    if-nez v8, :cond_2e

    .line 1359
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outputPtr:I
    .restart local v6       #outputPtr:I
    int-to-byte v8, v0

    aput-byte v8, v5, v7

    move v7, v6

    .end local v6           #outputPtr:I
    .restart local v7       #outputPtr:I
    move v4, p2

    .line 1360
    .end local p2
    .restart local v4       #offset:I
    goto :goto_18

    .line 1362
    .end local v4           #offset:I
    .restart local p2
    :cond_2e
    aget v2, v1, v0

    .line 1363
    .local v2, escape:I
    if-lez v2, :cond_3f

    .line 1364
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outputPtr:I
    .restart local v6       #outputPtr:I
    const/16 v8, 0x5c

    aput-byte v8, v5, v7

    .line 1365
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outputPtr:I
    .restart local v7       #outputPtr:I
    int-to-byte v8, v2

    aput-byte v8, v5, v6

    move v4, p2

    .end local p2
    .restart local v4       #offset:I
    goto :goto_18

    .line 1368
    .end local v4           #offset:I
    .restart local p2
    :cond_3f
    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeGenericEscape(II)I

    move-result v6

    .end local v7           #outputPtr:I
    .restart local v6       #outputPtr:I
    move v7, v6

    .end local v6           #outputPtr:I
    .restart local v7       #outputPtr:I
    move v4, p2

    .line 1370
    .end local p2
    .restart local v4       #offset:I
    goto :goto_18

    .line 1372
    .end local v2           #escape:I
    .end local v4           #offset:I
    .restart local p2
    :cond_46
    if-le v0, v3, :cond_4f

    .line 1373
    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeGenericEscape(II)I

    move-result v6

    .end local v7           #outputPtr:I
    .restart local v6       #outputPtr:I
    move v7, v6

    .end local v6           #outputPtr:I
    .restart local v7       #outputPtr:I
    move v4, p2

    .line 1374
    .end local p2
    .restart local v4       #offset:I
    goto :goto_18

    .line 1376
    .end local v4           #offset:I
    .restart local p2
    :cond_4f
    const/16 v8, 0x7ff

    if-gt v0, v8, :cond_69

    .line 1377
    add-int/lit8 v6, v7, 0x1

    .end local v7           #outputPtr:I
    .restart local v6       #outputPtr:I
    shr-int/lit8 v8, v0, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 1378
    add-int/lit8 v7, v6, 0x1

    .end local v6           #outputPtr:I
    .restart local v7       #outputPtr:I
    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    move v6, v7

    .end local v7           #outputPtr:I
    .restart local v6       #outputPtr:I
    :goto_66
    move v7, v6

    .end local v6           #outputPtr:I
    .restart local v7       #outputPtr:I
    move v4, p2

    .line 1382
    .end local p2
    .restart local v4       #offset:I
    goto :goto_18

    .line 1380
    .end local v4           #offset:I
    .restart local p2
    :cond_69
    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputMultiByteChar(II)I

    move-result v6

    .end local v7           #outputPtr:I
    .restart local v6       #outputPtr:I
    goto :goto_66

    .line 1383
    .end local v0           #ch:I
    .end local v6           #outputPtr:I
    .end local p2
    .restart local v4       #offset:I
    .restart local v7       #outputPtr:I
    :cond_6e
    iput v7, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1384
    return-void
.end method

.method private final _writeStringSegments(Ljava/lang/String;)V
    .registers 9
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1198
    .local v1, left:I
    const/4 v3, 0x0

    .line 1199
    .local v3, offset:I
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    .line 1201
    .local v0, cbuf:[C
    :goto_8
    if-lez v1, :cond_25

    .line 1202
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1203
    .local v2, len:I
    add-int v4, v3, v2

    invoke-virtual {p1, v3, v4, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1204
    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr v4, v2

    iget v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v4, v5, :cond_1f

    .line 1205
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1207
    :cond_1f
    invoke-direct {p0, v0, v6, v2}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeStringSegment([CII)V

    .line 1208
    add-int/2addr v3, v2

    .line 1209
    sub-int/2addr v1, v2

    .line 1210
    goto :goto_8

    .line 1211
    .end local v2           #len:I
    :cond_25
    return-void
.end method

.method private final _writeStringSegments([CII)V
    .registers 7
    .parameter "cbuf"
    .parameter "offset"
    .parameter "totalLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1223
    :cond_0
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1224
    .local v0, len:I
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v1, v2, :cond_10

    .line 1225
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1227
    :cond_10
    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeStringSegment([CII)V

    .line 1228
    add-int/2addr p2, v0

    .line 1229
    sub-int/2addr p3, v0

    .line 1230
    if-gtz p3, :cond_0

    .line 1231
    return-void
.end method


# virtual methods
.method protected final _decodeSurrogate(II)I
    .registers 8
    .parameter "surr1"
    .parameter "surr2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v4, 0xdc00

    .line 1698
    if-lt p2, v4, :cond_a

    const v2, 0xdfff

    if-le p2, v2, :cond_32

    .line 1699
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incomplete surrogate pair: first char 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", second 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1700
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_reportError(Ljava/lang/String;)V

    .line 1702
    .end local v1           #msg:Ljava/lang/String;
    :cond_32
    const/high16 v2, 0x1

    const v3, 0xd800

    sub-int v3, p1, v3

    shl-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    sub-int v3, p2, v4

    add-int v0, v2, v3

    .line 1703
    .local v0, c:I
    return v0
.end method

.method protected final _flushBuffer()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1743
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1744
    .local v0, len:I
    if-lez v0, :cond_e

    .line 1745
    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 1746
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1748
    :cond_e
    return-void
.end method

.method protected final _outputSurrogates(II)V
    .registers 7
    .parameter "surr1"
    .parameter "surr2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1655
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/impl/Utf8Generator;->_decodeSurrogate(II)I

    move-result v1

    .line 1656
    .local v1, c:I
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v2, v3, :cond_f

    .line 1657
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1659
    :cond_f
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1660
    .local v0, bbuf:[B
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v3, v1, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1661
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1662
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1663
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    and-int/lit8 v3, v1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1664
    return-void
.end method

.method protected _releaseBuffers()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1134
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1135
    .local v0, buf:[B
    if-eqz v0, :cond_10

    iget-boolean v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_bufferRecyclable:Z

    if-eqz v2, :cond_10

    .line 1136
    iput-object v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 1137
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseWriteEncodingBuffer([B)V

    .line 1139
    :cond_10
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    .line 1140
    .local v1, cbuf:[C
    if-eqz v1, :cond_1b

    .line 1141
    iput-object v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    .line 1142
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/io/IOContext;->releaseConcatBuffer([C)V

    .line 1144
    :cond_1b
    return-void
.end method

.method protected final _verifyPrettyValueWrite(Ljava/lang/String;I)V
    .registers 4
    .parameter "typeMsg"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1048
    packed-switch p2, :pswitch_data_36

    .line 1067
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_cantHappen()V

    .line 1070
    :cond_6
    :goto_6
    return-void

    .line 1050
    :pswitch_7
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeArrayValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_6

    .line 1053
    :pswitch_d
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeObjectFieldValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_6

    .line 1056
    :pswitch_13
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeRootValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_6

    .line 1060
    :pswitch_19
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1061
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->beforeArrayValues(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_6

    .line 1062
    :cond_27
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1063
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_6

    .line 1048
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_19
        :pswitch_7
        :pswitch_d
        :pswitch_13
    .end packed-switch
.end method

.method protected final _verifyValueWrite(Ljava/lang/String;)V
    .registers 6
    .parameter "typeMsg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 1013
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v2}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeValue()I

    move-result v1

    .line 1014
    .local v1, status:I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_25

    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expecting field name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8Generator;->_reportError(Ljava/lang/String;)V

    .line 1017
    :cond_25
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-nez v2, :cond_4b

    .line 1019
    packed-switch v1, :pswitch_data_50

    .line 1042
    :goto_2c
    return-void

    .line 1021
    :pswitch_2d
    const/16 v0, 0x2c

    .line 1033
    .local v0, b:B
    :goto_2f
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v2, v3, :cond_38

    .line 1034
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1036
    :cond_38
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v0, v2, v3

    .line 1037
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    goto :goto_2c

    .line 1024
    .end local v0           #b:B
    :pswitch_45
    const/16 v0, 0x3a

    .line 1025
    .restart local v0       #b:B
    goto :goto_2f

    .line 1027
    .end local v0           #b:B
    :pswitch_48
    const/16 v0, 0x20

    .line 1028
    .restart local v0       #b:B
    goto :goto_2f

    .line 1041
    .end local v0           #b:B
    :cond_4b
    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_verifyPrettyValueWrite(Ljava/lang/String;I)V

    goto :goto_2c

    .line 1019
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_45
        :pswitch_48
    .end packed-switch
.end method

.method protected final _writeFieldName(Ljava/lang/String;)V
    .registers 8
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 405
    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 406
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments(Ljava/lang/String;)V

    .line 435
    :goto_e
    return-void

    .line 409
    :cond_f
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v1, v2, :cond_18

    .line 410
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 412
    :cond_18
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v5, v1, v2

    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 415
    .local v0, len:I
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBufferLength:I

    if-gt v0, v1, :cond_5c

    .line 416
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    invoke-virtual {p1, v4, v0, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 418
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    if-gt v0, v1, :cond_56

    .line 419
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v1, v2, :cond_3d

    .line 420
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 422
    :cond_3d
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    invoke-direct {p0, v1, v4, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeStringSegment([CII)V

    .line 431
    :goto_42
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v1, v2, :cond_4b

    .line 432
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 434
    :cond_4b
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v5, v1, v2

    goto :goto_e

    .line 424
    :cond_56
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    invoke-direct {p0, v1, v4, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments([CII)V

    goto :goto_42

    .line 427
    :cond_5c
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments(Ljava/lang/String;)V

    goto :goto_42
.end method

.method protected final _writePPFieldName(Ljava/lang/String;Z)V
    .registers 9
    .parameter "name"
    .parameter "commaBefore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 472
    if-eqz p2, :cond_59

    .line 473
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v1, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeObjectEntrySeparator(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 478
    :goto_a
    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 479
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v1, v2, :cond_1b

    .line 480
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 482
    :cond_1b
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v5, v1, v2

    .line 483
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 484
    .local v0, len:I
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBufferLength:I

    if-gt v0, v1, :cond_65

    .line 485
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    invoke-virtual {p1, v4, v0, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 487
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    if-gt v0, v1, :cond_5f

    .line 488
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v1, v2, :cond_40

    .line 489
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 491
    :cond_40
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    invoke-direct {p0, v1, v4, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeStringSegment([CII)V

    .line 498
    :goto_45
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v1, v2, :cond_4e

    .line 499
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 501
    :cond_4e
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v5, v1, v2

    .line 505
    .end local v0           #len:I
    :goto_58
    return-void

    .line 475
    :cond_59
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v1, p0}, Lorg/codehaus/jackson/PrettyPrinter;->beforeObjectEntries(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_a

    .line 493
    .restart local v0       #len:I
    :cond_5f
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    invoke-direct {p0, v1, v4, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments([CII)V

    goto :goto_45

    .line 496
    :cond_65
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments(Ljava/lang/String;)V

    goto :goto_45

    .line 503
    .end local v0           #len:I
    :cond_69
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeStringSegments(Ljava/lang/String;)V

    goto :goto_58
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1094
    invoke-super {p0}, Lorg/codehaus/jackson/impl/JsonGeneratorBase;->close()V

    .line 1100
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    if-eqz v1, :cond_27

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1103
    :goto_f
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->getOutputContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    .line 1104
    .local v0, ctxt:Lorg/codehaus/jackson/JsonStreamContext;
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1105
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->writeEndArray()V

    goto :goto_f

    .line 1106
    :cond_1d
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonStreamContext;->inObject()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1107
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->writeEndObject()V

    goto :goto_f

    .line 1113
    .end local v0           #ctxt:Lorg/codehaus/jackson/JsonStreamContext;
    :cond_27
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1121
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_ioContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/io/IOContext;->isResourceManaged()Z

    move-result v1

    if-nez v1, :cond_3a

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1122
    :cond_3a
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1128
    :goto_3f
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_releaseBuffers()V

    .line 1129
    return-void

    .line 1125
    :cond_43
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    goto :goto_3f
.end method

.method public final flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1082
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 1083
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_14

    .line 1084
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1085
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1088
    :cond_14
    return-void
.end method

.method public setCharacterEscapes(Lorg/codehaus/jackson/io/CharacterEscapes;)Lorg/codehaus/jackson/JsonGenerator;
    .registers 3
    .parameter "esc"

    .prologue
    .line 223
    iput-object p1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_characterEscapes:Lorg/codehaus/jackson/io/CharacterEscapes;

    .line 224
    if-nez p1, :cond_9

    .line 225
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->sOutputEscapes:[I

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    .line 229
    :goto_8
    return-object p0

    .line 227
    :cond_9
    invoke-virtual {p1}, Lorg/codehaus/jackson/io/CharacterEscapes;->getEscapeCodesForAscii()[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEscapes:[I

    goto :goto_8
.end method

.method public setHighestNonEscapedChar(I)Lorg/codehaus/jackson/JsonGenerator;
    .registers 2
    .parameter "charCode"

    .prologue
    .line 211
    if-gez p1, :cond_3

    const/4 p1, 0x0

    .end local p1
    :cond_3
    iput p1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_maximumNonEscapedChar:I

    .line 212
    return-object p0
.end method

.method public writeBoolean(Z)V
    .registers 7
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 985
    const-string v2, "write boolean value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 986
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v2, v3, :cond_10

    .line 987
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 989
    :cond_10
    if-eqz p1, :cond_23

    sget-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->TRUE_BYTES:[B

    .line 990
    .local v0, keyword:[B
    :goto_14
    array-length v1, v0

    .line 991
    .local v1, len:I
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 992
    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    .line 993
    return-void

    .line 989
    .end local v0           #keyword:[B
    .end local v1           #len:I
    :cond_23
    sget-object v0, Lorg/codehaus/jackson/impl/Utf8Generator;->FALSE_BYTES:[B

    goto :goto_14
.end method

.method public final writeEndArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_24

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_reportError(Ljava/lang/String;)V

    .line 356
    :cond_24
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_3c

    .line 357
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->writeEndArray(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 364
    :goto_33
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 365
    return-void

    .line 359
    :cond_3c
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_45

    .line 360
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 362
    :cond_45
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    goto :goto_33
.end method

.method public final writeEndObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_24

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_reportError(Ljava/lang/String;)V

    .line 388
    :cond_24
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getParent()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 389
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_3c

    .line 390
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->getEntryCount()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/PrettyPrinter;->writeEndObject(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 397
    :goto_3b
    return-void

    .line 392
    :cond_3c
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_45

    .line 393
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 395
    :cond_45
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    goto :goto_3b
.end method

.method public final writeFieldName(Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 268
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/impl/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I

    move-result v0

    .line 269
    .local v0, status:I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_f

    .line 270
    const-string v2, "Can not write a field name, expecting a value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/impl/Utf8Generator;->_reportError(Ljava/lang/String;)V

    .line 272
    :cond_f
    iget-object v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v2, :cond_1b

    .line 273
    if-ne v0, v1, :cond_19

    :goto_15
    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writePPFieldName(Ljava/lang/String;Z)V

    .line 283
    :goto_18
    return-void

    .line 273
    :cond_19
    const/4 v1, 0x0

    goto :goto_15

    .line 276
    :cond_1b
    if-ne v0, v1, :cond_32

    .line 277
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v1, v2, :cond_26

    .line 278
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 280
    :cond_26
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v3, 0x2c

    aput-byte v3, v1, v2

    .line 282
    :cond_32
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeFieldName(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public writeNull()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 999
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 1000
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeNull()V

    .line 1001
    return-void
.end method

.method public writeNumber(D)V
    .registers 4
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 913
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_18

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 917
    :cond_18
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->writeString(Ljava/lang/String;)V

    .line 923
    :goto_1f
    return-void

    .line 921
    :cond_20
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 922
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->writeRaw(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public writeNumber(F)V
    .registers 3
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 929
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgNumbersAsStrings:Z

    if-nez v0, :cond_18

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->isEnabled(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 933
    :cond_18
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->writeString(Ljava/lang/String;)V

    .line 939
    :goto_1f
    return-void

    .line 937
    :cond_20
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 938
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->writeRaw(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public writeNumber(I)V
    .registers 4
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 848
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 850
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_10

    .line 851
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 853
    :cond_10
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_18

    .line 854
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeQuotedInt(I)V

    .line 858
    :goto_17
    return-void

    .line 857
    :cond_18
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->outputInt(I[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    goto :goto_17
.end method

.method public writeNumber(J)V
    .registers 5
    .parameter "l"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 873
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 874
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_d

    .line 875
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeQuotedLong(J)V

    .line 883
    :goto_c
    return-void

    .line 878
    :cond_d
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_18

    .line 880
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 882
    :cond_18
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->outputLong(J[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    goto :goto_c
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 946
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 947
    if-nez p1, :cond_b

    .line 948
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeNull()V

    .line 954
    :goto_a
    return-void

    .line 949
    :cond_b
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_13

    .line 950
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_a

    .line 952
    :cond_13
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->writeRaw(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 898
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 899
    if-nez p1, :cond_b

    .line 900
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeNull()V

    .line 906
    :goto_a
    return-void

    .line 901
    :cond_b
    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgNumbersAsStrings:Z

    if-eqz v0, :cond_13

    .line 902
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeQuotedRaw(Ljava/lang/Object;)V

    goto :goto_a

    .line 904
    :cond_13
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->writeRaw(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public writeRaw(C)V
    .registers 6
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 760
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v1, v1, 0x3

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v1, v2, :cond_c

    .line 761
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 763
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    .line 764
    .local v0, bbuf:[B
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1c

    .line 765
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 772
    :goto_1b
    return-void

    .line 766
    :cond_1c
    const/16 v1, 0x800

    if-ge p1, v1, :cond_3b

    .line 767
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v2, p1, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 768
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1b

    .line 770
    :cond_3b
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v3, v3}, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputRawMultiByteChar(I[CII)I

    goto :goto_1b
.end method

.method public writeRaw(Ljava/lang/String;)V
    .registers 9
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 684
    const/4 v4, 0x0

    .line 685
    .local v4, start:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 686
    .local v2, len:I
    :goto_6
    if-lez v2, :cond_1b

    .line 687
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    .line 688
    .local v1, buf:[C
    array-length v0, v1

    .line 689
    .local v0, blen:I
    if-ge v2, v0, :cond_19

    move v3, v2

    .line 690
    .local v3, len2:I
    :goto_e
    add-int v5, v4, v3

    invoke-virtual {p1, v4, v5, v1, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 691
    invoke-virtual {p0, v1, v6, v3}, Lorg/codehaus/jackson/impl/Utf8Generator;->writeRaw([CII)V

    .line 692
    add-int/2addr v4, v3

    .line 693
    sub-int/2addr v2, v3

    .line 694
    goto :goto_6

    .end local v3           #len2:I
    :cond_19
    move v3, v0

    .line 689
    goto :goto_e

    .line 695
    .end local v0           #blen:I
    .end local v1           #buf:[C
    :cond_1b
    return-void
.end method

.method public final writeRaw([CII)V
    .registers 10
    .parameter "cbuf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 719
    add-int v3, p3, p3

    add-int v1, v3, p3

    .line 720
    .local v1, len3:I
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr v3, v1

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v3, v4, :cond_16

    .line 722
    iget v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-ge v3, v1, :cond_13

    .line 723
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeSegmentedRaw([CII)V

    .line 754
    :cond_12
    :goto_12
    return-void

    .line 727
    :cond_13
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 730
    :cond_16
    add-int/2addr p3, p2

    .line 734
    :goto_17
    if-ge p2, p3, :cond_12

    .line 737
    :cond_19
    aget-char v0, p1, p2

    .line 738
    .local v0, ch:I
    const/16 v3, 0x7f

    if-le v0, v3, :cond_47

    .line 746
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .local v2, offset:I
    aget-char v0, p1, p2

    .line 747
    .local v0, ch:C
    const/16 v3, 0x800

    if-ge v0, v3, :cond_57

    .line 748
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 749
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    :goto_45
    move p2, v2

    .line 753
    .end local v2           #offset:I
    .restart local p2
    goto :goto_17

    .line 741
    .local v0, ch:I
    :cond_47
    iget-object v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 742
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_19

    goto :goto_12

    .line 751
    .end local p2
    .local v0, ch:C
    .restart local v2       #offset:I
    :cond_57
    invoke-direct {p0, v0, p1, v2, p3}, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputRawMultiByteChar(I[CII)I

    goto :goto_45
.end method

.method public final writeStartArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 338
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildArrayContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 340
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_17

    .line 341
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeStartArray(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 348
    :goto_16
    return-void

    .line 343
    :cond_17
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_20

    .line 344
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 346
    :cond_20
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    goto :goto_16
.end method

.method public final writeStartObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 370
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonWriteContext;->createChildObjectContext()Lorg/codehaus/jackson/impl/JsonWriteContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeContext:Lorg/codehaus/jackson/impl/JsonWriteContext;

    .line 372
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    if-eqz v0, :cond_17

    .line 373
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_cfgPrettyPrinter:Lorg/codehaus/jackson/PrettyPrinter;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/PrettyPrinter;->writeStartObject(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 380
    :goto_16
    return-void

    .line 375
    :cond_17
    iget v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-lt v0, v1, :cond_20

    .line 376
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 378
    :cond_20
    iget-object v0, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    goto :goto_16
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 8
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x22

    const/4 v4, 0x0

    .line 542
    const-string v1, "write text value"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_verifyValueWrite(Ljava/lang/String;)V

    .line 543
    if-nez p1, :cond_e

    .line 544
    invoke-direct {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeNull()V

    .line 566
    :goto_d
    return-void

    .line 548
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 549
    .local v0, len:I
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBufferLength:I

    if-le v0, v1, :cond_1a

    .line 550
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeLongString(Ljava/lang/String;)V

    goto :goto_d

    .line 554
    :cond_1a
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    invoke-virtual {p1, v4, v0, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 556
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputMaxContiguous:I

    if-le v0, v1, :cond_29

    .line 557
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    invoke-direct {p0, v1, v4, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeLongString([CII)V

    goto :goto_d

    .line 560
    :cond_29
    iget v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputEnd:I

    if-le v1, v2, :cond_35

    .line 561
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_flushBuffer()V

    .line 563
    :cond_35
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v5, v1, v2

    .line 564
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_charBuffer:[C

    invoke-direct {p0, v1, v4, v0}, Lorg/codehaus/jackson/impl/Utf8Generator;->_writeStringSegment([CII)V

    .line 565
    iget-object v1, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/impl/Utf8Generator;->_outputTail:I

    aput-byte v5, v1, v2

    goto :goto_d
.end method
