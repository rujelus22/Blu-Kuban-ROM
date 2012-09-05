.class public Lorg/apache/xalan/processor/TransformerFactoryImpl;
.super Ljavax/xml/transform/sax/SAXTransformerFactory;
.source "TransformerFactoryImpl.java"


# static fields
.field public static final FEATURE_INCREMENTAL:Ljava/lang/String; = "http://xml.apache.org/xalan/features/incremental"

.field public static final FEATURE_OPTIMIZE:Ljava/lang/String; = "http://xml.apache.org/xalan/features/optimize"

.field public static final FEATURE_SOURCE_LOCATION:Ljava/lang/String; = "http://xml.apache.org/xalan/properties/source-location"

.field public static final XSLT_PROPERTIES:Ljava/lang/String; = "org/apache/xalan/res/XSLTInfo.properties"


# instance fields
.field private m_DOMsystemID:Ljava/lang/String;

.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private m_incremental:Z

.field private m_isSecureProcessing:Z

.field private m_optimize:Z

.field private m_source_location:Z

.field m_uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXTransformerFactory;-><init>()V

    .line 86
    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    .line 490
    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    .line 498
    iput-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    .line 1004
    new-instance v0, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 94
    return-void
.end method


# virtual methods
.method public getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .registers 23
    .parameter "source"
    .parameter "media"
    .parameter "title"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v10, 0x0

    .line 262
    .local v10, isource:Lorg/xml/sax/InputSource;
    const/4 v12, 0x0

    .line 263
    .local v12, node:Lorg/w3c/dom/Node;
    const/4 v13, 0x0

    .line 265
    .local v13, reader:Lorg/xml/sax/XMLReader;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    move/from16 v16, v0

    if-eqz v16, :cond_4b

    move-object/from16 v4, p1

    .line 267
    check-cast v4, Ljavax/xml/transform/dom/DOMSource;

    .line 269
    .local v4, dsource:Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v4}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v12

    .line 270
    invoke-virtual {v4}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .line 281
    .end local v4           #dsource:Ljavax/xml/transform/dom/DOMSource;
    .local v3, baseID:Ljava/lang/String;
    :goto_17
    new-instance v8, Lorg/apache/xml/utils/StylesheetPIHandler;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v8, v3, v0, v1, v2}, Lorg/apache/xml/utils/StylesheetPIHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v8, handler:Lorg/apache/xml/utils/StylesheetPIHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    move-object/from16 v16, v0

    if-eqz v16, :cond_35

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/apache/xml/utils/StylesheetPIHandler;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 292
    :cond_35
    if-eqz v12, :cond_54

    .line 294
    :try_start_37
    new-instance v15, Lorg/apache/xml/utils/TreeWalker;

    new-instance v16, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct/range {v16 .. v16}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    move-object/from16 v0, v16

    invoke-direct {v15, v8, v0, v3}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V

    .line 296
    .local v15, walker:Lorg/apache/xml/utils/TreeWalker;
    invoke-virtual {v15, v12}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_46
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_37 .. :try_end_46} :catch_87
    .catch Lorg/xml/sax/SAXException; {:try_start_37 .. :try_end_46} :catch_92
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_46} :catch_aa

    .line 359
    .end local v15           #walker:Lorg/apache/xml/utils/TreeWalker;
    :goto_46
    invoke-virtual {v8}, Lorg/apache/xml/utils/StylesheetPIHandler;->getAssociatedStylesheet()Ljavax/xml/transform/Source;

    move-result-object v16

    return-object v16

    .line 274
    .end local v3           #baseID:Ljava/lang/String;
    .end local v8           #handler:Lorg/apache/xml/utils/StylesheetPIHandler;
    :cond_4b
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v10

    .line 275
    invoke-virtual {v10}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #baseID:Ljava/lang/String;
    goto :goto_17

    .line 304
    .restart local v8       #handler:Lorg/apache/xml/utils/StylesheetPIHandler;
    :cond_54
    :try_start_54
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 307
    .local v7, factory:Ljavax/xml/parsers/SAXParserFactory;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 309
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    move/from16 v16, v0
    :try_end_65
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_54 .. :try_end_65} :catch_89
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_54 .. :try_end_65} :catch_9f
    .catch Ljava/lang/NoSuchMethodError; {:try_start_54 .. :try_end_65} :catch_b9
    .catch Ljava/lang/AbstractMethodError; {:try_start_54 .. :try_end_65} :catch_b7
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_54 .. :try_end_65} :catch_87
    .catch Lorg/xml/sax/SAXException; {:try_start_54 .. :try_end_65} :catch_92
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_65} :catch_aa

    if-eqz v16, :cond_72

    .line 313
    :try_start_67
    const-string v16, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_72
    .catch Lorg/xml/sax/SAXException; {:try_start_67 .. :try_end_72} :catch_bb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_67 .. :try_end_72} :catch_89
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_67 .. :try_end_72} :catch_9f
    .catch Ljava/lang/NoSuchMethodError; {:try_start_67 .. :try_end_72} :catch_b9
    .catch Ljava/lang/AbstractMethodError; {:try_start_67 .. :try_end_72} :catch_b7
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_67 .. :try_end_72} :catch_87
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_72} :catch_aa

    .line 318
    :cond_72
    :goto_72
    :try_start_72
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v11

    .line 320
    .local v11, jaxpParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v11}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_79
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_72 .. :try_end_79} :catch_89
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_72 .. :try_end_79} :catch_9f
    .catch Ljava/lang/NoSuchMethodError; {:try_start_72 .. :try_end_79} :catch_b9
    .catch Ljava/lang/AbstractMethodError; {:try_start_72 .. :try_end_79} :catch_b7
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_72 .. :try_end_79} :catch_87
    .catch Lorg/xml/sax/SAXException; {:try_start_72 .. :try_end_79} :catch_92
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_79} :catch_aa

    move-result-object v13

    .line 333
    .end local v7           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v11           #jaxpParser:Ljavax/xml/parsers/SAXParser;
    :goto_7a
    if-nez v13, :cond_80

    .line 335
    :try_start_7c
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v13

    .line 339
    :cond_80
    invoke-interface {v13, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 340
    invoke-interface {v13, v10}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    goto :goto_46

    .line 343
    :catch_87
    move-exception v16

    goto :goto_46

    .line 322
    :catch_89
    move-exception v5

    .line 324
    .local v5, ex:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v16, Lorg/xml/sax/SAXException;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v16
    :try_end_92
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_7c .. :try_end_92} :catch_87
    .catch Lorg/xml/sax/SAXException; {:try_start_7c .. :try_end_92} :catch_92
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_92} :catch_aa

    .line 348
    .end local v5           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_92
    move-exception v14

    .line 350
    .local v14, se:Lorg/xml/sax/SAXException;
    new-instance v16, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v17, "getAssociatedStylesheets failed"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 326
    .end local v14           #se:Lorg/xml/sax/SAXException;
    :catch_9f
    move-exception v6

    .line 328
    .local v6, ex1:Ljavax/xml/parsers/FactoryConfigurationError;
    :try_start_a0
    new-instance v16, Lorg/xml/sax/SAXException;

    invoke-virtual {v6}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_aa
    .catch Lorg/apache/xml/utils/StopParseException; {:try_start_a0 .. :try_end_aa} :catch_87
    .catch Lorg/xml/sax/SAXException; {:try_start_a0 .. :try_end_aa} :catch_92
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_aa} :catch_aa

    .line 353
    .end local v6           #ex1:Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_aa
    move-exception v9

    .line 355
    .local v9, ioe:Ljava/io/IOException;
    new-instance v16, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v17, "getAssociatedStylesheets failed"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 331
    .end local v9           #ioe:Ljava/io/IOException;
    :catch_b7
    move-exception v16

    goto :goto_7a

    .line 330
    :catch_b9
    move-exception v16

    goto :goto_7a

    .line 315
    .restart local v7       #factory:Ljavax/xml/parsers/SAXParserFactory;
    :catch_bb
    move-exception v16

    goto :goto_72
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 592
    const-string v0, "http://xml.apache.org/xalan/features/incremental"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 594
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    .line 602
    :goto_f
    return-object v0

    .line 596
    :cond_10
    const-string v0, "http://xml.apache.org/xalan/features/optimize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 598
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_f

    .line 600
    :cond_20
    const-string v0, "http://xml.apache.org/xalan/properties/source-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 602
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_f

    .line 605
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_ATTRIB_VALUE_NOT_RECOGNIZED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDOMsystemID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .registers 2

    .prologue
    .line 1013
    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"

    .prologue
    const/4 v0, 0x1

    .line 440
    if-nez p1, :cond_10

    .line 442
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ER_GET_FEATURE_NULL_NAME"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_10
    const-string v1, "http://javax.xml.transform.dom.DOMResult/feature"

    if-eq v1, p1, :cond_30

    const-string v1, "http://javax.xml.transform.dom.DOMSource/feature"

    if-eq v1, p1, :cond_30

    const-string v1, "http://javax.xml.transform.sax.SAXResult/feature"

    if-eq v1, p1, :cond_30

    const-string v1, "http://javax.xml.transform.sax.SAXSource/feature"

    if-eq v1, p1, :cond_30

    const-string v1, "http://javax.xml.transform.stream.StreamResult/feature"

    if-eq v1, p1, :cond_30

    const-string v1, "http://javax.xml.transform.stream.StreamSource/feature"

    if-eq v1, p1, :cond_30

    const-string v1, "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

    if-eq v1, p1, :cond_30

    const-string v1, "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"

    if-ne v1, p1, :cond_31

    .line 470
    :cond_30
    :goto_30
    return v0

    .line 456
    :cond_31
    const-string v1, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "http://javax.xml.transform.stream.StreamResult/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 466
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 467
    iget-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    goto :goto_30

    .line 470
    :cond_7c
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .registers 2

    .prologue
    .line 1000
    iget-object v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object v0
