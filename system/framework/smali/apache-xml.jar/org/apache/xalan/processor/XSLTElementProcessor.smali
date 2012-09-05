.class public Lorg/apache/xalan/processor/XSLTElementProcessor;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "XSLTElementProcessor.java"


# static fields
.field static final serialVersionUID:J = 0x4dae0941c545a1e5L


# instance fields
.field private m_elemDef:Lorg/apache/xalan/processor/XSLTElementDef;

.field private m_savedLastOrder:Lorg/apache/xml/utils/IntStack;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public characters(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V
    .registers 7
    .parameter "handler"
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 201
    const-string v0, "ER_CHARS_NOT_ALLOWED"

    invoke-virtual {p1, v0, v1, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 203
    return-void
.end method

.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "handler"
    .parameter "uri"
    .parameter "localName"
    .parameter "rawName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->empty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 181
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTElementDef;->setLastOrder(I)V

    .line 183
    :cond_19
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getRequiredFound()Z

    move-result v0

    if-nez v0, :cond_37

    .line 184
    const-string v0, "ER_REQUIRED_ELEM_NOT_FOUND"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/processor/XSLTElementDef;->getRequiredElem()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 185
    :cond_37
    return-void
.end method

.method getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_elemDef:Lorg/apache/xalan/processor/XSLTElementDef;

    return-object v0
.end method

.method public ignorableWhitespace(Lorg/apache/xalan/processor/StylesheetHandler;[CII)V
    .registers 5
    .parameter "handler"
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 221
    return-void
.end method

.method public notationDecl(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "handler"
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"

    .prologue
    .line 114
    return-void
.end method

.method public processingInstruction(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "handler"
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 238
    return-void
.end method

.method public resolveEntity(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 5
    .parameter "handler"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method setElemDef(Lorg/apache/xalan/processor/XSLTElementDef;)V
    .registers 2
    .parameter "def"

    .prologue
    .line 76
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_elemDef:Lorg/apache/xalan/processor/XSLTElementDef;

    .line 77
    return-void
.end method

.method setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;Z)Lorg/xml/sax/Attributes;
    .registers 28
    .parameter "handler"
    .parameter "rawName"
    .parameter "attributes"
    .parameter "target"
    .parameter "throwError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v13

    .line 292
    .local v13, def:Lorg/apache/xalan/processor/XSLTElementDef;
    const/4 v2, 0x0

    .line 293
    .local v2, undefines:Lorg/xml/sax/helpers/AttributesImpl;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v6

    if-eqz v6, :cond_15

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xalan/templates/Stylesheet;->getCompatibleMode()Z

    move-result v6

    if-nez v6, :cond_17

    :cond_15
    if-nez p5, :cond_94

    :cond_17
    const/16 v17, 0x1

    .line 296
    .local v17, isCompatibleMode:Z
    :goto_19
    if-eqz v17, :cond_20

    .line 297
    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    .end local v2           #undefines:Lorg/xml/sax/helpers/AttributesImpl;
    invoke-direct {v2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 302
    .restart local v2       #undefines:Lorg/xml/sax/helpers/AttributesImpl;
    :cond_20
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v20, processedDefs:Ljava/util/List;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v15, errorDefs:Ljava/util/List;
    invoke-interface/range {p3 .. p3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v19

    .line 308
    .local v19, nAttrs:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_30
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_d9

    .line 310
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, attrUri:Ljava/lang/String;
    if-eqz v3, :cond_68

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_68

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "xmlns:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_66

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "xmlns"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 316
    :cond_66
    const-string v3, "http://www.w3.org/XML/1998/namespace"

    .line 318
    :cond_68
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, attrLocalName:Ljava/lang/String;
    invoke-virtual {v13, v3, v4}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributeDef(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v5

    .line 321
    .local v5, attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    if-nez v5, :cond_b3

    .line 323
    if-nez v17, :cond_97

    .line 327
    const-string v6, "ER_ATTR_NOT_ALLOWED"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 308
    .end local v5           #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    :goto_91
    add-int/lit8 v16, v16, 0x1

    goto :goto_30

    .line 293
    .end local v3           #attrUri:Ljava/lang/String;
    .end local v4           #attrLocalName:Ljava/lang/String;
    .end local v15           #errorDefs:Ljava/util/List;
    .end local v16           #i:I
    .end local v17           #isCompatibleMode:Z
    .end local v19           #nAttrs:I
    .end local v20           #processedDefs:Ljava/util/List;
    :cond_94
    const/16 v17, 0x0

    goto :goto_19

    .line 333
    .restart local v3       #attrUri:Ljava/lang/String;
    .restart local v4       #attrLocalName:Ljava/lang/String;
    .restart local v5       #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    .restart local v15       #errorDefs:Ljava/util/List;
    .restart local v16       #i:I
    .restart local v17       #isCompatibleMode:Z
    .restart local v19       #nAttrs:I
    .restart local v20       #processedDefs:Ljava/util/List;
    :cond_97
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    .end local v5           #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    .line 343
    .restart local v5       #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    :cond_b3
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v6, p1

    move-object v7, v3

    move-object v8, v4

    move-object/from16 v11, p4

    invoke-virtual/range {v5 .. v11}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v21

    .line 348
    .local v21, success:Z
    if-eqz v21, :cond_d5

    .line 349
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 351
    :cond_d5
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 355
    .end local v3           #attrUri:Ljava/lang/String;
    .end local v4           #attrLocalName:Ljava/lang/String;
    .end local v5           #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    .end local v21           #success:Z
    :cond_d9
    invoke-virtual {v13}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributes()[Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v12

    .line 356
    .local v12, attrDefs:[Lorg/apache/xalan/processor/XSLTAttributeDef;
    array-length v0, v12

    move/from16 v18, v0

    .line 358
    .local v18, nAttrDefs:I
    const/16 v16, 0x0

    :goto_e2
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_12f

    .line 360
    aget-object v5, v12, v16

    .line 361
    .restart local v5       #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    invoke-virtual {v5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getDefault()Ljava/lang/String;

    move-result-object v14

    .line 363
    .local v14, defVal:Ljava/lang/String;
    if-eqz v14, :cond_ff

    .line 365
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ff

    .line 367
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v5, v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 371
    :cond_ff
    invoke-virtual {v5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getRequired()Z

    move-result v6

    if-eqz v6, :cond_12c

    .line 373
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12c

    invoke-interface {v15, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12c

    .line 374
    const-string v6, "ER_REQUIRES_ATTRIB"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 358
    :cond_12c
    add-int/lit8 v16, v16, 0x1

    goto :goto_e2

    .line 381
    .end local v5           #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    .end local v14           #defVal:Ljava/lang/String;
    :cond_12f
    return-object v2
.end method

.method setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 11
    .parameter "handler"
    .parameter "rawName"
    .parameter "attributes"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 268
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;Z)Lorg/xml/sax/Attributes;

    .line 269
    return-void
.end method

.method public skippedEntity(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;)V
    .registers 3
    .parameter "handler"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 252
    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .parameter "handler"
    .parameter "uri"
    .parameter "localName"
    .parameter "rawName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    if-nez v0, :cond_b

    .line 163
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    .line 164
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementProcessor;->m_savedLastOrder:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/processor/XSLTElementDef;->getLastOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 165
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/XSLTElementDef;->setLastOrder(I)V

    .line 166
    return-void
.end method

.method public startNonText(Lorg/apache/xalan/processor/StylesheetHandler;)V
    .registers 2
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 146
    return-void
.end method

.method public unparsedEntityDecl(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "handler"
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .parameter "notationName"

    .prologue
    .line 134
    return-void
.end method
