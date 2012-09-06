.class public abstract Lorg/codehaus/jackson/impl/JsonNumericParserBase;
.super Lorg/codehaus/jackson/impl/JsonParserBase;
.source "JsonNumericParserBase.java"


# static fields
.field static final BD_MAX_INT:Ljava/math/BigDecimal;

.field static final BD_MAX_LONG:Ljava/math/BigDecimal;

.field static final BD_MIN_INT:Ljava/math/BigDecimal;

.field static final BD_MIN_LONG:Ljava/math/BigDecimal;


# instance fields
.field protected _numTypesValid:I

.field protected _numberBigDecimal:Ljava/math/BigDecimal;

.field protected _numberBigInt:Ljava/math/BigInteger;

.field protected _numberDouble:D

.field protected _numberInt:I

.field protected _numberLong:J

.field protected _numberNegative:Z

.field protected mExpLength:I

.field protected mFractLength:I

.field protected mIntLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const-wide v3, 0x7fffffffffffffffL

    const-wide/high16 v1, -0x8000

    .line 42
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->BD_MIN_LONG:Ljava/math/BigDecimal;

    .line 43
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->BD_MAX_LONG:Ljava/math/BigDecimal;

    .line 45
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;

    .line 46
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;I)V
    .registers 4
    .parameter "ctxt"
    .parameter "features"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/impl/JsonParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;I)V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    .line 145
    return-void
.end method


# virtual methods
.method protected convertNumberToDouble()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 513
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_15

    .line 514
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    .line 525
    :goto_e
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    .line 526
    return-void

    .line 515
    :cond_15
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_24

    .line 516
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    goto :goto_e

    .line 517
    :cond_24
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_30

    .line 518
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    goto :goto_e

    .line 519
    :cond_30
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3c

    .line 520
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    goto :goto_e

    .line 522
    :cond_3c
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_throwInternal()V

    goto :goto_e
.end method

.method protected convertNumberToInt()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 430
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_39

    .line 432
    iget-wide v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    long-to-int v0, v1

    .line 433
    .local v0, result:I
    int-to-long v1, v0

    iget-wide v3, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_30

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V

    .line 436
    :cond_30
    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    .line 456
    .end local v0           #result:I
    :goto_32
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    .line 457
    return-void

    .line 437
    :cond_39
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_48

    .line 439
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    goto :goto_32

    .line 440
    :cond_48
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6a

    .line 442
    iget-wide v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    const-wide/high16 v3, -0x3e20

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_61

    iget-wide v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    const-wide v3, 0x41dfffffffc00000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_64

    .line 443
    :cond_61
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->reportOverflowInt()V

    .line 445
    :cond_64
    iget-wide v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    double-to-int v1, v1

    iput v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    goto :goto_32

    .line 446
    :cond_6a
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_90

    .line 447
    sget-object v1, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->BD_MIN_INT:Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gtz v1, :cond_84

    sget-object v1, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->BD_MAX_INT:Ljava/math/BigDecimal;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_87

    .line 449
    :cond_84
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->reportOverflowInt()V

    .line 451
    :cond_87
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    iput v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    goto :goto_32

    .line 453
    :cond_90
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_throwInternal()V

    goto :goto_32
.end method

.method public getDoubleValue()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 297
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_18

    .line 298
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    if-nez v0, :cond_f

    .line 299
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V

    .line 301
    :cond_f
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_18

    .line 302
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->convertNumberToDouble()V

    .line 305
    :cond_18
    iget-wide v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    return-wide v0
.end method

.method public getFloatValue()F
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->getDoubleValue()D

    move-result-wide v0

    .line 291
    .local v0, value:D
    double-to-float v2, v0

    return v2
.end method

.method public getIntValue()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 240
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_17

    .line 241
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    if-nez v0, :cond_e

    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->parseNumericValue(I)V

    .line 244
    :cond_e
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_17

    .line 245
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->convertNumberToInt()V

    .line 248
    :cond_17
    iget v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    return v0
.end method