.end method

.method public isSecureProcessing()Z
    .registers 2

    .prologue
    .line 1041
    iget-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    return v0
.end method

.method public newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;
    .registers 18
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 844
    invoke-interface/range {p1 .. p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, baseID:Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 847
    invoke-static {v1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 851
    :cond_a
    move-object/from16 v0, p1

    instance-of v14, v0, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v14, :cond_2e

    move-object/from16 v3, p1

    .line 853
    check-cast v3, Ljavax/xml/transform/dom/DOMSource;

    .line 854
    .local v3, dsource:Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v3}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 856
    .local v11, node:Lorg/w3c/dom/Node;
    if-eqz v11, :cond_21

    .line 857
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->processFromNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljavax/xml/transform/Templates;

    move-result-object v14

    .line 970
    .end local v3           #dsource:Ljavax/xml/transform/dom/DOMSource;
    .end local v11           #node:Lorg/w3c/dom/Node;
    .end local p1
    :goto_20
    return-object v14

    .line 860
    .restart local v3       #dsource:Ljavax/xml/transform/dom/DOMSource;
    .restart local v11       #node:Lorg/w3c/dom/Node;
    .restart local p1
    :cond_21
    const-string v14, "ER_ILLEGAL_DOMSOURCE_INPUT"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 863
    .local v10, messageStr:Ljava/lang/String;
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 867
    .end local v3           #dsource:Ljavax/xml/transform/dom/DOMSource;
    .end local v10           #messageStr:Ljava/lang/String;
    .end local v11           #node:Lorg/w3c/dom/Node;
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;

    move-result-object v2

    .line 868
    .local v2, builder:Ljavax/xml/transform/sax/TemplatesHandler;
    invoke-interface {v2, v1}, Ljavax/xml/transform/sax/TemplatesHandler;->setSystemId(Ljava/lang/String;)V

    .line 872
    :try_start_35
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v8

    .line 873
    .local v8, isource:Lorg/xml/sax/InputSource;
    invoke-virtual {v8, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 874
    const/4 v12, 0x0

    .line 876
    .local v12, reader:Lorg/xml/sax/XMLReader;
    move-object/from16 v0, p1

    instance-of v14, v0, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v14, :cond_49

    .line 877
    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_48
    .catch Lorg/xml/sax/SAXException; {:try_start_35 .. :try_end_48} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_48} :catch_a0

    move-result-object v12

    .line 879
    :cond_49
    if-nez v12, :cond_67

    .line 885
    :try_start_4b
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 888
    .local v7, factory:Ljavax/xml/parsers/SAXParserFactory;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 890
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z
    :try_end_57
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4b .. :try_end_57} :catch_78
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_4b .. :try_end_57} :catch_95
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4b .. :try_end_57} :catch_dc
    .catch Ljava/lang/AbstractMethodError; {:try_start_4b .. :try_end_57} :catch_da
    .catch Lorg/xml/sax/SAXException; {:try_start_4b .. :try_end_57} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_57} :catch_a0

    if-eqz v14, :cond_5f

    .line 894
    :try_start_59
    const-string v14, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v15, 0x1

    invoke-virtual {v7, v14, v15}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_5f
    .catch Lorg/xml/sax/SAXException; {:try_start_59 .. :try_end_5f} :catch_de
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_59 .. :try_end_5f} :catch_78
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_59 .. :try_end_5f} :catch_95
    .catch Ljava/lang/NoSuchMethodError; {:try_start_59 .. :try_end_5f} :catch_dc
    .catch Ljava/lang/AbstractMethodError; {:try_start_59 .. :try_end_5f} :catch_da
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5f} :catch_a0

    .line 899
    :cond_5f
    :goto_5f
    :try_start_5f
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v9

    .line 901
    .local v9, jaxpParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v9}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_66
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5f .. :try_end_66} :catch_78
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_5f .. :try_end_66} :catch_95
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5f .. :try_end_66} :catch_dc
    .catch Ljava/lang/AbstractMethodError; {:try_start_5f .. :try_end_66} :catch_da
    .catch Lorg/xml/sax/SAXException; {:try_start_5f .. :try_end_66} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_66} :catch_a0

    move-result-object v12

    .line 915
    .end local v7           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v9           #jaxpParser:Ljavax/xml/parsers/SAXParser;
    :cond_67
    :goto_67
    if-nez v12, :cond_6d

    .line 916
    :try_start_69
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v12

    .line 921
    :cond_6d
    invoke-interface {v12, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 922
    invoke-interface {v12, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_73
    .catch Lorg/xml/sax/SAXException; {:try_start_69 .. :try_end_73} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_73} :catch_a0

    .line 970
    .end local v8           #isource:Lorg/xml/sax/InputSource;
    .end local v12           #reader:Lorg/xml/sax/XMLReader;
    :goto_73
    invoke-interface {v2}, Ljavax/xml/transform/sax/TemplatesHandler;->getTemplates()Ljavax/xml/transform/Templates;

    move-result-object v14

    goto :goto_20

    .line 903
    .restart local v8       #isource:Lorg/xml/sax/InputSource;
    .restart local v12       #reader:Lorg/xml/sax/XMLReader;
    :catch_78
    move-exception v5

    .line 905
    .local v5, ex:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_79
    new-instance v14, Lorg/xml/sax/SAXException;

    invoke-direct {v14, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v14
    :try_end_7f
    .catch Lorg/xml/sax/SAXException; {:try_start_79 .. :try_end_7f} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7f} :catch_a0

    .line 924
    .end local v5           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    .end local v8           #isource:Lorg/xml/sax/InputSource;
    .end local v12           #reader:Lorg/xml/sax/XMLReader;
    :catch_7f
    move-exception v13

    .line 926
    .local v13, se:Lorg/xml/sax/SAXException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v14, :cond_bd

    .line 930
    :try_start_86
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v15, Ljavax/xml/transform/TransformerException;

    invoke-direct {v15, v13}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v14, v15}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_92
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_86 .. :try_end_92} :catch_93
    .catch Ljavax/xml/transform/TransformerException; {:try_start_86 .. :try_end_92} :catch_b6

    goto :goto_73

    .line 932
    :catch_93
    move-exception v6

    .line 934
    .local v6, ex1:Ljavax/xml/transform/TransformerConfigurationException;
    throw v6

    .line 907
    .end local v6           #ex1:Ljavax/xml/transform/TransformerConfigurationException;
    .end local v13           #se:Lorg/xml/sax/SAXException;
    .restart local v8       #isource:Lorg/xml/sax/InputSource;
    .restart local v12       #reader:Lorg/xml/sax/XMLReader;
    :catch_95
    move-exception v6

    .line 909
    .local v6, ex1:Ljavax/xml/parsers/FactoryConfigurationError;
    :try_start_96
    new-instance v14, Lorg/xml/sax/SAXException;

    invoke-virtual {v6}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_a0
    .catch Lorg/xml/sax/SAXException; {:try_start_96 .. :try_end_a0} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a0} :catch_a0

    .line 946
    .end local v6           #ex1:Ljavax/xml/parsers/FactoryConfigurationError;
    .end local v8           #isource:Lorg/xml/sax/InputSource;
    .end local v12           #reader:Lorg/xml/sax/XMLReader;
    :catch_a0
    move-exception v4

    .line 948
    .local v4, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v14, :cond_d0

    .line 952
    :try_start_a7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v15, Ljavax/xml/transform/TransformerException;

    invoke-direct {v15, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v14, v15}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_b3
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_a7 .. :try_end_b3} :catch_c7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a7 .. :try_end_b3} :catch_c9

    .line 953
    const/4 v14, 0x0

    goto/16 :goto_20

    .line 936
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v13       #se:Lorg/xml/sax/SAXException;
    :catch_b6
    move-exception v6

    .line 938
    .local v6, ex1:Ljavax/xml/transform/TransformerException;
    new-instance v14, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v14, v6}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 943
    .end local v6           #ex1:Ljavax/xml/transform/TransformerException;
    :cond_bd
    new-instance v14, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {v13}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v13}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 955
    .end local v13           #se:Lorg/xml/sax/SAXException;
    .restart local v4       #e:Ljava/lang/Exception;
    :catch_c7
    move-exception v6

    .line 957
    .local v6, ex1:Ljavax/xml/transform/TransformerConfigurationException;
    throw v6

    .line 959
    .end local v6           #ex1:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_c9
    move-exception v6

    .line 961
    .local v6, ex1:Ljavax/xml/transform/TransformerException;
    new-instance v14, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v14, v6}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 966
    .end local v6           #ex1:Ljavax/xml/transform/TransformerException;
    :cond_d0
    new-instance v14, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v4}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 912
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v8       #isource:Lorg/xml/sax/InputSource;
    .restart local v12       #reader:Lorg/xml/sax/XMLReader;
    :catch_da
    move-exception v14

    goto :goto_67

    .line 911
    :catch_dc
    move-exception v14

    goto :goto_67

    .line 896
    .restart local v7       #factory:Ljavax/xml/parsers/SAXParserFactory;
    :catch_de
    move-exception v14

    goto :goto_5f
