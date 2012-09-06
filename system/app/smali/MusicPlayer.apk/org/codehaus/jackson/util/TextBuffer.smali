.class public final Lorg/codehaus/jackson/util/TextBuffer;
.super Ljava/lang/Object;
.source "TextBuffer.java"


# static fields
.field static final NO_CHARS:[C


# instance fields
.field private final _allocator:Lorg/codehaus/jackson/util/BufferRecycler;

.field private _currentSegment:[C

.field private _currentSize:I

.field private _hasSegments:Z

.field private _inputBuffer:[C

.field private _inputLen:I

.field private _inputStart:I

.field private _resultArray:[C

.field private _resultString:Ljava/lang/String;

.field private _segmentSize:I

.field private _segments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lorg/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;)V
    .registers 3
    .parameter "allocator"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 115
    iput-object p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_allocator:Lorg/codehaus/jackson/util/BufferRecycler;

    .line 116
    return-void
.end method

.method private final _charArray(I)[C
    .registers 3
    .parameter "len"

    .prologue
    .line 632
    new-array v0, p1, [C

    return-object v0
.end method

.method private buildResultArray()[C
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 598
    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-eqz v7, :cond_d

    .line 599
    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 628
    :goto_c
    return-object v5

    .line 604
    :cond_d
    iget v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v7, :cond_28

    .line 605
    iget v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    if-ge v7, v8, :cond_18

    .line 606
    sget-object v5, Lorg/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    goto :goto_c

    .line 608
    :cond_18
    iget v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {p0, v7}, Lorg/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v5

    .line 609
    .local v5, result:[C
    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v8, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v9, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-static {v7, v8, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    .line 612
    .end local v5           #result:[C
    :cond_28
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->size()I

    move-result v6

    .line 613
    .local v6, size:I
    if-ge v6, v8, :cond_31

    .line 614
    sget-object v5, Lorg/codehaus/jackson/util/TextBuffer;->NO_CHARS:[C

    goto :goto_c

    .line 616
    :cond_31
    const/4 v4, 0x0

    .line 617
    .local v4, offset:I
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v5

    .line 618
    .restart local v5       #result:[C
    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v7, :cond_56

    .line 619
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, len:I
    :goto_41
    if-ge v2, v3, :cond_56

    .line 620
    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [C

    move-object v0, v7

    check-cast v0, [C

    .line 621
    .local v0, curr:[C
    array-length v1, v0

    .line 622
    .local v1, currLen:I
    invoke-static {v0, v10, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    add-int/2addr v4, v1

    .line 619
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 626
    .end local v0           #curr:[C
    .end local v1           #currLen:I
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_56
    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    iget v8, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {v7, v10, v5, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c
.end method

.method private final clearSegments()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 212
    iput-boolean v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 220
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iput v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 222
    return-void
.end method

.method private expand(I)V
    .registers 7
    .parameter "minNewSegmentSize"

    .prologue
    .line 578
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v3, :cond_b

    .line 579
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 581
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 582
    .local v0, curr:[C
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 583
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    array-length v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 585
    array-length v1, v0

    .line 587
    .local v1, oldLen:I
    shr-int/lit8 v2, v1, 0x1

    .line 588
    .local v2, sizeAddition:I
    if-ge v2, p1, :cond_21

    .line 589
    move v2, p1

    .line 591
    :cond_21
    const/high16 v3, 0x4

    add-int v4, v1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v0

    .line 592
    const/4 v3, 0x0

    iput v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 593
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 594
    return-void
.end method

.method private final findBuffer(I)[C
    .registers 4
    .parameter "needed"

    .prologue
    .line 207
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_allocator:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    return-object v0
.end method

.method private unshare(I)V
    .registers 8
    .parameter "needExtra"

    .prologue
    const/4 v5, 0x0

    .line 552
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 553
    .local v2, sharedLen:I
    iput v5, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 554
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 555
    .local v0, inputBuf:[C
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 556
    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 557
    .local v3, start:I
    const/4 v4, -0x1

    iput v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 560
    add-int v1, v2, p1

    .line 561
    .local v1, needed:I
    iget-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    array-length v4, v4

    if-le v1, v4, :cond_20

    .line 562
    :cond_1a
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v4

    iput-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 564
    :cond_20
    if-lez v2, :cond_27

    .line 565
    iget-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-static {v0, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 567
    :cond_27
    iput v5, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 568
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 569
    return-void
.end method


# virtual methods
.method public append([CII)V
    .registers 8
    .parameter "c"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 386
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v2, :cond_8

    .line 387
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 389
    :cond_8
    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 390
    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 393
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 394
    .local v0, curr:[C
    array-length v2, v0

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    sub-int v1, v2, v3

    .line 396
    .local v1, max:I
    if-lt v1, p3, :cond_20

    .line 397
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 412
    :goto_1f
    return-void

    .line 401
    :cond_20
    if-lez v1, :cond_29

    .line 402
    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    add-int/2addr p2, v1

    .line 404
    sub-int/2addr p3, v1

    .line 408
    :cond_29
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->expand(I)V

    .line 409
    iget-object v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    iput p3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    goto :goto_1f
.end method

.method public contentsAsArray()[C
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 312
    .local v0, result:[C
    if-nez v0, :cond_a

    .line 313
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->buildResultArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 315
    :cond_a
    return-object v0
.end method

.method public contentsAsDecimal()Ljava/math/BigDecimal;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v0, :cond_c

    .line 327
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    .line 338
    :goto_b
    return-object v0

    .line 330
    :cond_c
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_1c

    .line 331
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_b

    .line 334
    :cond_1c
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    if-nez v0, :cond_2b

    .line 335
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_b

    .line 338
    :cond_2b
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_b
.end method

.method public contentsAsDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public contentsAsString()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 272
    iget-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    if-nez v6, :cond_12

    .line 274
    iget-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    if-eqz v6, :cond_15

    .line 275
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    iput-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 306
    :cond_12
    :goto_12
    iget-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    :goto_14
    return-object v6

    .line 278
    :cond_15
    iget v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v6, :cond_31

    .line 279
    iget v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_23

    .line 280
    const-string v6, ""

    iput-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_14

    .line 282
    :cond_23
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    iget v8, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    iget v9, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    iput-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_12

    .line 285
    :cond_31
    iget v5, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 286
    .local v5, segLen:I
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 288
    .local v1, currLen:I
    if-nez v5, :cond_46

    .line 289
    if-nez v1, :cond_3e

    const-string v6, ""

    :goto_3b
    iput-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_12

    :cond_3e
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-direct {v6, v7, v8, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3b

    .line 291
    :cond_46
    new-instance v4, Ljava/lang/StringBuilder;

    add-int v6, v5, v1

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 293
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-eqz v6, :cond_69

    .line 294
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, len:I
    :goto_58
    if-ge v2, v3, :cond_69

    .line 295
    iget-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 296
    .local v0, curr:[C
    array-length v6, v0

    invoke-virtual {v4, v0, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 300
    .end local v0           #curr:[C
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_69
    iget-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    iget v7, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    invoke-virtual {v4, v6, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    goto :goto_12
.end method

.method public emptyAndGetCurrentSegment()[C
    .registers 3

    .prologue
    .line 473
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    .line 474
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 475
    .local v0, curr:[C
    if-nez v0, :cond_e

    .line 476
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 478
    :cond_e
    return-object v0
.end method

.method public expandCurrentSegment()[C
    .registers 7

    .prologue
    const/high16 v5, 0x4

    const/4 v4, 0x0

    .line 513
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 515
    .local v0, curr:[C
    array-length v1, v0

    .line 517
    .local v1, len:I
    if-ne v1, v5, :cond_19

    const v2, 0x40001

    .line 519
    .local v2, newLen:I
    :goto_b
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 520
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-object v3

    .line 517
    .end local v2           #newLen:I
    :cond_19
    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v1

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_b
.end method

.method public finishCurrentSegment()[C
    .registers 6

    .prologue
    .line 491
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    if-nez v3, :cond_b

    .line 492
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    .line 494
    :cond_b
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    .line 495
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segments:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    array-length v2, v3

    .line 497
    .local v2, oldLen:I
    iget v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    .line 499
    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v3, v2

    const/high16 v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 500
    .local v1, newLen:I
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->_charArray(I)[C

    move-result-object v0

    .line 501
    .local v0, curr:[C
    const/4 v3, 0x0

    iput v3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 502
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 503
    return-object v0
.end method

.method public getCurrentSegment()[C
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 457
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v1, :cond_b

    .line 458
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/util/TextBuffer;->unshare(I)V

    .line 468
    :cond_8
    :goto_8
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    return-object v1

    .line 460
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 461
    .local v0, curr:[C
    if-nez v0, :cond_17

    .line 462
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_8

    .line 463
    :cond_17
    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    array-length v2, v0

    if-lt v1, v2, :cond_8

    .line 465
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/util/TextBuffer;->expand(I)V

    goto :goto_8
.end method

.method public getCurrentSegmentSize()I
    .registers 2

    .prologue
    .line 482
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    return v0
.end method

.method public getTextBuffer()[C
    .registers 2

    .prologue
    .line 253
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_7

    .line 254
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 261
    :goto_6
    return-object v0

    .line 257
    :cond_7
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-nez v0, :cond_e

    .line 258
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_6

    .line 261
    :cond_e
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsArray()[C

    move-result-object v0

    goto :goto_6
.end method

.method public getTextOffset()I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_7

    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public releaseBuffers()V
    .registers 4

    .prologue
    .line 129
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_allocator:Lorg/codehaus/jackson/util/BufferRecycler;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-eqz v1, :cond_17

    .line 131
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->resetWithEmpty()V

    .line 133
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 134
    .local v0, buf:[C
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    .line 135
    iget-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_allocator:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v2, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TEXT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 137
    .end local v0           #buf:[C
    :cond_17
    return-void
.end method

.method public resetWithCopy([CII)V
    .registers 7
    .parameter "buf"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 186
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 188
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 192
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_1c

    .line 193
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 197
    :cond_14
    :goto_14
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 198
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/util/TextBuffer;->append([CII)V

    .line 199
    return-void

    .line 194
    :cond_1c
    iget-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    if-nez v0, :cond_14

    .line 195
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/TextBuffer;->findBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSegment:[C

    goto :goto_14
.end method

.method public resetWithEmpty()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 147
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 149
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 150
    iput-object v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 153
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_14

    .line 154
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 156
    :cond_14
    iput v2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 157
    return-void
.end method

.method public resetWithShared([CII)V
    .registers 5
    .parameter "buf"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultString:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_resultArray:[C

    .line 172
    iput-object p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputBuffer:[C

    .line 173
    iput p2, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    .line 174
    iput p3, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 177
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_hasSegments:Z

    if-eqz v0, :cond_12

    .line 178
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TextBuffer;->clearSegments()V

    .line 180
    :cond_12
    return-void
.end method

.method public setCurrentLength(I)V
    .registers 2
    .parameter "len"

    .prologue
    .line 486
    iput p1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    .line 487
    return-void
.end method

.method public size()I
    .registers 3

    .prologue
    .line 234
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputStart:I

    if-ltz v0, :cond_7

    .line 235
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_inputLen:I

    .line 238
    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lorg/codehaus/jackson/util/TextBuffer;->_segmentSize:I

    iget v1, p0, Lorg/codehaus/jackson/util/TextBuffer;->_currentSize:I

    add-int/2addr v0, v1

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
