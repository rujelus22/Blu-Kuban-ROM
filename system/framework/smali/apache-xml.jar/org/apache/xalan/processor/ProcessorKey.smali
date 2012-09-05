.class Lorg/apache/xalan/processor/ProcessorKey;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorKey.java"


# static fields
.field static final serialVersionUID:J = 0x3b781b9f8fa66243L


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 22
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
    .line 92
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/ProcessorKey;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v10

    .line 96
    .local v10, def:Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v15, processedDefs:Ljava/util/List;
    invoke-interface/range {p3 .. p3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v14

    .line 99
    .local v14, nAttrs:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_e
    if-ge v12, v14, :cond_84

    .line 101
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, attrUri:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, attrLocalName:Ljava/lang/String;
    invoke-virtual {v10, v4, v5}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributeDef(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v2

    .line 105
    .local v2, attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    if-nez v2, :cond_50

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "attribute is not allowed on the "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " element!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 99
    :goto_4d
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 115
    :cond_50
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v16

    .line 117
    .local v16, valueString:Ljava/lang/String;
    const-string v3, "key("

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_6d

    .line 119
    const-string v3, "ER_INVALID_KEY_CALL"

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 123
    :cond_6d
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v3, p1

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    goto :goto_4d

    .line 130
    .end local v2           #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    .end local v4           #attrUri:Ljava/lang/String;
    .end local v5           #attrLocalName:Ljava/lang/String;
    .end local v16           #valueString:Ljava/lang/String;
    :cond_84
    invoke-virtual {v10}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributes()[Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v9

    .line 131
    .local v9, attrDefs:[Lorg/apache/xalan/processor/XSLTAttributeDef;
    array-length v13, v9

    .line 133
    .local v13, nAttrDefs:I
    const/4 v12, 0x0

    :goto_8a
    if-ge v12, v13, :cond_c9

    .line 135
    aget-object v2, v9, v12

    .line 136
    .restart local v2       #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    invoke-virtual {v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getDefault()Ljava/lang/String;

    move-result-object v11

    .line 138
    .local v11, defVal:Ljava/lang/String;
    if-eqz v11, :cond_a1

    .line 140
    invoke-interface {v15, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a1

    .line 142
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 146
    :cond_a1
    invoke-virtual {v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getRequired()Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 148
    invoke-interface {v15, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c6

    .line 149
    const-string v3, "ER_REQUIRES_ATTRIB"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 133
    :cond_c6
    add-int/lit8 v12, v12, 0x1

    goto :goto_8a

    .line 155
    .end local v2           #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    .end local v11           #defVal:Ljava/lang/String;
    :cond_c9
    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 9
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
    .line 69
    new-instance v0, Lorg/apache/xalan/templates/KeyDeclaration;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/xalan/templates/KeyDeclaration;-><init>(Lorg/apache/xalan/templates/Stylesheet;I)V

    .line 71
    .local v0, kd:Lorg/apache/xalan/templates/KeyDeclaration;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/KeyDeclaration;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 72
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/KeyDeclaration;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 73
    invoke-virtual {p0, p1, p4, p5, v0}, Lorg/apache/xalan/processor/ProcessorKey;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 74
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/Stylesheet;->setKey(Lorg/apache/xalan/templates/KeyDeclaration;)V

    .line 75
    return-void
.end method