.end method

.method public newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Lorg/apache/xalan/processor/StylesheetHandler;

    invoke-direct {v0, p0}, Lorg/apache/xalan/processor/StylesheetHandler;-><init>(Lorg/apache/xalan/processor/TransformerFactoryImpl;)V

    return-object v0
.end method

.method public newTransformer()Ljavax/xml/transform/Transformer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 823
    new-instance v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    return-object v0
.end method

.method public newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;
    .registers 8
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 776
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v2

    .line 783
    .local v2, tmpl:Ljavax/xml/transform/Templates;
    if-nez v2, :cond_9

    move-object v3, v4

    .line 795
    .end local v2           #tmpl:Ljavax/xml/transform/Templates;
    :goto_8
    return-object v3

    .line 784
    .restart local v2       #tmpl:Ljavax/xml/transform/Templates;
    :cond_9
    invoke-interface {v2}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 785
    .local v3, transformer:Ljavax/xml/transform/Transformer;
    iget-object v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    invoke-virtual {v3, v5}, Ljavax/xml/transform/Transformer;->setURIResolver(Ljavax/xml/transform/URIResolver;)V
    :try_end_12
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_12} :catch_13

    goto :goto_8

    .line 788
    .end local v2           #tmpl:Ljavax/xml/transform/Templates;
    .end local v3           #transformer:Ljavax/xml/transform/Transformer;
    :catch_13
    move-exception v0

    .line 790
    .local v0, ex:Ljavax/xml/transform/TransformerConfigurationException;
    iget-object v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v5, :cond_28

    .line 794
    :try_start_18
    iget-object v5, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    invoke-interface {v5, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1d
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_18 .. :try_end_1d} :catch_1f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_18 .. :try_end_1d} :catch_21

    move-object v3, v4

    .line 795
    goto :goto_8

    .line 797
    :catch_1f
    move-exception v1

    .line 799
    .local v1, ex1:Ljavax/xml/transform/TransformerConfigurationException;
    throw v1

    .line 801
    .end local v1           #ex1:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_21
    move-exception v1

    .line 803
    .local v1, ex1:Ljavax/xml/transform/TransformerException;
    new-instance v4, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v4, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 806
    .end local v1           #ex1:Ljavax/xml/transform/TransformerException;
    :cond_28
    throw v0
