.class Lorg/apache/xpath/compiler/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"


# static fields
.field static final TARGETEXTRA:I = 0x2710


# instance fields
.field private m_compiler:Lorg/apache/xpath/compiler/Compiler;

.field m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

.field private m_patternMap:[I

.field private m_patternMapSize:I

.field m_processor:Lorg/apache/xpath/compiler/XPathParser;


# direct methods
.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;Lorg/apache/xml/utils/PrefixResolver;Lorg/apache/xpath/compiler/XPathParser;)V
    .registers 5
    .parameter "compiler"
    .parameter "resolver"
    .parameter "xpathProcessor"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    .line 84
    iput-object p1, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    .line 85
    iput-object p2, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    .line 86
    iput-object p3, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    .line 87
    return-void
.end method

.method private final addToTokenQueue(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 561
    iget-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v0}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectVector;->addElement(Ljava/lang/Object;)V

    .line 562
    return-void
.end method

.method private getTokenQueuePosFromMap(I)I
    .registers 4
    .parameter "i"

    .prologue
    .line 434
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    aget v0, v1, p1

    .line 436
    .local v0, pos:I
    const/16 v1, 0x2710

    if-lt v0, v1, :cond_a

    add-int/lit16 v0, v0, -0x2710

    .end local v0           #pos:I
    :cond_a
    return v0
.end method

.method private mapNSTokens(Ljava/lang/String;III)I
    .registers 13
    .parameter "pat"
    .parameter "startSubstring"
    .parameter "posOfNSSep"
    .parameter "posOfScan"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 582
    const-string v1, ""

    .line 584
    .local v1, prefix:Ljava/lang/String;
    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    .line 586
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 590
    :cond_a
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    if-eqz v4, :cond_5a

    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    const-string v4, "xmlns"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 595
    :try_start_1e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4b

    .line 596
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-interface {v4, v1}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_29} :catch_52

    move-result-object v3

    .line 633
    .local v3, uName:Ljava/lang/String;
    :goto_2a
    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5c

    .line 635
    invoke-direct {p0, v3}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    .line 636
    const-string v4, ":"

    invoke-direct {p0, v4}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    .line 638
    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p1, v4, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_49

    .line 641
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    .line 667
    .end local v2           #s:Ljava/lang/String;
    :cond_49
    :goto_49
    const/4 v4, -0x1

    return v4

    .line 617
    .end local v3           #uName:Ljava/lang/String;
    :cond_4b
    :try_start_4b
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-interface {v4, v1}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/ClassCastException; {:try_start_4b .. :try_end_50} :catch_52

    move-result-object v3

    .restart local v3       #uName:Ljava/lang/String;
    goto :goto_2a

    .line 623
    .end local v3           #uName:Ljava/lang/String;
    :catch_52
    move-exception v0

    .line 625
    .local v0, cce:Ljava/lang/ClassCastException;
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-interface {v4, v1}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 626
    .restart local v3       #uName:Ljava/lang/String;
    goto :goto_2a

    .line 630
    .end local v0           #cce:Ljava/lang/ClassCastException;
    .end local v3           #uName:Ljava/lang/String;
    :cond_5a
    move-object v3, v1

    .restart local v3       #uName:Ljava/lang/String;
    goto :goto_2a

    .line 647
    :cond_5c
    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const-string v5, "ER_PREFIX_MUST_RESOLVE"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/apache/xpath/compiler/XPathParser;->errorForDOM3(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_49
.end method

.method private mapPatternElemPos(IZZ)Z
    .registers 10
    .parameter "nesting"
    .parameter "isStart"
    .parameter "isAttrName"

    .prologue
    const/4 v2, 0x0

    .line 400
    if-nez p1, :cond_44

    .line 402
    iget v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1c

    .line 404
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    .line 405
    .local v1, patternMap:[I
    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    array-length v0, v3

    .line 406
    .local v0, len:I
    iget v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    add-int/lit8 v3, v3, 0x64

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    .line 407
    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    .end local v0           #len:I
    .end local v1           #patternMap:[I
    :cond_1c
    if-nez p2, :cond_2a

    .line 411
    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    iget v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v3, v4

    add-int/lit16 v5, v5, -0x2710

    aput v5, v3, v4

    .line 413
    :cond_2a
    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    iget v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    iget-object v5, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v5}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueueSize()I

    move-result v5

    if-eqz p3, :cond_37

    const/4 v2, 0x1

    :cond_37
    sub-int v2, v5, v2

    add-int/lit16 v2, v2, 0x2710

    aput v2, v3, v4

    .line 416
    iget v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    .line 418
    const/4 p2, 0x0

    .line 421
    :cond_44
    return p2
.end method

.method private recordTokenString(Ljava/util/Vector;)V
    .registers 7
    .parameter "targetStrings"

    .prologue
    const/4 v4, 0x1

    .line 503
    iget v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->getTokenQueuePosFromMap(I)I

    move-result v1

    .line 505
    .local v1, tokPos:I
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->resetTokenMark(I)V

    .line 507
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/16 v3, 0x28

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 509
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget-object v2, v2, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->getKeywordToken(Ljava/lang/String;)I

    move-result v0

    .line 511
    .local v0, tok:I
    sparse-switch v0, :sswitch_data_78

    .line 532
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 551
    .end local v0           #tok:I
    :goto_28
    return-void

    .line 514
    .restart local v0       #tok:I
    :sswitch_29
    const-string v2, "#comment"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_28

    .line 517
    :sswitch_2f
    const-string v2, "#text"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_28

    .line 520
    :sswitch_35
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_28

    .line 523
    :sswitch_3b
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_28

    .line 526
    :sswitch_41
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_28

    .line 529
    :sswitch_47
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_28

    .line 537
    .end local v0           #tok:I
    :cond_4d
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 539
    add-int/lit8 v1, v1, 0x1

    .line 541
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->resetTokenMark(I)V

    .line 544
    :cond_5e
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 546
    add-int/lit8 v1, v1, 0x2

    .line 549
    :cond_6a
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v2}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_28

    .line 511
    :sswitch_data_78
    .sparse-switch
        0x23 -> :sswitch_3b
        0x24 -> :sswitch_41
        0x406 -> :sswitch_29
        0x407 -> :sswitch_2f
        0x408 -> :sswitch_47
        0x409 -> :sswitch_35
    .end sparse-switch
