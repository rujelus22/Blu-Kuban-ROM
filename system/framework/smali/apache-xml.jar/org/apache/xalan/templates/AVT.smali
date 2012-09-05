.class public Lorg/apache/xalan/templates/AVT;
.super Ljava/lang/Object;
.source "AVT.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/xalan/templates/XSLTVisitable;


# static fields
.field private static final INIT_BUFFER_CHUNK_BITS:I = 0x8

.field private static final USE_OBJECT_POOL:Z = false

.field static final serialVersionUID:J = 0x47b707542b5c3003L


# instance fields
.field private m_name:Ljava/lang/String;

.field private m_parts:Ljava/util/Vector;

.field private m_rawName:Ljava/lang/String;

.field private m_simpleString:Ljava/lang/String;

.field private m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 23
    .parameter "handler"
    .parameter "uri"
    .parameter "name"
    .parameter "rawName"
    .parameter "stringedValue"
    .parameter "owner"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    .line 67
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    .line 168
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_uri:Ljava/lang/String;

    .line 169
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_name:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_rawName:Ljava/lang/String;

    .line 172
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v13, "{}\"\'"

    const/4 v14, 0x1

    move-object/from16 v0, p5

    invoke-direct {v11, v0, v13, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    .local v11, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    .line 176
    .local v7, nTokens:I
    const/4 v13, 0x2

    if-ge v7, v13, :cond_49

    .line 178
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    .line 432
    :goto_36
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-nez v13, :cond_48

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-nez v13, :cond_48

    .line 436
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    .line 438
    :cond_48
    return-void

    .line 182
    :cond_49
    const/4 v2, 0x0

    .line 183
    .local v2, buffer:Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v5, 0x0

    .line 188
    .local v5, exprBuffer:Lorg/apache/xml/utils/FastStringBuffer;
    new-instance v2, Lorg/apache/xml/utils/FastStringBuffer;

    .end local v2           #buffer:Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v13, 0x6

    invoke-direct {v2, v13}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(I)V

    .line 189
    .restart local v2       #buffer:Lorg/apache/xml/utils/FastStringBuffer;
    new-instance v5, Lorg/apache/xml/utils/FastStringBuffer;

    .end local v5           #exprBuffer:Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v13, 0x6

    invoke-direct {v5, v13}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(I)V

    .line 193
    .restart local v5       #exprBuffer:Lorg/apache/xml/utils/FastStringBuffer;
    :try_start_57
    new-instance v13, Ljava/util/Vector;

    add-int/lit8 v14, v7, 0x1

    invoke-direct {v13, v14}, Ljava/util/Vector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    .line 195
    const/4 v10, 0x0

    .line 196
    .local v10, t:Ljava/lang/String;
    const/4 v6, 0x0

    .line 197
    .local v6, lookahead:Ljava/lang/String;
    const/4 v3, 0x0

    .line 199
    .local v3, error:Ljava/lang/String;
    :cond_65
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_90

    .line 201
    if-eqz v6, :cond_ad

    .line 203
    move-object v10, v6

    .line 204
    const/4 v6, 0x0

    .line 209
    :goto_6f
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_18d

    .line 211
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    sparse-switch v13, :sswitch_data_19a

    .line 387
    invoke-virtual {v2, v10}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_57 .. :try_end_81} :catchall_b6

    .line 398
    :cond_81
    :goto_81
    if-eqz v3, :cond_65

    .line 402
    :try_start_83
    const-string v13, "WG_ATTR_TEMPLATE"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lorg/apache/xalan/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_90
    .catchall {:try_start_83 .. :try_end_90} :catchall_b6
    .catch Lorg/xml/sax/SAXException; {:try_start_83 .. :try_end_90} :catch_192

    .line 414
    :cond_90
    :try_start_90
    invoke-virtual {v2}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_aa

    .line 416
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    new-instance v14, Lorg/apache/xalan/templates/AVTPartSimple;

    invoke-virtual {v2}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/xalan/templates/AVTPartSimple;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 417
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 426
    :cond_aa
    const/4 v2, 0x0

    .line 427
    const/4 v5, 0x0

    .line 429
    goto :goto_36

    .line 207
    :cond_ad
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_6f

    .line 218
    :sswitch_b2
    invoke-virtual {v2, v10}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_90 .. :try_end_b5} :catchall_b6

    goto :goto_81

    .line 425
    .end local v3           #error:Ljava/lang/String;
    .end local v6           #lookahead:Ljava/lang/String;
    .end local v10           #t:Ljava/lang/String;
    :catchall_b6
    move-exception v13

    .line 426
    const/4 v2, 0x0

    .line 427
    const/4 v5, 0x0

    throw v13

    .line 228
    .restart local v3       #error:Ljava/lang/String;
    .restart local v6       #lookahead:Ljava/lang/String;
    .restart local v10       #t:Ljava/lang/String;
    :sswitch_ba
    :try_start_ba
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 230
    const-string v13, "{"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_cb

    .line 234
    invoke-virtual {v2, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 236
    const/4 v6, 0x0

    goto :goto_81

    .line 251
    :cond_cb
    invoke-virtual {v2}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_e5

    .line 253
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    new-instance v14, Lorg/apache/xalan/templates/AVTPartSimple;

    invoke-virtual {v2}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/xalan/templates/AVTPartSimple;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 254
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 257
    :cond_e5
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 259
    :goto_e9
    if-eqz v6, :cond_14f

    .line 261
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_147

    .line 263
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    sparse-switch v13, :sswitch_data_1ac

    .line 321
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_e9

    .line 270
    :sswitch_102
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 272
    move-object v8, v6

    .line 275
    .local v8, quote:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 277
    :goto_10a
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_118

    .line 279
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_10a

    .line 284
    :cond_118
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 288
    goto :goto_e9

    .line 294
    .end local v8           #quote:Ljava/lang/String;
    :sswitch_120
    const-string v13, "ER_NO_CURLYBRACE"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 297
    const/4 v6, 0x0

    .line 299
    goto :goto_e9

    .line 306
    :sswitch_129
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 308
    invoke-virtual {v5}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v13, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->createXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    move-result-object v12

    .line 311
    .local v12, xpath:Lorg/apache/xpath/XPath;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    new-instance v14, Lorg/apache/xalan/templates/AVTPartXPath;

    invoke-direct {v14, v12}, Lorg/apache/xalan/templates/AVTPartXPath;-><init>(Lorg/apache/xpath/XPath;)V

    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 313
    const/4 v6, 0x0

    .line 315
    goto :goto_e9

    .line 331
    .end local v12           #xpath:Lorg/apache/xpath/XPath;
    :cond_147
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_14d
    .catchall {:try_start_ba .. :try_end_14d} :catchall_b6
    .catch Ljava/util/NoSuchElementException; {:try_start_ba .. :try_end_14d} :catch_153

    move-result-object v6

    goto :goto_e9

    .line 337
    :cond_14f
    if-eqz v3, :cond_81

    goto/16 :goto_81

    .line 345
    :catch_153
    move-exception v4

    .line 347
    .local v4, ex:Ljava/util/NoSuchElementException;
    :try_start_154
    const-string v13, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p3, v14, v15

    const/4 v15, 0x1

    aput-object p5, v14, v15

    invoke-static {v13, v14}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 348
    goto/16 :goto_81

    .line 353
    .end local v4           #ex:Ljava/util/NoSuchElementException;
    :sswitch_165
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 355
    const-string v13, "}"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_177

    .line 359
    invoke-virtual {v2, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_174
    .catchall {:try_start_154 .. :try_end_174} :catchall_b6

    .line 361
    const/4 v6, 0x0

    goto/16 :goto_81

    .line 369
    :cond_177
    :try_start_177
    const-string v13, "WG_FOUND_CURLYBRACE"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lorg/apache/xalan/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_17f
    .catchall {:try_start_177 .. :try_end_17f} :catchall_b6
    .catch Lorg/xml/sax/SAXException; {:try_start_177 .. :try_end_17f} :catch_186

    .line 376
    :try_start_17f
    const-string v13, "}"

    invoke-virtual {v2, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_81

    .line 371
    :catch_186
    move-exception v9

    .line 373
    .local v9, se:Lorg/xml/sax/SAXException;
    new-instance v13, Ljavax/xml/transform/TransformerException;

    invoke-direct {v13, v9}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 395
    .end local v9           #se:Lorg/xml/sax/SAXException;
    :cond_18d
    invoke-virtual {v2, v10}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_81

    .line 405
    :catch_192
    move-exception v9

    .line 407
    .restart local v9       #se:Lorg/xml/sax/SAXException;
    new-instance v13, Ljavax/xml/transform/TransformerException;

    invoke-direct {v13, v9}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_199
    .catchall {:try_start_17f .. :try_end_199} :catchall_b6

    .line 211
    nop

    :sswitch_data_19a
    .sparse-switch
        0x22 -> :sswitch_b2
        0x27 -> :sswitch_b2
        0x7b -> :sswitch_ba
        0x7d -> :sswitch_165
    .end sparse-switch

    .line 263
    :sswitch_data_1ac
    .sparse-switch
        0x22 -> :sswitch_102
        0x27 -> :sswitch_102
        0x7b -> :sswitch_120
        0x7d -> :sswitch_129
    .end sparse-switch
.end method

.method private final getBuffer()Lorg/apache/xml/utils/FastStringBuffer;
    .registers 3

    .prologue
    .line 611
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .registers 6
    .parameter "visitor"

    .prologue
    .line 586
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitAVT(Lorg/apache/xalan/templates/AVT;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v3, :cond_21

    .line 588
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 590
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v1, :cond_21

    .line 592
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/AVTPart;

    .line 594
    .local v2, part:Lorg/apache/xalan/templates/AVTPart;
    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/AVTPart;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 597
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #part:Lorg/apache/xalan/templates/AVTPart;
    :cond_21
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .registers 5

    .prologue
    .line 540
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v3, :cond_20

    .line 542
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 544
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_20

    .line 546
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/AVTPart;

    .line 548
    .local v2, part:Lorg/apache/xalan/templates/AVTPart;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVTPart;->canTraverseOutsideSubtree()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 549
    const/4 v3, 0x1

    .line 553
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #part:Lorg/apache/xalan/templates/AVTPart;
    :goto_1c
    return v3

    .line 544
    .restart local v0       #i:I
    .restart local v1       #n:I
    .restart local v2       #part:Lorg/apache/xalan/templates/AVTPart;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 553
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #part:Lorg/apache/xalan/templates/AVTPart;
    :cond_20
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method public evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;
    .registers 11
    .parameter "xctxt"
    .parameter "context"
    .parameter "nsNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 490
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 491
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    .line 511
    :goto_7
    return-object v3

    .line 492
    :cond_8
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v5, :cond_35

    .line 493
    invoke-direct {p0}, Lorg/apache/xalan/templates/AVT;->getBuffer()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 494
    .local v0, buf:Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v3, 0x0

    .line 495
    .local v3, out:Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 497
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    if-ge v1, v2, :cond_28

    .line 498
    :try_start_1a
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/AVTPart;

    .line 499
    .local v4, part:Lorg/apache/xalan/templates/AVTPart;
    invoke-virtual {v4, p1, v0, p2, p3}, Lorg/apache/xalan/templates/AVTPart;->evaluate(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/FastStringBuffer;ILorg/apache/xml/utils/PrefixResolver;)V

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 501
    .end local v4           #part:Lorg/apache/xalan/templates/AVTPart;
    :cond_28
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_30

    move-result-object v3

    .line 506
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    goto :goto_7

    .line 505
    :catchall_30
    move-exception v5

    .line 506
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    throw v5

    .line 511
    .end local v0           #buf:Lorg/apache/xml/utils/FastStringBuffer;
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #out:Ljava/lang/String;
    :cond_35
    const-string v3, ""

    goto :goto_7
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 7
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 568
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v3, :cond_1b

    .line 570
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 572
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_1b

    .line 574
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/AVTPart;

    .line 576
    .local v2, part:Lorg/apache/xalan/templates/AVTPart;
    invoke-virtual {v2, p1, p2}, Lorg/apache/xalan/templates/AVTPart;->fixupVariables(Ljava/util/Vector;I)V

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 579
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #part:Lorg/apache/xalan/templates/AVTPart;
    :cond_1b
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRawName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_rawName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleString()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 448
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 449
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    .line 471
    :goto_7
    return-object v3

    .line 451
    :cond_8
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v5, :cond_39

    .line 452
    invoke-direct {p0}, Lorg/apache/xalan/templates/AVT;->getBuffer()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 453
    .local v0, buf:Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v3, 0x0

    .line 455
    .local v3, out:Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 457
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    if-ge v1, v2, :cond_2c

    .line 458
    :try_start_1a
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/AVTPart;

    .line 459
    .local v4, part:Lorg/apache/xalan/templates/AVTPart;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/AVTPart;->getSimpleString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 461
    .end local v4           #part:Lorg/apache/xalan/templates/AVTPart;
    :cond_2c
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_34

    move-result-object v3

    .line 466
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    goto :goto_7

    .line 465
    :catchall_34
    move-exception v5

    .line 466
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    throw v5

    .line 471
    .end local v0           #buf:Lorg/apache/xml/utils/FastStringBuffer;
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #out:Ljava/lang/String;
    :cond_39
    const-string v3, ""

    goto :goto_7
.end method

.method public getURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_uri:Ljava/lang/String;

    return-object v0
.end method

.method public isContextInsensitive()Z
    .registers 2

    .prologue
    .line 528
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSimple()Z
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 120
    iput-object p1, p0, Lorg/apache/xalan/templates/AVT;->m_name:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setRawName(Ljava/lang/String;)V
    .registers 2
    .parameter "rawName"

    .prologue
    .line 94
    iput-object p1, p0, Lorg/apache/xalan/templates/AVT;->m_rawName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 146
    iput-object p1, p0, Lorg/apache/xalan/templates/AVT;->m_uri:Ljava/lang/String;

    .line 147
    return-void
.end method