.end method

.method public newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 755
    new-instance v0, Lorg/apache/xalan/transformer/TransformerIdentityImpl;

    iget-boolean v1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    invoke-direct {v0, v1}, Lorg/apache/xalan/transformer/TransformerIdentityImpl;-><init>(Z)V

    return-object v0
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Source;)Ljavax/xml/transform/sax/TransformerHandler;
    .registers 4
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v0

    .line 683
    .local v0, templates:Ljavax/xml/transform/Templates;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 685
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v1

    goto :goto_7
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;
    .registers 7
    .parameter "templates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 701
    :try_start_0
    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/transformer/TransformerImpl;

    .line 703
    .local v3, transformer:Lorg/apache/xalan/transformer/TransformerImpl;
    iget-object v4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    invoke-virtual {v3, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    .line 704
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xalan/transformer/TransformerImpl;->getInputContentHandler(Z)Lorg/xml/sax/ContentHandler;

    move-result-object v2

    check-cast v2, Ljavax/xml/transform/sax/TransformerHandler;
    :try_end_12
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_12} :catch_13

    .line 716
    .end local v3           #transformer:Lorg/apache/xalan/transformer/TransformerImpl;
    :goto_12
    return-object v2

    .line 709
    :catch_13
    move-exception v0

    .line 711
    .local v0, ex:Ljavax/xml/transform/TransformerConfigurationException;
    iget-object v4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v4, :cond_28

    .line 715
    :try_start_18
    iget-object v4, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    invoke-interface {v4, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_1d
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_18 .. :try_end_1d} :catch_1f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_18 .. :try_end_1d} :catch_21

    .line 716
    const/4 v2, 0x0

    goto :goto_12

    .line 718
    :catch_1f
    move-exception v1

    .line 720
    .local v1, ex1:Ljavax/xml/transform/TransformerConfigurationException;
    throw v1

    .line 722
    .end local v1           #ex1:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_21
    move-exception v1

    .line 724
    .local v1, ex1:Ljavax/xml/transform/TransformerException;
    new-instance v4, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v4, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 728
    .end local v1           #ex1:Ljavax/xml/transform/TransformerException;
    :cond_28
    throw v0