.end method

.method private final resetTokenMark(I)V
    .registers 9
    .parameter "mark"

    .prologue
    const/4 v2, 0x0

    .line 447
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v1}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueueSize()I

    move-result v0

    .line 449
    .local v0, qsz:I
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    if-lez p1, :cond_3c

    if-gt p1, v0, :cond_f

    add-int/lit8 p1, p1, -0x1

    .end local p1
    :cond_f
    :goto_f
    iput p1, v1, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    .line 452
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget v1, v1, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    if-ge v1, v0, :cond_3e

    .line 454
    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v1}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget v5, v4, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    invoke-virtual {v1, v5}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    .line 456
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget-object v3, v3, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, v1, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    .line 463
    :goto_3b
    return-void

    .restart local p1
    :cond_3c
    move p1, v2

    .line 449
    goto :goto_f

    .line 460
    .end local p1
    :cond_3e
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/4 v3, 0x0

    iput-object v3, v1, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iput-char v2, v1, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    goto :goto_3b
.end method


# virtual methods
.method final getKeywordToken(Ljava/lang/String;)I
    .registers 6
    .parameter "key"

    .prologue
    .line 479
    :try_start_0
    invoke-static {p1}, Lorg/apache/xpath/compiler/Keywords;->getKeyWord(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 481
    .local v1, itok:Ljava/lang/Integer;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_f
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_b} :catch_12

    move-result v3

    .line 492
    .end local v1           #itok:Ljava/lang/Integer;
    .local v3, tok:I
    :goto_c
    return v3

    .line 481
    .end local v3           #tok:I
    .restart local v1       #itok:Ljava/lang/Integer;
    :cond_d
    const/4 v3, 0x0

    goto :goto_c

    .line 483
    .end local v1           #itok:Ljava/lang/Integer;
    :catch_f
    move-exception v2

    .line 485
    .local v2, npe:Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    .line 490
    .restart local v3       #tok:I
    goto :goto_c

    .line 487
    .end local v2           #npe:Ljava/lang/NullPointerException;
    .end local v3           #tok:I
    :catch_12
    move-exception v0

    .line 489
    .local v0, cce:Ljava/lang/ClassCastException;
    const/4 v3, 0x0

    .restart local v3       #tok:I
    goto :goto_c