.method protected final parseNumericValue(I)V
    .registers 13
    .parameter "expType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x10

    .line 342
    iget-object v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v8}, Lorg/codehaus/jackson/JsonToken;->isNumeric()Z

    move-result v8

    if-nez v8, :cond_2c

    .line 343
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current token ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V

    .line 347
    :cond_2c
    :try_start_2c
    iget-object v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v9, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v8, v9, :cond_d7

    .line 348
    iget-object v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    .line 349
    .local v0, buf:[C
    iget-object v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->getTextOffset()I

    move-result v7

    .line 350
    .local v7, offset:I
    iget v4, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->mIntLength:I

    .line 351
    .local v4, len:I
    iget-boolean v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z

    if-eqz v8, :cond_46

    .line 352
    add-int/lit8 v7, v7, 0x1

    .line 354
    :cond_46
    const/16 v8, 0x9

    if-gt v4, v8, :cond_59

    .line 355
    invoke-static {v0, v7, v4}, Lorg/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v1

    .line 356
    .local v1, i:I
    iget-boolean v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z

    if-eqz v8, :cond_53

    neg-int v1, v1

    .end local v1           #i:I
    :cond_53
    iput v1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    .line 357
    const/4 v8, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    .line 418
    .end local v0           #buf:[C
    .end local v4           #len:I
    .end local v7           #offset:I
    :goto_58
    return-void

    .line 360
    .restart local v0       #buf:[C
    .restart local v4       #len:I
    .restart local v7       #offset:I
    :cond_59
    const/16 v8, 0x12

    if-gt v4, v8, :cond_b4

    .line 361
    invoke-static {v0, v7, v4}, Lorg/codehaus/jackson/io/NumberInput;->parseLong([CII)J

    move-result-wide v2

    .line 362
    .local v2, l:J
    iget-boolean v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z

    if-eqz v8, :cond_66

    .line 363
    neg-long v2, v2

    .line 366
    :cond_66
    const/16 v8, 0xa

    if-ne v4, v8, :cond_ae

    .line 367
    iget-boolean v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z

    if-eqz v8, :cond_a0

    .line 368
    const-wide/32 v8, -0x80000000

    cmp-long v8, v2, v8

    if-ltz v8, :cond_ae

    .line 369
    long-to-int v8, v2

    iput v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    .line 370
    const/4 v8, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_7b} :catch_7c

    goto :goto_58

    .line 414
    .end local v0           #buf:[C
    .end local v2           #l:J
    .end local v4           #len:I
    .end local v7           #offset:I
    :catch_7c
    move-exception v5

    .line 416
    .local v5, nex:Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Malformed numeric value \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v9}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_58

    .line 374
    .end local v5           #nex:Ljava/lang/NumberFormatException;
    .restart local v0       #buf:[C
    .restart local v2       #l:J
    .restart local v4       #len:I
    .restart local v7       #offset:I
    :cond_a0
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v2, v8

    if-gtz v8, :cond_ae

    .line 375
    long-to-int v8, v2

    :try_start_a8
    iput v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberInt:I

    .line 376
    const/4 v8, 0x1

    iput v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    goto :goto_58

    .line 381
    :cond_ae
    iput-wide v2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    .line 382
    const/4 v8, 0x2

    iput v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    goto :goto_58

    .line 385
    .end local v2           #l:J
    :cond_b4
    iget-object v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v6

    .line 387
    .local v6, numStr:Ljava/lang/String;
    iget-boolean v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z

    invoke-static {v0, v7, v4, v8}, Lorg/codehaus/jackson/io/NumberInput;->inLongRange([CIIZ)Z

    move-result v8

    if-eqz v8, :cond_cc

    .line 389
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberLong:J

    .line 390
    const/4 v8, 0x2

    iput v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    goto :goto_58

    .line 394
    :cond_cc
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigInt:Ljava/math/BigInteger;

    .line 395
    const/4 v8, 0x4

    iput v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    goto :goto_58

    .line 406
    .end local v0           #buf:[C
    .end local v4           #len:I
    .end local v6           #numStr:Ljava/lang/String;
    .end local v7           #offset:I
    :cond_d7
    if-ne p1, v10, :cond_e7

    .line 407
    iget-object v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsDecimal()Ljava/math/BigDecimal;

    move-result-object v8

    iput-object v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberBigDecimal:Ljava/math/BigDecimal;

    .line 408
    const/16 v8, 0x10

    iput v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    goto/16 :goto_58

    .line 411
    :cond_e7
    iget-object v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsDouble()D

    move-result-wide v8

    iput-wide v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberDouble:D

    .line 412
    const/16 v8, 0x8

    iput v8, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I
    :try_end_f3
    .catch Ljava/lang/NumberFormatException; {:try_start_a8 .. :try_end_f3} :catch_7c

    goto/16 :goto_58
.end method

.method protected reportInvalidNumber(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid numeric value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method protected reportOverflowInt()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of int ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method protected reportUnexpectedNumberChar(ILjava/lang/String;)V
    .registers 6
    .parameter "ch"
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in numeric value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, msg:Ljava/lang/String;
    if-eqz p2, :cond_36

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    :cond_36
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_reportError(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method protected final reset(ZIII)Lorg/codehaus/jackson/JsonToken;
    .registers 7
    .parameter "negative"
    .parameter "intLen"
    .parameter "fractLen"
    .parameter "expLen"

    .prologue
    const/4 v1, 0x1

    .line 149
    iput-boolean p1, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numberNegative:Z

    .line 150
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->mIntLength:I

    .line 151
    iput p3, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->mFractLength:I

    .line 152
    iput p4, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->mExpLength:I

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonNumericParserBase;->_numTypesValid:I

    .line 154
    if-ge p3, v1, :cond_13

    if-ge p4, v1, :cond_13

    .line 155
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    .line 158
    :goto_12
    return-object v0

    :cond_13
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    goto :goto_12
.end method