.end method

.method public newXMLFilter(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLFilter;
    .registers 4
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v0

    .line 623
    .local v0, templates:Ljavax/xml/transform/Templates;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 625
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;

    move-result-object v1

    goto :goto_7
.end method

.method public newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;
    .registers 5
    .parameter "templates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 643
    :try_start_0
    new-instance v2, Lorg/apache/xalan/transformer/TrAXFilter;

    invoke-direct {v2, p1}, Lorg/apache/xalan/transformer/TrAXFilter;-><init>(Ljavax/xml/transform/Templates;)V
    :try_end_5
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_5} :catch_6

    .line 652
    :goto_5
    return-object v2

    .line 645
    :catch_6
    move-exception v0

    .line 647
    .local v0, ex:Ljavax/xml/transform/TransformerConfigurationException;
    iget-object v2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v2, :cond_1b

    .line 651
    :try_start_b
    iget-object v2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    invoke-interface {v2, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_10
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_10} :catch_14

    .line 652
    const/4 v2, 0x0

    goto :goto_5

    .line 654
    :catch_12
    move-exception v1

    .line 656
    .local v1, ex1:Ljavax/xml/transform/TransformerConfigurationException;
    throw v1

    .line 658
    .end local v1           #ex1:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_14
    move-exception v1

    .line 660
    .local v1, ex1:Ljavax/xml/transform/TransformerException;
    new-instance v2, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v2, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 663
    .end local v1           #ex1:Ljavax/xml/transform/TransformerException;
    :cond_1b
    throw v0
