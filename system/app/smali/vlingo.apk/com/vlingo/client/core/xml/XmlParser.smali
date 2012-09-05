.class public Lcom/vlingo/client/core/xml/XmlParser;
.super Ljava/lang/Object;
.source "XmlParser.java"


# static fields
.field private static final STATE_ADVANCE:I = 0x4

.field private static final STATE_ADVANCE_COMMENTS:I = 0x6

.field private static final STATE_BEGIN:I = 0x0

.field private static final STATE_DONE:I = 0x5

.field private static final STATE_IN_CDATA:I = 0x3

.field private static final STATE_IN_ELEMENT:I = 0x1

.field private static final maxEscapeLen:I = 0x6

.field private static final xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;


# instance fields
.field private attributeNameEnd:I

.field private attributeNameStart:I

.field private attributeValueEnd:I

.field private attributeValueStart:I

.field private attributes:Lcom/vlingo/client/core/xml/XmlAttributes;

.field protected cDataEnd:I

.field protected cDataStart:I

.field cStartElementEnd:I

.field private cachedAttributes:Lcom/vlingo/client/core/xml/XmlAttributes;

.field private cachedCData:[C

.field private cachedElementType:I

.field private checkCDataSpacing:Z

.field private checkEscapes:Z

.field private checkForEscapes_AttributeValues:Z

.field private checkForEscapes_CData:Z

.field private currentElementIsBegin:Z

.field private currentElementIsEnd:Z

.field private currentState:I

.field protected elementEnd:I

.field protected elementStart:I

.field protected endIndex:I

.field private handler:Lcom/vlingo/client/core/xml/XmlHandler;

.field protected index:I

.field private xml:[C

.field private xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

.field private xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 66
    invoke-static {}, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->createNewHashtable()Lcom/vlingo/client/core/util/ToIntHashtable;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/xml/XmlParser;->xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;

    .line 68
    sget-object v0, Lcom/vlingo/client/core/xml/XmlParser;->xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "quot"

    const/16 v2, 0x22

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 69
    sget-object v0, Lcom/vlingo/client/core/xml/XmlParser;->xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "amp"

    const/16 v2, 0x26

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 70
    sget-object v0, Lcom/vlingo/client/core/xml/XmlParser;->xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "apos"

    const/16 v2, 0x27

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 71
    sget-object v0, Lcom/vlingo/client/core/xml/XmlParser;->xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "lt"

    const/16 v2, 0x3c

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 72
    sget-object v0, Lcom/vlingo/client/core/xml/XmlParser;->xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "gt"

    const/16 v2, 0x3e

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 76
    sget-object v0, Lcom/vlingo/client/core/xml/XmlParser;->xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "nbsp"

    const/16 v2, 0x20

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 78
    sget-object v0, Lcom/vlingo/client/core/xml/XmlParser;->xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "excl"

    const/16 v2, 0x21

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 79
    sget-object v0, Lcom/vlingo/client/core/xml/XmlParser;->xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "sol"

    const/16 v2, 0x2f

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 80
    sget-object v0, Lcom/vlingo/client/core/xml/XmlParser;->xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "equals"

    const/16 v2, 0x3d

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 81
    sget-object v0, Lcom/vlingo/client/core/xml/XmlParser;->xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "lsqb"

    const/16 v2, 0x5b

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 82
    sget-object v0, Lcom/vlingo/client/core/xml/XmlParser;->xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "rsqb"

    const/16 v2, 0x5d

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 84
    sget-object v0, Lcom/vlingo/client/core/xml/XmlParser;->xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;

    const-string v1, "trade"

    const/16 v2, 0x2122

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/util/ToIntHashtable;->put(Ljava/lang/Object;I)I

    .line 85
    return-void
.end method

.method public constructor <init>([CIILcom/vlingo/client/core/xml/XmlHandler;Lcom/vlingo/client/core/util/ToIntHashtable;Lcom/vlingo/client/core/util/ToIntHashtable;ZZ)V
    .registers 12
    .parameter "xml"
    .parameter "offset"
    .parameter "length"
    .parameter "handler"
    .parameter "xmlElements"
    .parameter "xmlAttributes"
    .parameter "checkEscapes"
    .parameter "checkCDataSpacing"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->handler:Lcom/vlingo/client/core/xml/XmlHandler;

    .line 50
    iput-object v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    .line 51
    iput-object v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    .line 53
    iput-object v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributes:Lcom/vlingo/client/core/xml/XmlAttributes;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkEscapes:Z

    .line 59
    iput-boolean v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkForEscapes_AttributeValues:Z

    .line 60
    iput-boolean v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkForEscapes_CData:Z

    .line 61
    iput-boolean v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkCDataSpacing:Z

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->cachedElementType:I

    .line 92
    iput-object v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->cachedCData:[C

    .line 93
    iput-object v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->cachedAttributes:Lcom/vlingo/client/core/xml/XmlAttributes;

    .line 495
    iput v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->cStartElementEnd:I

    .line 97
    iput-object p1, p0, Lcom/vlingo/client/core/xml/XmlParser;->xml:[C

    .line 98
    iput p2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    .line 99
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->endIndex:I

    .line 100
    iput-object p4, p0, Lcom/vlingo/client/core/xml/XmlParser;->handler:Lcom/vlingo/client/core/xml/XmlHandler;

    .line 101
    iput-object p5, p0, Lcom/vlingo/client/core/xml/XmlParser;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    .line 102
    iput-boolean p7, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkEscapes:Z

    .line 103
    iput-boolean p8, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkCDataSpacing:Z

    .line 107
    iput v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentState:I

    .line 109
    if-nez p6, :cond_3a

    .line 110
    invoke-static {}, Lcom/vlingo/client/core/util/ToIntHashtableFactory;->createNewHashtable()Lcom/vlingo/client/core/util/ToIntHashtable;

    move-result-object p6

    .line 111
    :cond_3a
    iput-object p6, p0, Lcom/vlingo/client/core/xml/XmlParser;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    .line 115
    return-void
.end method

.method private static accountForEscapes(Ljava/util/Vector;[CII)[C
    .registers 14
    .parameter
    .parameter "data"
    .parameter "relOffset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;[CII)[C"
        }
    .end annotation

    .prologue
    .local p0, escapes:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Object;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 579
    const/4 v3, 0x0

    .line 584
    .local v3, newArray:[C
    invoke-static {p0, p3}, Lcom/vlingo/client/core/xml/XmlParser;->getEscapedArrayLength(Ljava/util/Vector;I)I

    move-result v5

    .line 585
    .local v5, newArrayLength:I
    new-array v3, v5, [C

    .line 586
    const/4 v4, 0x0

    .line 588
    .local v4, newArrayIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_38

    .line 589
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    move-object v0, v6

    check-cast v0, [I

    .line 593
    .local v0, escape:[I
    aget v6, v0, v8

    sub-int/2addr v6, p2

    invoke-static {p1, p2, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    aget v6, v0, v8

    sub-int/2addr v6, p2

    add-int/2addr v4, v6

    .line 597
    aget v6, v0, v8

    aget v7, v0, v9

    invoke-static {p1, v6, v7}, Lcom/vlingo/client/core/xml/XmlParser;->getEscapedByte([CII)C

    move-result v1

    .line 602
    .local v1, escapedByte:C
    aget v6, v0, v8

    aget v7, v0, v9

    add-int/2addr v6, v7

    add-int/lit8 p2, v6, -0x1

    .line 603
    aput-char v1, p1, p2

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 607
    .end local v0           #escape:[I
    .end local v1           #escapedByte:C
    :cond_38
    if-ge v4, v5, :cond_3f

    .line 609
    sub-int v6, v5, v4

    invoke-static {p1, p2, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 612
    :cond_3f
    return-object v3
.end method

.method private addAttribute()V
    .registers 8

    .prologue
    .line 278
    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeNameStart:I

    if-ltz v4, :cond_8

    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeNameEnd:I

    if-gez v4, :cond_9

    .line 303
    :cond_8
    :goto_8
    return-void

    .line 282
    :cond_9
    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeNameEnd:I

    iget v5, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeNameStart:I

    sub-int v2, v4, v5

    .line 283
    .local v2, nameLen:I
    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeValueEnd:I

    iget v5, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeValueStart:I

    sub-int v3, v4, v5

    .line 287
    .local v3, valueLen:I
    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeValueStart:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1f

    .line 289
    const/4 v3, 0x0

    iput v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeValueStart:I

    iput v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeValueEnd:I

    .line 292
    :cond_1f
    iget-object v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributes:Lcom/vlingo/client/core/xml/XmlAttributes;

    if-nez v4, :cond_2c

    .line 293
    new-instance v4, Lcom/vlingo/client/core/xml/XmlAttributes;

    iget-object v5, p0, Lcom/vlingo/client/core/xml/XmlParser;->xmlAttributes:Lcom/vlingo/client/core/util/ToIntHashtable;

    invoke-direct {v4, v5}, Lcom/vlingo/client/core/xml/XmlAttributes;-><init>(Lcom/vlingo/client/core/util/ToIntHashtable;)V

    iput-object v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributes:Lcom/vlingo/client/core/xml/XmlAttributes;

    .line 295
    :cond_2c
    iget-object v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributes:Lcom/vlingo/client/core/xml/XmlAttributes;

    iget-object v5, p0, Lcom/vlingo/client/core/xml/XmlParser;->xml:[C

    iget v6, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeNameStart:I

    invoke-virtual {v4, v5, v6, v2}, Lcom/vlingo/client/core/xml/XmlAttributes;->getAttributeType([CII)B

    move-result v0

    .line 296
    .local v0, attributeType:B
    iget-object v5, p0, Lcom/vlingo/client/core/xml/XmlParser;->xml:[C

    iget v6, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeValueStart:I

    iget-boolean v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkEscapes:Z

    if-nez v4, :cond_42

    iget-boolean v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkForEscapes_AttributeValues:Z

    if-eqz v4, :cond_4d

    :cond_42
    const/4 v4, 0x1

    :goto_43
    invoke-static {v5, v6, v3, v4}, Lcom/vlingo/client/core/xml/XmlParser;->createString([CIIZ)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, attributeValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributes:Lcom/vlingo/client/core/xml/XmlAttributes;

    invoke-virtual {v4, v0, v1}, Lcom/vlingo/client/core/xml/XmlAttributes;->add(BLjava/lang/String;)V

    goto :goto_8

    .line 296
    .end local v1           #attributeValue:Ljava/lang/String;
    :cond_4d
    const/4 v4, 0x0

    goto :goto_43
.end method

.method private static addEscape(Ljava/util/Vector;II)Ljava/util/Vector;
    .registers 5
    .parameter
    .parameter "index"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;II)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, escapes:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Object;>;"
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 632
    .local v0, escape:[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 633
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 636
    if-nez p0, :cond_10

    .line 638
    new-instance p0, Ljava/util/Vector;

    .end local p0           #escapes:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 641
    .restart local p0       #escapes:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Object;>;"
    :cond_10
    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 643
    return-object p0
.end method

.method private advanceIndex()I
    .registers 5

    .prologue
    const/4 v1, 0x5

    .line 193
    :goto_1
    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iget v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->endIndex:I

    if-gt v2, v3, :cond_12

    .line 195
    iget-object v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->xml:[C

    iget v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    aget-char v0, v2, v3

    .line 196
    .local v0, b:C
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_13

    .line 197
    const/4 v1, 0x1

    .line 205
    .end local v0           #b:C
    :cond_12
    :goto_12
    return v1

    .line 198
    .restart local v0       #b:C
    :cond_13
    if-eqz v0, :cond_12

    .line 200
    const/16 v2, 0x20

    if-lt v0, v2, :cond_1b

    .line 201
    const/4 v1, 0x3

    goto :goto_12

    .line 203
    :cond_1b
    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    goto :goto_1
.end method

.method public static createByteArray([CIIZZ)[C
    .registers 11
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .parameter "checkEscapes"
    .parameter "bailOutIfNoEscapes"

    .prologue
    const/4 v5, -0x1

    .line 534
    const/4 v2, 0x0

    .line 537
    .local v2, escapes:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 539
    .local v3, newArray:[C
    if-eqz p3, :cond_2e

    .line 544
    move v0, p1

    .line 545
    .local v0, begEscapeIndex:I
    :cond_6
    :goto_6
    if-eq v0, v5, :cond_23

    .line 546
    invoke-static {p0, p1, p2, v0}, Lcom/vlingo/client/core/xml/XmlParser;->findBegEscape([CIII)I

    move-result v0

    .line 547
    if-eq v0, v5, :cond_6

    .line 549
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, p1, p2, v4}, Lcom/vlingo/client/core/xml/XmlParser;->findEndEscape([CIII)I

    move-result v1

    .line 550
    .local v1, endEscapeIndex:I
    if-eq v1, v5, :cond_20

    .line 552
    sub-int v4, v1, v0

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v0, v4}, Lcom/vlingo/client/core/xml/XmlParser;->addEscape(Ljava/util/Vector;II)Ljava/util/Vector;

    move-result-object v2

    .line 553
    move v0, v1

    goto :goto_6

    .line 555
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 561
    .end local v1           #endEscapeIndex:I
    :cond_23
    if-eqz v2, :cond_2a

    .line 562
    invoke-static {v2, p0, p1, p2}, Lcom/vlingo/client/core/xml/XmlParser;->accountForEscapes(Ljava/util/Vector;[CII)[C

    move-result-object v4

    .line 570
    .end local v0           #begEscapeIndex:I
    :goto_29
    return-object v4

    .line 563
    .restart local v0       #begEscapeIndex:I
    :cond_2a
    if-eqz p4, :cond_2e

    .line 564
    const/4 v4, 0x0

    goto :goto_29

    .line 568
    .end local v0           #begEscapeIndex:I
    :cond_2e
    new-array v3, p2, [C

    .line 569
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v3

    .line 570
    goto :goto_29
.end method

.method public static createString([CIIZ)Ljava/lang/String;
    .registers 6
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .parameter "checkEscapes"

    .prologue
    .line 517
    if-eqz p3, :cond_f

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, newArray:[C
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, p3, v1}, Lcom/vlingo/client/core/xml/XmlParser;->createByteArray([CIIZZ)[C

    move-result-object v0

    .line 520
    if-eqz v0, :cond_f

    .line 521
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 524
    .end local v0           #newArray:[C
    :goto_e
    return-object v1

    :cond_f
    invoke-static {p0, p1, p2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method private static findBegEscape([CIII)I
    .registers 9
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .parameter "start"

    .prologue
    const/4 v2, -0x1

    .line 671
    move v1, p3

    .line 672
    .local v1, i:I
    add-int v0, p1, p2

    .line 674
    .local v0, end:I
    if-lt p3, v0, :cond_9

    .line 683
    :cond_6
    :goto_6
    return v2

    .line 681
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 677
    :cond_9
    if-ge v1, v0, :cond_6

    .line 678
    aget-char v3, p0, v1

    const/16 v4, 0x26

    if-ne v3, v4, :cond_7

    move v2, v1

    .line 679
    goto :goto_6
.end method

.method private static findEndEscape([CIII)I
    .registers 9
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .parameter "start"

    .prologue
    const/4 v3, -0x1

    .line 648
    add-int v1, p1, p2

    .line 649
    .local v1, end:I
    move v2, p3

    .line 650
    .local v2, i:I
    const/4 v0, 0x0

    .line 652
    .local v0, count:I
    if-lt p3, v1, :cond_8

    .line 666
    :cond_7
    :goto_7
    :sswitch_7
    return v3

    .line 655
    :cond_8
    :goto_8
    if-ge v2, v1, :cond_7

    const/4 v4, 0x6

    if-ge v0, v4, :cond_7

    .line 656
    aget-char v4, p0, v2

    sparse-switch v4, :sswitch_data_1a

    .line 662
    add-int/lit8 v2, v2, 0x1

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :sswitch_17
    move v3, v2

    .line 658
    goto :goto_7

    .line 656
    nop

    :sswitch_data_1a
    .sparse-switch
        0x26 -> :sswitch_7
        0x3b -> :sswitch_17
    .end sparse-switch
.end method

.method private getElementCode([CII)I
    .registers 7
    .parameter "data"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 704
    const/4 v1, 0x0

    .line 705
    .local v1, elementType:I
    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, elementName:Ljava/lang/String;
    iget-object v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    invoke-interface {v2, v0}, Lcom/vlingo/client/core/util/ToIntHashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 709
    iget-object v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->xmlElements:Lcom/vlingo/client/core/util/ToIntHashtable;

    invoke-interface {v2, v0}, Lcom/vlingo/client/core/util/ToIntHashtable;->get(Ljava/lang/Object;)I

    move-result v1

    .line 712
    :cond_13
    return v1
.end method

.method private static getEscapedArrayLength(Ljava/util/Vector;I)I
    .registers 5
    .parameter
    .parameter "currentLen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 620
    .local p0, escapes:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 621
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 622
    .local v0, escape:[I
    const/4 v2, 0x1

    aget v2, v0, v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr p1, v2

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 626
    .end local v0           #escape:[I
    :cond_19
    return p1
.end method

.method private static getEscapedByte([CII)C
    .registers 8
    .parameter "data"
    .parameter "escapeStart"
    .parameter "escapeLen"

    .prologue
    .line 688
    const/16 v2, 0x20

    .line 689
    .local v2, escapedByte:C
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p2, -0x2

    invoke-static {p0, v3, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, escapeName:Ljava/lang/String;
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 693
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 694
    .local v0, escapeInt:I
    int-to-char v2, v0

    .line 699
    .end local v0           #escapeInt:I
    :cond_1c
    :goto_1c
    return v2

    .line 695
    :cond_1d
    sget-object v3, Lcom/vlingo/client/core/xml/XmlParser;->xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;

    invoke-interface {v3, v1}, Lcom/vlingo/client/core/util/ToIntHashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 696
    sget-object v3, Lcom/vlingo/client/core/xml/XmlParser;->xmlEscapes:Lcom/vlingo/client/core/util/ToIntHashtable;

    invoke-interface {v3, v1}, Lcom/vlingo/client/core/util/ToIntHashtable;->get(Ljava/lang/Object;)I

    move-result v3

    int-to-char v2, v3

    goto :goto_1c
.end method

.method private handleAttributes()V
    .registers 5

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, inQuotes:Z
    const/4 v1, 0x0

    .line 311
    .local v1, usingDoubleQuotes:Z
    invoke-direct {p0}, Lcom/vlingo/client/core/xml/XmlParser;->resetAttributeIndicies()V

    .line 313
    :goto_5
    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iget v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->endIndex:I

    if-gt v2, v3, :cond_66

    .line 316
    iget-object v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->xml:[C

    iget v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    aget-char v2, v2, v3

    sparse-switch v2, :sswitch_data_72

    .line 361
    :cond_14
    if-nez v0, :cond_67

    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeNameStart:I

    if-gez v2, :cond_67

    .line 362
    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iput v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeNameStart:I

    .line 372
    :cond_1e
    :goto_1e
    :sswitch_1e
    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    goto :goto_5

    .line 318
    :sswitch_25
    if-nez v0, :cond_1e

    .line 319
    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iput v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeNameEnd:I

    goto :goto_1e

    .line 328
    :sswitch_2c
    if-eqz v0, :cond_3c

    if-eqz v1, :cond_3c

    .line 329
    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iput v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeValueEnd:I

    .line 330
    invoke-direct {p0}, Lcom/vlingo/client/core/xml/XmlParser;->addAttribute()V

    .line 331
    invoke-direct {p0}, Lcom/vlingo/client/core/xml/XmlParser;->resetAttributeIndicies()V

    .line 332
    const/4 v0, 0x0

    goto :goto_1e

    .line 334
    :cond_3c
    if-eqz v0, :cond_40

    if-eqz v1, :cond_1e

    .line 335
    :cond_40
    const/4 v0, 0x1

    .line 336
    const/4 v1, 0x1

    goto :goto_1e

    .line 341
    :sswitch_43
    if-eqz v0, :cond_57

    if-nez v1, :cond_57

    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeValueStart:I

    if-lez v2, :cond_57

    .line 342
    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iput v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeValueEnd:I

    .line 343
    invoke-direct {p0}, Lcom/vlingo/client/core/xml/XmlParser;->addAttribute()V

    .line 344
    invoke-direct {p0}, Lcom/vlingo/client/core/xml/XmlParser;->resetAttributeIndicies()V

    .line 345
    const/4 v0, 0x0

    goto :goto_1e

    .line 347
    :cond_57
    if-eqz v0, :cond_5b

    if-nez v1, :cond_1e

    .line 348
    :cond_5b
    const/4 v0, 0x1

    .line 349
    const/4 v1, 0x0

    goto :goto_1e

    .line 355
    :sswitch_5e
    if-nez v0, :cond_14

    .line 356
    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    .line 374
    :cond_66
    return-void

    .line 365
    :cond_67
    if-eqz v0, :cond_1e

    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeValueStart:I

    if-gez v2, :cond_1e

    .line 366
    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iput v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeValueStart:I

    goto :goto_1e

    .line 316
    :sswitch_data_72
    .sparse-switch
        0x20 -> :sswitch_1e
        0x22 -> :sswitch_2c
        0x27 -> :sswitch_43
        0x2f -> :sswitch_5e
        0x3d -> :sswitch_25
        0x3e -> :sswitch_5e
    .end sparse-switch
.end method

.method private handleBegin()I
    .registers 3

    .prologue
    .line 156
    :goto_0
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iget v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->endIndex:I

    if-gt v0, v1, :cond_19

    .line 158
    iget-object v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->xml:[C

    iget v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_12

    .line 159
    const/4 v0, 0x1

    .line 163
    :goto_11
    return v0

    .line 161
    :cond_12
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    goto :goto_0

    .line 163
    :cond_19
    const/4 v0, 0x5

    goto :goto_11
.end method

.method private handleCData()I
    .registers 10

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x5

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 379
    const/4 v2, -0x1

    .line 380
    .local v2, lastSpaceIndex:I
    const/4 v1, 0x1

    .line 384
    .local v1, foundOnlyBlanks:Z
    iget-boolean v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkCDataSpacing:Z

    if-eqz v4, :cond_19

    .line 385
    :goto_b
    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iget v5, p0, Lcom/vlingo/client/core/xml/XmlParser;->endIndex:I

    if-gt v4, v5, :cond_19

    .line 388
    iget-object v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->xml:[C

    iget v5, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    aget-char v4, v4, v5

    if-le v4, v8, :cond_37

    .line 394
    :cond_19
    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iput v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->cDataEnd:I

    iput v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->cDataStart:I

    .line 397
    :goto_1f
    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iget v5, p0, Lcom/vlingo/client/core/xml/XmlParser;->endIndex:I

    if-gt v4, v5, :cond_56

    .line 399
    iget-object v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->xml:[C

    iget v5, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    aget-char v0, v4, v5

    .line 400
    .local v0, b:C
    sparse-switch v0, :sswitch_data_84

    .line 439
    const/4 v1, 0x0

    .line 440
    const/4 v2, -0x1

    .line 443
    :cond_30
    :goto_30
    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    goto :goto_1f

    .line 391
    .end local v0           #b:C
    :cond_37
    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    goto :goto_b

    .line 402
    .restart local v0       #b:C
    :sswitch_3e
    iget-boolean v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkCDataSpacing:Z

    if-eqz v3, :cond_57

    if-le v2, v6, :cond_57

    .line 403
    iput v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->cDataEnd:I

    .line 407
    :goto_46
    iget-boolean v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkCDataSpacing:Z

    if-eqz v3, :cond_4c

    if-nez v1, :cond_4f

    .line 408
    :cond_4c
    invoke-direct {p0}, Lcom/vlingo/client/core/xml/XmlParser;->outputChars()V

    .line 409
    :cond_4f
    iget-boolean v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkForEscapes_CData:Z

    if-eqz v3, :cond_55

    .line 410
    iput-boolean v7, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkForEscapes_CData:Z

    .line 411
    :cond_55
    const/4 v3, 0x1

    .line 445
    .end local v0           #b:C
    :cond_56
    :goto_56
    return v3

    .line 405
    .restart local v0       #b:C
    :cond_57
    iget v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iput v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->cDataEnd:I

    goto :goto_46

    .line 414
    :sswitch_5c
    iget-boolean v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkCDataSpacing:Z

    if-eqz v4, :cond_74

    if-le v2, v6, :cond_74

    .line 415
    iput v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->cDataEnd:I

    .line 419
    :goto_64
    iget-boolean v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkCDataSpacing:Z

    if-eqz v4, :cond_6a

    if-nez v1, :cond_6d

    .line 420
    :cond_6a
    invoke-direct {p0}, Lcom/vlingo/client/core/xml/XmlParser;->outputChars()V

    .line 421
    :cond_6d
    iget-boolean v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkForEscapes_CData:Z

    if-eqz v4, :cond_56

    .line 422
    iput-boolean v7, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkForEscapes_CData:Z

    goto :goto_56

    .line 417
    :cond_74
    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iput v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->cDataEnd:I

    goto :goto_64

    .line 431
    :sswitch_79
    iget-object v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->xml:[C

    iget v5, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    aput-char v8, v4, v5

    .line 433
    :sswitch_7f
    if-ne v2, v6, :cond_30

    .line 434
    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    goto :goto_30

    .line 400
    :sswitch_data_84
    .sparse-switch
        0x0 -> :sswitch_5c
        0x9 -> :sswitch_79
        0xa -> :sswitch_79
        0xb -> :sswitch_79
        0xc -> :sswitch_79
        0xd -> :sswitch_79
        0x20 -> :sswitch_7f
        0x3c -> :sswitch_3e
    .end sparse-switch
.end method

.method private handleElement()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 210
    iput-boolean v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentElementIsBegin:Z

    .line 211
    iput-boolean v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentElementIsEnd:Z

    .line 212
    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementStart:I

    .line 213
    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementEnd:I

    .line 215
    :goto_b
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iget v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->endIndex:I

    if-gt v0, v1, :cond_6d

    .line 217
    iget-object v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->xml:[C

    iget v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_70

    .line 260
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementStart:I

    if-gez v0, :cond_22

    .line 261
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementStart:I

    .line 265
    :cond_22
    :goto_22
    :sswitch_22
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    goto :goto_b

    .line 220
    :sswitch_29
    const/4 v0, 0x6

    .line 267
    :goto_2a
    return v0

    .line 222
    :sswitch_2b
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementStart:I

    if-gez v0, :cond_31

    .line 223
    iput-boolean v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentElementIsBegin:Z

    .line 225
    :cond_31
    iput-boolean v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentElementIsEnd:Z

    .line 226
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementEnd:I

    if-gez v0, :cond_22

    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementStart:I

    if-lez v0, :cond_22

    .line 227
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementEnd:I

    goto :goto_22

    .line 232
    :sswitch_40
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementEnd:I

    if-gez v0, :cond_22

    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementStart:I

    if-ltz v0, :cond_22

    .line 233
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementEnd:I

    .line 234
    invoke-direct {p0}, Lcom/vlingo/client/core/xml/XmlParser;->handleAttributes()V

    .line 235
    iget-boolean v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkForEscapes_AttributeValues:Z

    if-eqz v0, :cond_22

    .line 236
    iput-boolean v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkForEscapes_AttributeValues:Z

    goto :goto_22

    .line 246
    :sswitch_56
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementEnd:I

    if-gez v0, :cond_62

    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementStart:I

    if-ltz v0, :cond_62

    .line 247
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementEnd:I

    .line 249
    :cond_62
    invoke-direct {p0}, Lcom/vlingo/client/core/xml/XmlParser;->outputElement()V

    .line 250
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    .line 251
    const/4 v0, 0x4

    goto :goto_2a

    .line 267
    :cond_6d
    const/4 v0, 0x5

    goto :goto_2a

    .line 217
    nop

    :sswitch_data_70
    .sparse-switch
        0x20 -> :sswitch_40
        0x21 -> :sswitch_29
        0x22 -> :sswitch_22
        0x27 -> :sswitch_22
        0x2f -> :sswitch_2b
        0x3c -> :sswitch_22
        0x3e -> :sswitch_56
    .end sparse-switch
.end method

.method private outputChars()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, cData:[C
    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->cDataEnd:I

    iget v5, p0, Lcom/vlingo/client/core/xml/XmlParser;->cDataStart:I

    sub-int v1, v4, v5

    .line 502
    .local v1, len:I
    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->cachedElementType:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_24

    .line 506
    iget-object v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->xml:[C

    iget v5, p0, Lcom/vlingo/client/core/xml/XmlParser;->cDataStart:I

    iget-boolean v6, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkEscapes:Z

    if-nez v6, :cond_1b

    iget-boolean v6, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkForEscapes_CData:Z

    if-eqz v6, :cond_22

    :cond_1b
    :goto_1b
    invoke-static {v4, v5, v1, v2, v3}, Lcom/vlingo/client/core/xml/XmlParser;->createByteArray([CIIZZ)[C

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->cachedCData:[C

    .line 513
    :cond_21
    :goto_21
    return-void

    :cond_22
    move v2, v3

    .line 506
    goto :goto_1b

    .line 509
    :cond_24
    iget-object v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->xml:[C

    iget v5, p0, Lcom/vlingo/client/core/xml/XmlParser;->cDataStart:I

    iget-boolean v6, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkEscapes:Z

    if-nez v6, :cond_30

    iget-boolean v6, p0, Lcom/vlingo/client/core/xml/XmlParser;->checkForEscapes_CData:Z

    if-eqz v6, :cond_3c

    :cond_30
    :goto_30
    invoke-static {v4, v5, v1, v2, v3}, Lcom/vlingo/client/core/xml/XmlParser;->createByteArray([CIIZZ)[C

    move-result-object v0

    .line 510
    if-eqz v0, :cond_21

    .line 511
    iget-object v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->handler:Lcom/vlingo/client/core/xml/XmlHandler;

    invoke-interface {v2, v0}, Lcom/vlingo/client/core/xml/XmlHandler;->characters([C)V

    goto :goto_21

    :cond_3c
    move v2, v3

    .line 509
    goto :goto_30
.end method

.method private outputElement()V
    .registers 11

    .prologue
    const/16 v9, 0xff

    const/4 v8, 0x0

    .line 451
    iget v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementEnd:I

    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementStart:I

    sub-int v2, v3, v4

    .line 452
    .local v2, len:I
    const/4 v1, 0x0

    .line 453
    .local v1, elementType:I
    const/4 v0, 0x0

    .line 456
    .local v0, elementName:[C
    iget v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->cachedElementType:I

    if-eq v3, v9, :cond_22

    .line 458
    iget-object v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->handler:Lcom/vlingo/client/core/xml/XmlHandler;

    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->cachedElementType:I

    iget-object v5, p0, Lcom/vlingo/client/core/xml/XmlParser;->cachedAttributes:Lcom/vlingo/client/core/xml/XmlAttributes;

    iget-object v6, p0, Lcom/vlingo/client/core/xml/XmlParser;->cachedCData:[C

    iget v7, p0, Lcom/vlingo/client/core/xml/XmlParser;->cStartElementEnd:I

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/vlingo/client/core/xml/XmlHandler;->beginElement(ILcom/vlingo/client/core/xml/XmlAttributes;[CI)V

    .line 460
    iput v9, p0, Lcom/vlingo/client/core/xml/XmlParser;->cachedElementType:I

    .line 461
    iput-object v8, p0, Lcom/vlingo/client/core/xml/XmlParser;->cachedAttributes:Lcom/vlingo/client/core/xml/XmlAttributes;

    .line 462
    iput-object v8, p0, Lcom/vlingo/client/core/xml/XmlParser;->cachedCData:[C

    .line 466
    :cond_22
    iget v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementStart:I

    if-lez v3, :cond_52

    .line 467
    new-array v0, v2, [C

    .line 468
    iget-object v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->xml:[C

    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementStart:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    iget-object v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->xml:[C

    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementStart:I

    invoke-direct {p0, v3, v4, v2}, Lcom/vlingo/client/core/xml/XmlParser;->getElementCode([CII)I

    move-result v1

    .line 470
    iget-boolean v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentElementIsEnd:Z

    if-eqz v3, :cond_55

    .line 472
    iget-boolean v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentElementIsBegin:Z

    if-eqz v3, :cond_49

    .line 475
    iget-object v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->handler:Lcom/vlingo/client/core/xml/XmlHandler;

    iget-object v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributes:Lcom/vlingo/client/core/xml/XmlAttributes;

    iget v5, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementEnd:I

    invoke-interface {v3, v1, v4, v8, v5}, Lcom/vlingo/client/core/xml/XmlHandler;->beginElement(ILcom/vlingo/client/core/xml/XmlAttributes;[CI)V

    .line 480
    :cond_49
    iget-object v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->handler:Lcom/vlingo/client/core/xml/XmlHandler;

    iget v4, p0, Lcom/vlingo/client/core/xml/XmlParser;->elementStart:I

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v3, v1, v4}, Lcom/vlingo/client/core/xml/XmlHandler;->endElement(II)V

    .line 493
    :cond_52
    :goto_52
    iput-object v8, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributes:Lcom/vlingo/client/core/xml/XmlAttributes;

    .line 494
    return-void

    .line 481
    :cond_55
    iget-boolean v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentElementIsBegin:Z

    if-eqz v3, :cond_52

    .line 485
    iput v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->cachedElementType:I

    .line 486
    iget v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->cStartElementEnd:I

    .line 487
    iget-object v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributes:Lcom/vlingo/client/core/xml/XmlAttributes;

    if-eqz v3, :cond_52

    .line 489
    iget-object v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributes:Lcom/vlingo/client/core/xml/XmlAttributes;

    iput-object v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->cachedAttributes:Lcom/vlingo/client/core/xml/XmlAttributes;

    goto :goto_52
.end method

.method private resetAttributeIndicies()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 271
    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeNameStart:I

    .line 272
    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeNameEnd:I

    .line 273
    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeValueStart:I

    .line 274
    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->attributeValueEnd:I

    .line 275
    return-void
.end method

.method private skipComments()I
    .registers 5

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 170
    .local v1, dashCount:I
    :goto_1
    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    iget v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->endIndex:I

    if-gt v2, v3, :cond_20

    .line 172
    iget-object v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->xml:[C

    iget v3, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    aget-char v0, v2, v3

    .line 173
    .local v0, b:C
    sparse-switch v0, :sswitch_data_22

    .line 182
    const/4 v1, 0x0

    .line 185
    :cond_11
    :goto_11
    iget v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    goto :goto_1

    .line 175
    :sswitch_18
    add-int/lit8 v1, v1, 0x1

    .line 176
    goto :goto_11

    .line 178
    :sswitch_1b
    const/4 v2, 0x2

    if-lt v1, v2, :cond_11

    .line 179
    const/4 v2, 0x4

    .line 187
    .end local v0           #b:C
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x5

    goto :goto_1f

    .line 173
    :sswitch_data_22
    .sparse-switch
        0x2d -> :sswitch_18
        0x3e -> :sswitch_1b
    .end sparse-switch
.end method


# virtual methods
.method public parseXml()V
    .registers 4

    .prologue
    const/4 v2, 0x5

    .line 120
    :goto_1
    iget v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentState:I

    if-eq v1, v2, :cond_37

    .line 122
    :try_start_5
    iget v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentState:I

    packed-switch v1, :pswitch_data_3e

    :pswitch_a
    goto :goto_1

    .line 124
    :pswitch_b
    iget-object v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->handler:Lcom/vlingo/client/core/xml/XmlHandler;

    invoke-interface {v1}, Lcom/vlingo/client/core/xml/XmlHandler;->beginDocument()V

    .line 125
    invoke-direct {p0}, Lcom/vlingo/client/core/xml/XmlParser;->handleBegin()I

    move-result v1

    iput v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentState:I
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_1

    .line 144
    :catch_17
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/Throwable;
    iput v2, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentState:I

    goto :goto_1

    .line 129
    .end local v0           #e:Ljava/lang/Throwable;
    :pswitch_1b
    :try_start_1b
    invoke-direct {p0}, Lcom/vlingo/client/core/xml/XmlParser;->handleElement()I

    move-result v1

    iput v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentState:I

    goto :goto_1

    .line 133
    :pswitch_22
    invoke-direct {p0}, Lcom/vlingo/client/core/xml/XmlParser;->handleCData()I

    move-result v1

    iput v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentState:I

    goto :goto_1

    .line 137
    :pswitch_29
    invoke-direct {p0}, Lcom/vlingo/client/core/xml/XmlParser;->advanceIndex()I

    move-result v1

    iput v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentState:I

    goto :goto_1

    .line 141
    :pswitch_30
    invoke-direct {p0}, Lcom/vlingo/client/core/xml/XmlParser;->skipComments()I

    move-result v1

    iput v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->currentState:I
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_36} :catch_17

    goto :goto_1

    .line 151
    :cond_37
    iget-object v1, p0, Lcom/vlingo/client/core/xml/XmlParser;->handler:Lcom/vlingo/client/core/xml/XmlHandler;

    invoke-interface {v1}, Lcom/vlingo/client/core/xml/XmlHandler;->endDocument()V

    .line 152
    return-void

    .line 122
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_1b
        :pswitch_a
        :pswitch_22
        :pswitch_29
        :pswitch_a
        :pswitch_30
    .end packed-switch
.end method

.method public stopParsing()V
    .registers 2

    .prologue
    .line 718
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->endIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vlingo/client/core/xml/XmlParser;->index:I

    .line 719
    return-void
.end method