.end method

.method tokenize(Ljava/lang/String;)V
    .registers 3
    .parameter "pat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/compiler/Lexer;->tokenize(Ljava/lang/String;Ljava/util/Vector;)V

    .line 99
    return-void
.end method

.method tokenize(Ljava/lang/String;Ljava/util/Vector;)V
    .registers 18
    .parameter "pat"
    .parameter "targetStrings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    move-object/from16 v0, p1

    iput-object v0, v11, Lorg/apache/xpath/compiler/OpMap;->m_currentPattern:Ljava/lang/String;

    .line 114
    const/4 v11, 0x0

    iput v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    .line 120
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x1f4

    if-ge v11, v12, :cond_44

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    :goto_15
    mul-int/lit8 v3, v11, 0x5

    .line 122
    .local v3, initTokQueueSize:I
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    new-instance v12, Lorg/apache/xpath/compiler/OpMapVector;

    const/16 v13, 0x9c4

    const/4 v14, 0x1

    invoke-direct {v12, v3, v13, v14}, Lorg/apache/xpath/compiler/OpMapVector;-><init>(III)V

    iput-object v12, v11, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    .line 126
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 127
    .local v7, nChars:I
    const/4 v10, -0x1

    .line 128
    .local v10, startSubstring:I
    const/4 v9, -0x1

    .line 129
    .local v9, posOfNSSep:I
    const/4 v6, 0x1

    .line 130
    .local v6, isStartOfPat:Z
    const/4 v4, 0x0

    .line 131
    .local v4, isAttrName:Z
    const/4 v5, 0x0

    .line 135
    .local v5, isNum:Z
    const/4 v8, 0x0

    .line 138
    .local v8, nesting:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2e
    if-ge v2, v7, :cond_19f

    .line 140
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 142
    .local v1, c:C
    sparse-switch v1, :sswitch_data_1e4

    .line 345
    :cond_39
    :goto_39
    const/4 v11, -0x1

    if-ne v11, v10, :cond_197

    .line 347
    move v10, v2

    .line 348
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    .line 138
    :cond_41
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 120
    .end local v1           #c:C
    .end local v2           #i:I
    .end local v3           #initTokQueueSize:I
    .end local v4           #isAttrName:Z
    .end local v5           #isNum:Z
    .end local v6           #isStartOfPat:Z
    .end local v7           #nChars:I
    .end local v8           #nesting:I
    .end local v9           #posOfNSSep:I
    .end local v10           #startSubstring:I
    :cond_44
    const/16 v11, 0x1f4

    goto :goto_15

    .line 146
    .restart local v1       #c:C
    .restart local v2       #i:I
    .restart local v3       #initTokQueueSize:I
    .restart local v4       #isAttrName:Z
    .restart local v5       #isNum:Z
    .restart local v6       #isStartOfPat:Z
    .restart local v7       #nChars:I
    .restart local v8       #nesting:I
    .restart local v9       #posOfNSSep:I
    .restart local v10       #startSubstring:I
    :sswitch_47
    const/4 v11, -0x1

    if-eq v10, v11, :cond_59

    .line 148
    const/4 v5, 0x0

    .line 149
    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v6

    .line 150
    const/4 v4, 0x0

    .line 152
    const/4 v11, -0x1

    if-eq v11, v9, :cond_6b

    .line 154
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10, v9, v2}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v9

    .line 162
    :cond_59
    :goto_59
    move v10, v2

    .line 164
    add-int/lit8 v2, v2, 0x1

    :goto_5c
    if-ge v2, v7, :cond_75

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v11, 0x22

    if-eq v1, v11, :cond_75

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 158
    :cond_6b
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_59

    .line 166
    :cond_75
    const/16 v11, 0x22

    if-ne v1, v11, :cond_88

    if-ge v2, v7, :cond_88

    .line 168
    add-int/lit8 v11, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    .line 170
    const/4 v10, -0x1

    goto :goto_41

    .line 174
    :cond_88
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const-string v12, "ER_EXPECTED_DOUBLE_QUOTE"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_41

    .line 180
    :sswitch_91
    const/4 v11, -0x1

    if-eq v10, v11, :cond_a3

    .line 182
    const/4 v5, 0x0

    .line 183
    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v6

    .line 184
    const/4 v4, 0x0

    .line 186
    const/4 v11, -0x1

    if-eq v11, v9, :cond_b5

    .line 188
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10, v9, v2}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v9

    .line 196
    :cond_a3
    :goto_a3
    move v10, v2

    .line 198
    add-int/lit8 v2, v2, 0x1

    :goto_a6
    if-ge v2, v7, :cond_bf

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v11, 0x27

    if-eq v1, v11, :cond_bf

    add-int/lit8 v2, v2, 0x1

    goto :goto_a6

    .line 192
    :cond_b5
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_a3

    .line 200
    :cond_bf
    const/16 v11, 0x27

    if-ne v1, v11, :cond_d3

    if-ge v2, v7, :cond_d3

    .line 202
    add-int/lit8 v11, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    .line 204
    const/4 v10, -0x1

    goto/16 :goto_41

    .line 208
    :cond_d3
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const-string v12, "ER_EXPECTED_SINGLE_QUOTE"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_41

    .line 216
    :sswitch_dd
    const/4 v11, -0x1

    if-eq v10, v11, :cond_41

    .line 218
    const/4 v5, 0x0

    .line 219
    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v6

    .line 220
    const/4 v4, 0x0

    .line 222
    const/4 v11, -0x1

    if-eq v11, v9, :cond_f2

    .line 224
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10, v9, v2}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v9

    .line 231
    :goto_ef
    const/4 v10, -0x1

    goto/16 :goto_41

    .line 228
    :cond_f2
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_ef

    .line 235
    :sswitch_fc
    const/4 v4, 0x1

    .line 239
    :sswitch_fd
    const/16 v11, 0x2d

    if-ne v11, v1, :cond_107

    .line 241
    if-nez v5, :cond_106

    const/4 v11, -0x1

    if-ne v10, v11, :cond_41

    .line 246
    :cond_106
    const/4 v5, 0x0

    .line 266
    :cond_107
    :sswitch_107
    const/4 v11, -0x1

    if-eq v10, v11, :cond_149

    .line 268
    const/4 v5, 0x0

    .line 269
    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v6

    .line 270
    const/4 v4, 0x0

    .line 272
    const/4 v11, -0x1

    if-eq v11, v9, :cond_13f

    .line 274
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10, v9, v2}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v9

    .line 281
    :goto_119
    const/4 v10, -0x1

    .line 293
    :cond_11a
    :goto_11a
    if-nez v8, :cond_128

    .line 295
    const/16 v11, 0x7c

    if-ne v11, v1, :cond_128

    .line 297
    if-eqz p2, :cond_127

    .line 299
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lorg/apache/xpath/compiler/Lexer;->recordTokenString(Ljava/util/Vector;)V

    .line 302
    :cond_127
    const/4 v6, 0x1

    .line 306
    :cond_128
    const/16 v11, 0x29

    if-eq v11, v1, :cond_130

    const/16 v11, 0x5d

    if-ne v11, v1, :cond_15e

    .line 308
    :cond_130
    add-int/lit8 v8, v8, -0x1

    .line 315
    :cond_132
    :goto_132
    add-int/lit8 v11, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto/16 :goto_41

    .line 278
    :cond_13f
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_119

    .line 283
    :cond_149
    const/16 v11, 0x2f

    if-ne v11, v1, :cond_154

    if-eqz v6, :cond_154

    .line 285
    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v6

    goto :goto_11a

    .line 287
    :cond_154
    const/16 v11, 0x2a

    if-ne v11, v1, :cond_11a

    .line 289
    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v6

    .line 290
    const/4 v4, 0x0

    goto :goto_11a

    .line 310
    :cond_15e
    const/16 v11, 0x28

    if-eq v11, v1, :cond_166

    const/16 v11, 0x5b

    if-ne v11, v1, :cond_132

    .line 312
    :cond_166
    add-int/lit8 v8, v8, 0x1

    goto :goto_132

    .line 318
    :sswitch_169
    if-lez v2, :cond_39

    .line 320
    add-int/lit8 v11, v2, -0x1

    if-ne v9, v11, :cond_194

    .line 322
    const/4 v11, -0x1

    if-eq v10, v11, :cond_181

    .line 324
    add-int/lit8 v11, v2, -0x1

    if-ge v10, v11, :cond_181

    .line 325
    add-int/lit8 v11, v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    .line 328
    :cond_181
    const/4 v5, 0x0

    .line 329
    const/4 v4, 0x0

    .line 330
    const/4 v10, -0x1

    .line 331
    const/4 v9, -0x1

    .line 333
    add-int/lit8 v11, v2, -0x1

    add-int/lit8 v12, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto/16 :goto_41

    .line 339
    :cond_194
    move v9, v2

    goto/16 :goto_39

    .line 350
    :cond_197
    if-eqz v5, :cond_41

    .line 352
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    goto/16 :goto_41

    .line 357
    .end local v1           #c:C
    :cond_19f
    const/4 v11, -0x1

    if-eq v10, v11, :cond_1bc

    .line 359
    const/4 v5, 0x0

    .line 360
    invoke-direct {p0, v8, v6, v4}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v6

    .line 362
    const/4 v11, -0x1

    if-ne v11, v9, :cond_1b6

    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    if-eqz v11, :cond_1d2

    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-interface {v11}, Lorg/apache/xml/utils/PrefixResolver;->handlesNullPrefixes()Z

    move-result v11

    if-eqz v11, :cond_1d2

    .line 365
    :cond_1b6
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10, v9, v7}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v9

    .line 373
    :cond_1bc
    :goto_1bc
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v11}, Lorg/apache/xpath/compiler/Compiler;->getTokenQueueSize()I

    move-result v11

    if-nez v11, :cond_1dc

    .line 375
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const-string v12, "ER_EMPTY_EXPRESSION"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    :cond_1cc
    :goto_1cc
    iget-object v11, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/4 v12, 0x0

    iput v12, v11, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    .line 383
    return-void

    .line 369
    :cond_1d2
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_1bc

    .line 377
    :cond_1dc
    if-eqz p2, :cond_1cc

    .line 379
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lorg/apache/xpath/compiler/Lexer;->recordTokenString(Ljava/util/Vector;)V

    goto :goto_1cc

    .line 142
    :sswitch_data_1e4
    .sparse-switch
        0x9 -> :sswitch_dd
        0xa -> :sswitch_dd
        0xd -> :sswitch_dd
        0x20 -> :sswitch_dd
        0x21 -> :sswitch_107
        0x22 -> :sswitch_47
        0x24 -> :sswitch_107
        0x27 -> :sswitch_91
        0x28 -> :sswitch_107
        0x29 -> :sswitch_107
        0x2a -> :sswitch_107
        0x2b -> :sswitch_107
        0x2c -> :sswitch_107
        0x2d -> :sswitch_fd
        0x2f -> :sswitch_107
        0x3a -> :sswitch_169
        0x3c -> :sswitch_107
        0x3d -> :sswitch_107
        0x3e -> :sswitch_107
        0x40 -> :sswitch_fc
        0x5b -> :sswitch_107
        0x5c -> :sswitch_107
        0x5d -> :sswitch_107
        0x5e -> :sswitch_107
        0x7c -> :sswitch_107
    .end sparse-switch
.end method