.end method

.method public processFromNode(Lorg/w3c/dom/Node;)Ljavax/xml/transform/Templates;
    .registers 11
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 114
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;

    move-result-object v0

    .line 115
    .local v0, builder:Ljavax/xml/transform/sax/TemplatesHandler;
    new-instance v5, Lorg/apache/xml/utils/TreeWalker;

    new-instance v7, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct {v7}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    invoke-interface {v0}, Ljavax/xml/transform/sax/TemplatesHandler;->getSystemId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v0, v7, v8}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V

    .line 119
    .local v5, walker:Lorg/apache/xml/utils/TreeWalker;
    invoke-virtual {v5, p1}, Lorg/apache/xml/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V

    .line 121
    invoke-interface {v0}, Ljavax/xml/transform/sax/TemplatesHandler;->getTemplates()Ljavax/xml/transform/Templates;
    :try_end_19
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_19} :catch_1b
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_19} :catch_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_42

    move-result-object v6

    .line 179
    .end local v0           #builder:Ljavax/xml/transform/sax/TemplatesHandler;
    .end local v5           #walker:Lorg/apache/xml/utils/TreeWalker;
    :goto_1a
    return-object v6

    .line 123
    :catch_1b
    move-exception v3

    .line 125
    .local v3, se:Lorg/xml/sax/SAXException;
    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v7, :cond_34

    .line 129
    :try_start_20
    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v8, Ljavax/xml/transform/TransformerException;

    invoke-direct {v8, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v7, v8}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_2a
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_20 .. :try_end_2a} :catch_2b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_20 .. :try_end_2a} :catch_2d

    goto :goto_1a

    .line 131
    :catch_2b
    move-exception v2

    .line 133
    .local v2, ex:Ljavax/xml/transform/TransformerConfigurationException;
    throw v2

    .line 135
    .end local v2           #ex:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_2d
    move-exception v2

    .line 137
    .local v2, ex:Ljavax/xml/transform/TransformerException;
    new-instance v6, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v6, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 148
    .end local v2           #ex:Ljavax/xml/transform/TransformerException;
    :cond_34
    new-instance v7, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v8, "ER_PROCESSFROMNODE_FAILED"

    invoke-static {v8, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v3}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 152
    .end local v3           #se:Lorg/xml/sax/SAXException;
    :catch_40
    move-exception v4

    .line 155
    .local v4, tce:Ljavax/xml/transform/TransformerConfigurationException;
    throw v4

    .line 162
    .end local v4           #tce:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_42
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v7, :cond_5b

    .line 168
    :try_start_47
    iget-object v7, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v8, Ljavax/xml/transform/TransformerException;

    invoke-direct {v8, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v7, v8}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_51
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_47 .. :try_end_51} :catch_52
    .catch Ljavax/xml/transform/TransformerException; {:try_start_47 .. :try_end_51} :catch_54

    goto :goto_1a

    .line 170
    :catch_52
    move-exception v2

    .line 172
    .local v2, ex:Ljavax/xml/transform/TransformerConfigurationException;
    throw v2

    .line 174
    .end local v2           #ex:Ljavax/xml/transform/TransformerConfigurationException;
    :catch_54
    move-exception v2

    .line 176
    .local v2, ex:Ljavax/xml/transform/TransformerException;
    new-instance v6, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v6, v2}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 186
    .end local v2           #ex:Ljavax/xml/transform/TransformerException;
    :cond_5b
    new-instance v7, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v8, "ER_PROCESSFROMNODE_FAILED"

    invoke-static {v8, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method processFromNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljavax/xml/transform/Templates;
    .registers 4
    .parameter "node"
    .parameter "systemID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 227
    iput-object p2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_DOMsystemID:Ljava/lang/String;

    .line 229
    invoke-virtual {p0, p1}, Lorg/apache/xalan/processor/TransformerFactoryImpl;->processFromNode(Lorg/w3c/dom/Node;)Ljavax/xml/transform/Templates;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 513
    const-string v0, "http://xml.apache.org/xalan/features/incremental"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 515
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    .line 518
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    .line 578
    :goto_17
    return-void

    .line 520
    .restart local p2
    :cond_18
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 523
    new-instance v0, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_incremental:Z

    goto :goto_17

    .line 528
    .restart local p2
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_BAD_VALUE"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_3c
    const-string v0, "http://xml.apache.org/xalan/features/optimize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 533
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_51

    .line 536
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    goto :goto_17

    .line 538
    .restart local p2
    :cond_51
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_63

    .line 541
    new-instance v0, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_optimize:Z

    goto :goto_17

    .line 546
    .restart local p2
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_BAD_VALUE"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_75
    const-string v0, "http://xml.apache.org/xalan/properties/source-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 557
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_8a

    .line 560
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    goto :goto_17

    .line 562
    .restart local p2
    :cond_8a
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_9d

    .line 565
    new-instance v0, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_source_location:Z

    goto/16 :goto_17

    .line 570
    .restart local p2
    :cond_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_BAD_VALUE"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_NOT_SUPPORTED"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .registers 5
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1027
    if-nez p1, :cond_f

    .line 1028
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ER_ERRORLISTENER"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_f
    iput-object p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 1032
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 7
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .prologue
    .line 404
    if-nez p1, :cond_f

    .line 405
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ER_SET_FEATURE_NULL_NAME"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_f
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 412
    iput-boolean p2, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_isSecureProcessing:Z

    .line 423
    return-void

    .line 418
    :cond_1a
    new-instance v0, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v1, "ER_UNSUPPORTED_FEATURE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .registers 2
    .parameter "resolver"

    .prologue
    .line 988
    iput-object p1, p0, Lorg/apache/xalan/processor/TransformerFactoryImpl;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    .line 989
    return-void
.end method
