.class public Lorg/apache/xalan/processor/ProcessorLRE;
.super Lorg/apache/xalan/processor/ProcessorTemplateElem;
.source "ProcessorLRE.java"


# static fields
.field static final serialVersionUID:J = -0x14ae5165319c871cL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/xalan/processor/ProcessorTemplateElem;-><init>()V

    return-void
.end method

.method private declaredXSLNS(Lorg/apache/xalan/templates/Stylesheet;)Z
    .registers 8
    .parameter "stylesheet"

    .prologue
    .line 358
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getDeclaredPrefixes()Ljava/util/List;

    move-result-object v1

    .line 359
    .local v1, declaredPrefixes:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 361
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v3, :cond_22

    .line 363
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/XMLNSDecl;

    .line 364
    .local v0, decl:Lorg/apache/xalan/templates/XMLNSDecl;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/XMLNSDecl;->getURI()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 365
    const/4 v4, 0x1

    .line 367
    .end local v0           #decl:Lorg/apache/xalan/templates/XMLNSDecl;
    :goto_1e
    return v4

    .line 361
    .restart local v0       #decl:Lorg/apache/xalan/templates/XMLNSDecl;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 367
    .end local v0           #decl:Lorg/apache/xalan/templates/XMLNSDecl;
    :cond_22
    const/4 v4, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
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
    .line 343
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 345
    .local v0, elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    instance-of v1, v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    if-eqz v1, :cond_13

    .line 347
    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    .end local v0           #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getIsLiteralResultAsStylesheet()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 349
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    .line 353
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/ProcessorTemplateElem;->endElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method protected getStylesheetRoot(Lorg/apache/xalan/processor/StylesheetHandler;)Lorg/apache/xalan/templates/Stylesheet;
    .registers 5
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getSchema()Lorg/apache/xalan/processor/XSLTSchema;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/xalan/templates/StylesheetRoot;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljavax/xml/transform/ErrorListener;)V

    .line 323
    .local v0, stylesheet:Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->isSecureProcessing()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 324
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/StylesheetRoot;->setSecureProcessing(Z)V

    .line 326
    :cond_1f
    return-object v0
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 48
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
    .line 75
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v33

    .line 76
    .local v33, p:Lorg/apache/xalan/templates/ElemTemplateElement;
    const/16 v21, 0x0

    .line 77
    .local v21, excludeXSLDecl:Z
    const/16 v27, 0x0

    .line 79
    .local v27, isLREAsStyleSheet:Z
    if-nez v33, :cond_159

    .line 83
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->popProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v31

    .line 84
    .local v31, lreProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;
    const-string v6, "http://www.w3.org/1999/XSL/Transform"

    const-string v8, "stylesheet"

    const-string v11, "xsl:stylesheet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8, v11}, Lorg/apache/xalan/processor/StylesheetHandler;->getProcessorFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;

    move-result-object v37

    .line 88
    .local v37, stylesheetProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V
    :try_end_21
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_21} :catch_c6

    .line 93
    :try_start_21
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xalan/processor/ProcessorLRE;->getStylesheetRoot(Lorg/apache/xalan/processor/StylesheetHandler;)Lorg/apache/xalan/templates/Stylesheet;
    :try_end_24
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_21 .. :try_end_24} :catch_bd
    .catch Ljavax/xml/transform/TransformerException; {:try_start_21 .. :try_end_24} :catch_c6

    move-result-object v36

    .line 102
    .local v36, stylesheet:Lorg/apache/xalan/templates/Stylesheet;
    :try_start_25
    new-instance v35, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct/range {v35 .. v35}, Lorg/apache/xml/utils/SAXSourceLocator;-><init>()V

    .line 103
    .local v35, slocator:Lorg/apache/xml/utils/SAXSourceLocator;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v29

    .line 104
    .local v29, locator:Lorg/xml/sax/Locator;
    if-eqz v29, :cond_54

    .line 106
    invoke-interface/range {v29 .. v29}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/SAXSourceLocator;->setLineNumber(I)V

    .line 107
    invoke-interface/range {v29 .. v29}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/SAXSourceLocator;->setColumnNumber(I)V

    .line 108
    invoke-interface/range {v29 .. v29}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/SAXSourceLocator;->setPublicId(Ljava/lang/String;)V

    .line 109
    invoke-interface/range {v29 .. v29}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/SAXSourceLocator;->setSystemId(Ljava/lang/String;)V

    .line 111
    :cond_54
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/Stylesheet;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 112
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/Stylesheet;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V

    .line 113
    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 115
    const/16 v27, 0x1

    .line 117
    new-instance v5, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v5}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 118
    .local v5, stylesheetAttrs:Lorg/xml/sax/helpers/AttributesImpl;
    new-instance v30, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct/range {v30 .. v30}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 119
    .local v30, lreAttrs:Lorg/xml/sax/helpers/AttributesImpl;
    invoke-interface/range {p5 .. p5}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v32

    .line 121
    .local v32, n:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_7d
    move/from16 v0, v22

    move/from16 v1, v32

    if-ge v0, v1, :cond_108

    .line 123
    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, attrLocalName:Ljava/lang/String;
    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, attrUri:Ljava/lang/String;
    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v41

    .line 127
    .local v41, value:Ljava/lang/String;
    if-eqz v9, :cond_cf

    const-string v6, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 129
    const/4 v6, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v9

    .end local v9           #attrUri:Ljava/lang/String;
    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v7

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_ba
    :goto_ba
    add-int/lit8 v22, v22, 0x1

    goto :goto_7d

    .line 95
    .end local v5           #stylesheetAttrs:Lorg/xml/sax/helpers/AttributesImpl;
    .end local v7           #attrLocalName:Ljava/lang/String;
    .end local v22           #i:I
    .end local v29           #locator:Lorg/xml/sax/Locator;
    .end local v30           #lreAttrs:Lorg/xml/sax/helpers/AttributesImpl;
    .end local v32           #n:I
    .end local v35           #slocator:Lorg/apache/xml/utils/SAXSourceLocator;
    .end local v36           #stylesheet:Lorg/apache/xalan/templates/Stylesheet;
    .end local v41           #value:Ljava/lang/String;
    :catch_bd
    move-exception v40

    .line 97
    .local v40, tfe:Ljavax/xml/transform/TransformerConfigurationException;
    new-instance v6, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v40

    invoke-direct {v6, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_c6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_25 .. :try_end_c6} :catch_c6

    .line 308
    .end local v21           #excludeXSLDecl:Z
    .end local v27           #isLREAsStyleSheet:Z
    .end local v31           #lreProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;
    .end local v33           #p:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v37           #stylesheetProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;
    .end local v40           #tfe:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_c6
    move-exception v38

    .line 310
    .local v38, te:Ljavax/xml/transform/TransformerException;
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v38

    invoke-direct {v6, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 133
    .end local v38           #te:Ljavax/xml/transform/TransformerException;
    .restart local v5       #stylesheetAttrs:Lorg/xml/sax/helpers/AttributesImpl;
    .restart local v7       #attrLocalName:Ljava/lang/String;
    .restart local v9       #attrUri:Ljava/lang/String;
    .restart local v21       #excludeXSLDecl:Z
    .restart local v22       #i:I
    .restart local v27       #isLREAsStyleSheet:Z
    .restart local v29       #locator:Lorg/xml/sax/Locator;
    .restart local v30       #lreAttrs:Lorg/xml/sax/helpers/AttributesImpl;
    .restart local v31       #lreProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;
    .restart local v32       #n:I
    .restart local v33       #p:Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v35       #slocator:Lorg/apache/xml/utils/SAXSourceLocator;
    .restart local v36       #stylesheet:Lorg/apache/xalan/templates/Stylesheet;
    .restart local v37       #stylesheetProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;
    .restart local v41       #value:Ljava/lang/String;
    :cond_cf
    :try_start_cf
    const-string v6, "xmlns:"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_df

    const-string v6, "xmlns"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e9

    :cond_df
    const-string v6, "http://www.w3.org/1999/XSL/Transform"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ba

    .line 141
    :cond_e9
    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v8, v30

    move-object v10, v7

    invoke-virtual/range {v8 .. v13}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_107
    .catch Ljavax/xml/transform/TransformerException; {:try_start_cf .. :try_end_107} :catch_c6

    goto :goto_ba

    .line 148
    .end local v7           #attrLocalName:Ljava/lang/String;
    .end local v9           #attrUri:Ljava/lang/String;
    .end local v41           #value:Ljava/lang/String;
    :cond_108
    move-object/from16 p5, v30

    .line 154
    :try_start_10a
    const-string v6, "stylesheet"

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v6, v5, v2}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_115} :catch_243
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10a .. :try_end_115} :catch_c6

    .line 176
    :try_start_115
    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 178
    new-instance v39, Lorg/apache/xalan/templates/ElemTemplate;

    invoke-direct/range {v39 .. v39}, Lorg/apache/xalan/templates/ElemTemplate;-><init>()V

    .line 179
    .local v39, template:Lorg/apache/xalan/templates/ElemTemplate;
    if-eqz v35, :cond_12a

    .line 180
    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemTemplate;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 182
    :cond_12a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/ProcessorLRE;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 184
    new-instance v10, Lorg/apache/xpath/XPath;

    const-string v11, "/"

    const/4 v14, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheetProcessor()Lorg/apache/xalan/processor/TransformerFactoryImpl;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v15

    move-object/from16 v12, v36

    move-object/from16 v13, v36

    invoke-direct/range {v10 .. v15}, Lorg/apache/xpath/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lorg/apache/xml/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    .line 187
    .local v10, rootMatch:Lorg/apache/xpath/XPath;
    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Lorg/apache/xalan/templates/ElemTemplate;->setMatch(Lorg/apache/xpath/XPath;)V

    .line 190
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/Stylesheet;->setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V

    .line 192
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getElemTemplateElement()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v33

    .line 193
    const/16 v21, 0x1

    .line 196
    .end local v5           #stylesheetAttrs:Lorg/xml/sax/helpers/AttributesImpl;
    .end local v10           #rootMatch:Lorg/apache/xpath/XPath;
    .end local v22           #i:I
    .end local v29           #locator:Lorg/xml/sax/Locator;
    .end local v30           #lreAttrs:Lorg/xml/sax/helpers/AttributesImpl;
    .end local v31           #lreProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;
    .end local v32           #n:I
    .end local v35           #slocator:Lorg/apache/xml/utils/SAXSourceLocator;
    .end local v36           #stylesheet:Lorg/apache/xalan/templates/Stylesheet;
    .end local v37           #stylesheetProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;
    .end local v39           #template:Lorg/apache/xalan/templates/ElemTemplate;
    :cond_159
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/ProcessorLRE;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v17

    .line 197
    .local v17, def:Lorg/apache/xalan/processor/XSLTElementDef;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xalan/processor/XSLTElementDef;->getClassObject()Ljava/lang/Class;

    move-result-object v16

    .line 198
    .local v16, classObject:Ljava/lang/Class;
    const/16 v26, 0x0

    .line 199
    .local v26, isExtension:Z
    const/16 v25, 0x0

    .line 200
    .local v25, isComponentDecl:Z
    const/16 v28, 0x0

    .line 202
    .local v28, isUnknownTopLevel:Z
    :goto_167
    if-eqz v33, :cond_17f

    .line 206
    move-object/from16 v0, v33

    instance-of v6, v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    if-eqz v6, :cond_269

    .line 208
    move-object/from16 v0, v33

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object/from16 v34, v0

    .line 210
    .local v34, parentElem:Lorg/apache/xalan/templates/ElemLiteralResult;
    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemLiteralResult;->containsExtensionElementURI(Ljava/lang/String;)Z
    :try_end_17c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_115 .. :try_end_17c} :catch_c6

    move-result v26

    .line 230
    .end local v34           #parentElem:Lorg/apache/xalan/templates/ElemLiteralResult;
    :cond_17d
    :goto_17d
    if-eqz v26, :cond_29d

    .line 236
    :cond_17f
    const/16 v19, 0x0

    .line 240
    .local v19, elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    if-eqz v26, :cond_2a3

    .line 244
    :try_start_183
    new-instance v20, Lorg/apache/xalan/templates/ElemExtensionCall;

    invoke-direct/range {v20 .. v20}, Lorg/apache/xalan/templates/ElemExtensionCall;-><init>()V

    .end local v19           #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .local v20, elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    move-object/from16 v19, v20

    .line 261
    .end local v20           #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v19       #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_18a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 262
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 263
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v6

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;Z)V

    .line 265
    move-object/from16 v0, v19

    instance-of v6, v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    if-eqz v6, :cond_1d5

    .line 267
    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setNamespace(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setLocalName(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setRawName(Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setIsLiteralResultAsStylesheet(Z)V
    :try_end_1d5
    .catch Ljava/lang/InstantiationException; {:try_start_183 .. :try_end_1d5} :catch_2c8
    .catch Ljava/lang/IllegalAccessException; {:try_start_183 .. :try_end_1d5} :catch_2d5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_183 .. :try_end_1d5} :catch_c6

    .line 283
    :cond_1d5
    :goto_1d5
    :try_start_1d5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/processor/ProcessorLRE;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 286
    if-nez v26, :cond_239

    move-object/from16 v0, v19

    instance-of v6, v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    if-eqz v6, :cond_239

    .line 288
    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->containsExtensionElementURI(Ljava/lang/String;)Z

    move-result v26

    .line 291
    if-eqz v26, :cond_239

    .line 295
    new-instance v19, Lorg/apache/xalan/templates/ElemExtensionCall;

    .end local v19           #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-direct/range {v19 .. v19}, Lorg/apache/xalan/templates/ElemExtensionCall;-><init>()V

    .line 297
    .restart local v19       #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 298
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceSupport()Lorg/xml/sax/helpers/NamespaceSupport;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->setPrefixes(Lorg/xml/sax/helpers/NamespaceSupport;)V

    .line 299
    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setNamespace(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setLocalName(Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, v19

    check-cast v0, Lorg/apache/xalan/templates/ElemLiteralResult;

    move-object v6, v0

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setRawName(Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/processor/ProcessorLRE;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 306
    :cond_239
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/ProcessorLRE;->appendAndPush(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 312
    return-void

    .line 157
    .end local v16           #classObject:Ljava/lang/Class;
    .end local v17           #def:Lorg/apache/xalan/processor/XSLTElementDef;
    .end local v19           #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v25           #isComponentDecl:Z
    .end local v26           #isExtension:Z
    .end local v28           #isUnknownTopLevel:Z
    .restart local v5       #stylesheetAttrs:Lorg/xml/sax/helpers/AttributesImpl;
    .restart local v22       #i:I
    .restart local v29       #locator:Lorg/xml/sax/Locator;
    .restart local v30       #lreAttrs:Lorg/xml/sax/helpers/AttributesImpl;
    .restart local v31       #lreProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;
    .restart local v32       #n:I
    .restart local v35       #slocator:Lorg/apache/xml/utils/SAXSourceLocator;
    .restart local v36       #stylesheet:Lorg/apache/xalan/templates/Stylesheet;
    .restart local v37       #stylesheetProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;
    :catch_243
    move-exception v18

    .line 166
    .local v18, e:Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Lorg/apache/xalan/templates/Stylesheet;->getDeclaredPrefixes()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_254

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lorg/apache/xalan/processor/ProcessorLRE;->declaredXSLNS(Lorg/apache/xalan/templates/Stylesheet;)Z

    move-result v6

    if-nez v6, :cond_261

    .line 169
    :cond_254
    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v8, "WG_OLD_XSLT_NS"

    const/4 v11, 0x0

    invoke-static {v8, v11}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 173
    :cond_261
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 212
    .end local v5           #stylesheetAttrs:Lorg/xml/sax/helpers/AttributesImpl;
    .end local v18           #e:Ljava/lang/Exception;
    .end local v22           #i:I
    .end local v29           #locator:Lorg/xml/sax/Locator;
    .end local v30           #lreAttrs:Lorg/xml/sax/helpers/AttributesImpl;
    .end local v31           #lreProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;
    .end local v32           #n:I
    .end local v35           #slocator:Lorg/apache/xml/utils/SAXSourceLocator;
    .end local v36           #stylesheet:Lorg/apache/xalan/templates/Stylesheet;
    .end local v37           #stylesheetProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;
    .restart local v16       #classObject:Ljava/lang/Class;
    .restart local v17       #def:Lorg/apache/xalan/processor/XSLTElementDef;
    .restart local v25       #isComponentDecl:Z
    .restart local v26       #isExtension:Z
    .restart local v28       #isUnknownTopLevel:Z
    :cond_269
    move-object/from16 v0, v33

    instance-of v6, v0, Lorg/apache/xalan/templates/Stylesheet;

    if-eqz v6, :cond_17d

    .line 214
    move-object/from16 v0, v33

    check-cast v0, Lorg/apache/xalan/templates/Stylesheet;

    move-object/from16 v34, v0

    .line 216
    .local v34, parentElem:Lorg/apache/xalan/templates/Stylesheet;
    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/Stylesheet;->containsExtensionElementURI(Ljava/lang/String;)Z

    move-result v26

    .line 218
    if-nez v26, :cond_299

    if-eqz p2, :cond_299

    const-string v6, "http://xml.apache.org/xalan"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_295

    const-string v6, "http://xml.apache.org/xslt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_299

    .line 222
    :cond_295
    const/16 v25, 0x1

    goto/16 :goto_17d

    .line 226
    :cond_299
    const/16 v28, 0x1

    goto/16 :goto_17d

    .line 233
    .end local v34           #parentElem:Lorg/apache/xalan/templates/Stylesheet;
    :cond_29d
    invoke-virtual/range {v33 .. v33}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;
    :try_end_2a0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1d5 .. :try_end_2a0} :catch_c6

    move-result-object v33

    goto/16 :goto_167

    .line 246
    .restart local v19       #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_2a3
    if-eqz v25, :cond_2b0

    .line 248
    :try_start_2a5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object/from16 v19, v0

    goto/16 :goto_18a

    .line 250
    :cond_2b0
    if-eqz v28, :cond_2bd

    .line 254
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object/from16 v19, v0

    goto/16 :goto_18a

    .line 258
    :cond_2bd
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object/from16 v19, v0
    :try_end_2c6
    .catch Ljava/lang/InstantiationException; {:try_start_2a5 .. :try_end_2c6} :catch_2c8
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a5 .. :try_end_2c6} :catch_2d5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2a5 .. :try_end_2c6} :catch_c6

    goto/16 :goto_18a

    .line 274
    :catch_2c8
    move-exception v24

    .line 276
    .local v24, ie:Ljava/lang/InstantiationException;
    :try_start_2c9
    const-string v6, "ER_FAILED_CREATING_ELEMLITRSLT"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v8, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_1d5

    .line 278
    .end local v24           #ie:Ljava/lang/InstantiationException;
    :catch_2d5
    move-exception v23

    .line 280
    .local v23, iae:Ljava/lang/IllegalAccessException;
    const-string v6, "ER_FAILED_CREATING_ELEMLITRSLT"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v6, v8, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_2e0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2c9 .. :try_end_2e0} :catch_c6

    goto/16 :goto_1d5
.end method
