.class public Lorg/apache/xml/utils/TreeWalker;
.super Ljava/lang/Object;
.source "TreeWalker.java"


# instance fields
.field private m_contentHandler:Lorg/xml/sax/ContentHandler;

.field protected m_dh:Lorg/apache/xml/utils/DOMHelper;

.field private m_locator:Lorg/xml/sax/helpers/LocatorImpl;

.field nextIsRaw:Z


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .registers 5
    .parameter "contentHandler"

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 57
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    .line 127
    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 128
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_1d

    .line 129
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 132
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dummy.xsl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_41} :catch_49

    .line 137
    :goto_41
    new-instance v0, Lorg/apache/xml/utils/DOM2Helper;

    invoke-direct {v0}, Lorg/apache/xml/utils/DOM2Helper;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    .line 138
    return-void

    .line 134
    :catch_49
    move-exception v0

    goto :goto_41
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;)V
    .registers 6
    .parameter "contentHandler"
    .parameter "dh"

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 57
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    .line 109
    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 110
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 113
    :try_start_19
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dummy.xsl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_3d} :catch_40

    .line 117
    :goto_3d
    iput-object p2, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    .line 118
    return-void

    .line 115
    :catch_40
    move-exception v0

    goto :goto_3d
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/apache/xml/utils/DOMHelper;Ljava/lang/String;)V
    .registers 7
    .parameter "contentHandler"
    .parameter "dh"
    .parameter "systemId"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 57
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    .line 87
    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 88
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 89
    if-eqz p3, :cond_23

    .line 90
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v0, p3}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 99
    :goto_20
    iput-object p2, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    .line 100
    return-void

    .line 94
    :cond_23
    :try_start_23
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dummy.xsl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_47} :catch_48

    goto :goto_20

    .line 96
    :catch_48
    move-exception v0

    goto :goto_20
.end method

.method private final dispatachChars(Lorg/w3c/dom/Node;)V
    .registers 7
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v1, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    if-eqz v1, :cond_e

    .line 272
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;->characters(Lorg/w3c/dom/Node;)V

    .line 279
    .end local p1
    :goto_d
    return-void

    .line 276
    .restart local p1
    :cond_e
    check-cast p1, Lorg/w3c/dom/Text;

    .end local p1
    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, data:Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_d
.end method


# virtual methods
.method protected endNode(Lorg/w3c/dom/Node;)V
    .registers 15
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    packed-switch v10, :pswitch_data_74

    .line 506
    .end local p1
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 462
    .restart local p1
    :pswitch_8
    iget-object v10, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    invoke-virtual {v10, p1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 463
    .local v8, ns:Ljava/lang/String;
    if-nez v8, :cond_12

    .line 464
    const-string v8, ""

    .line 465
    :cond_12
    iget-object v10, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v11, p0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    invoke-virtual {v11, p1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v8, v11, v12}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 470
    .local v2, atts:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    .line 472
    .local v7, nAttrs:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2c
    if-ge v4, v7, :cond_7

    .line 474
    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 475
    .local v0, attr:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, attrName:Ljava/lang/String;
    const-string v10, "xmlns"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_46

    const-string v10, "xmlns:"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_55

    .line 483
    :cond_46
    const-string v10, ":"

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .local v5, index:I
    if-gez v5, :cond_58

    const-string v9, ""

    .line 486
    .local v9, prefix:Ljava/lang/String;
    :goto_50
    iget-object v10, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v10, v9}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 472
    .end local v5           #index:I
    .end local v9           #prefix:Ljava/lang/String;
    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 483
    .restart local v5       #index:I
    :cond_58
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_50

    .end local v0           #attr:Lorg/w3c/dom/Node;
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #atts:Lorg/w3c/dom/NamedNodeMap;
    .end local v4           #i:I
    .end local v5           #index:I
    .end local v7           #nAttrs:I
    .end local v8           #ns:Ljava/lang/String;
    .restart local p1
    :pswitch_5f
    move-object v3, p1

    .line 494
    check-cast v3, Lorg/w3c/dom/EntityReference;

    .line 496
    .local v3, eref:Lorg/w3c/dom/EntityReference;
    iget-object v10, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v10, v10, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v10, :cond_7

    .line 498
    iget-object v6, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v6, Lorg/xml/sax/ext/LexicalHandler;

    .line 500
    .local v6, lh:Lorg/xml/sax/ext/LexicalHandler;
    invoke-interface {v3}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    goto :goto_7

    .line 456
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5f
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .parameter "ch"

    .prologue
    .line 76
    iput-object p1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 77
    return-void
.end method

.method protected startNode(Lorg/w3c/dom/Node;)V
    .registers 27
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lorg/apache/xml/utils/NodeConsumer;

    move/from16 v20, v0

    if-eqz v20, :cond_1d

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    check-cast v20, Lorg/apache/xml/utils/NodeConsumer;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/xml/utils/NodeConsumer;->setOriginatingNode(Lorg/w3c/dom/Node;)V

    .line 297
    :cond_1d
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/xml/sax/Locator;

    move/from16 v20, v0

    if-eqz v20, :cond_65

    move-object/from16 v14, p1

    .line 299
    check-cast v14, Lorg/xml/sax/Locator;

    .line 300
    .local v14, loc:Lorg/xml/sax/Locator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v20, v0

    invoke-interface {v14}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v20, v0

    invoke-interface {v14}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v20, v0

    invoke-interface {v14}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v20, v0

    invoke-interface {v14}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 311
    .end local v14           #loc:Lorg/xml/sax/Locator;
    :goto_5d
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v20

    packed-switch v20, :pswitch_data_1f8

    .line 443
    .end local p1
    :cond_64
    :goto_64
    :pswitch_64
    return-void

    .line 307
    .restart local p1
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_locator:Lorg/xml/sax/helpers/LocatorImpl;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    goto :goto_5d

    .line 315
    :pswitch_7c
    check-cast p1, Lorg/w3c/dom/Comment;

    .end local p1
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v8

    .line 317
    .local v8, data:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v20, v0

    if-eqz v20, :cond_64

    .line 319
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v13, Lorg/xml/sax/ext/LexicalHandler;

    .line 321
    .local v13, lh:Lorg/xml/sax/ext/LexicalHandler;
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v13, v0, v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto :goto_64

    .end local v8           #data:Ljava/lang/String;
    .end local v13           #lh:Lorg/xml/sax/ext/LexicalHandler;
    .restart local p1
    :pswitch_aa
    move-object/from16 v20, p1

    .line 333
    check-cast v20, Lorg/w3c/dom/Element;

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 334
    .local v7, atts:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v15

    .line 337
    .local v15, nAttrs:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_b7
    if-ge v10, v15, :cond_100

    .line 339
    invoke-interface {v7, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 340
    .local v5, attr:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, attrName:Ljava/lang/String;
    const-string v20, "xmlns"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_d5

    const-string v20, "xmlns:"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f4

    .line 350
    :cond_d5
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .local v11, index:I
    if-gez v11, :cond_f7

    const-string v19, ""

    .line 353
    .local v19, prefix:Ljava/lang/String;
    :goto_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .end local v11           #index:I
    .end local v19           #prefix:Ljava/lang/String;
    :cond_f4
    add-int/lit8 v10, v10, 0x1

    goto :goto_b7

    .line 350
    .restart local v11       #index:I
    :cond_f7
    add-int/lit8 v20, v11, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_e1

    .line 361
    .end local v5           #attr:Lorg/w3c/dom/Node;
    .end local v6           #attrName:Ljava/lang/String;
    .end local v11           #index:I
    :cond_100
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v17

    .line 362
    .local v17, ns:Ljava/lang/String;
    if-nez v17, :cond_112

    .line 363
    const-string v17, ""

    .line 364
    :cond_112
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Lorg/apache/xml/utils/AttList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v7, v1}, Lorg/apache/xml/utils/AttList;-><init>(Lorg/w3c/dom/NamedNodeMap;Lorg/apache/xml/utils/DOMHelper;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_64

    .end local v7           #atts:Lorg/w3c/dom/NamedNodeMap;
    .end local v10           #i:I
    .end local v15           #nAttrs:I
    .end local v17           #ns:Ljava/lang/String;
    :pswitch_148
    move-object/from16 v18, p1

    .line 371
    check-cast v18, Lorg/w3c/dom/ProcessingInstruction;

    .line 372
    .local v18, pi:Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v16

    .line 375
    .local v16, name:Ljava/lang/String;
    const-string v20, "xslt-next-is-raw"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_166

    .line 377
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    goto/16 :goto_64

    .line 381
    :cond_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_64

    .line 388
    .end local v16           #name:Ljava/lang/String;
    .end local v18           #pi:Lorg/w3c/dom/ProcessingInstruction;
    :pswitch_179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v12, v0, Lorg/xml/sax/ext/LexicalHandler;

    .line 389
    .local v12, isLexH:Z
    if-eqz v12, :cond_19e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    check-cast v20, Lorg/xml/sax/ext/LexicalHandler;

    move-object/from16 v13, v20

    .line 392
    .restart local v13       #lh:Lorg/xml/sax/ext/LexicalHandler;
    :goto_18f
    if-eqz v12, :cond_194

    .line 394
    invoke-interface {v13}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 397
    :cond_194
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/utils/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    .line 400
    if-eqz v12, :cond_64

    .line 402
    invoke-interface {v13}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto/16 :goto_64

    .line 389
    .end local v13           #lh:Lorg/xml/sax/ext/LexicalHandler;
    :cond_19e
    const/4 v13, 0x0

    goto :goto_18f

    .line 411
    .end local v12           #isLexH:Z
    :pswitch_1a0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1cf

    .line 413
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/utils/TreeWalker;->nextIsRaw:Z

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    const-string v21, "javax.xml.transform.disable-output-escaping"

    const-string v22, ""

    invoke-interface/range {v20 .. v22}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/utils/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    const-string v21, "javax.xml.transform.enable-output-escaping"

    const-string v22, ""

    invoke-interface/range {v20 .. v22}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_64

    .line 421
    :cond_1cf
    invoke-direct/range {p0 .. p1}, Lorg/apache/xml/utils/TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    goto/16 :goto_64

    :pswitch_1d4
    move-object/from16 v9, p1

    .line 427
    check-cast v9, Lorg/w3c/dom/EntityReference;

    .line 429
    .local v9, eref:Lorg/w3c/dom/EntityReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lorg/xml/sax/ext/LexicalHandler;

    move/from16 v20, v0

    if-eqz v20, :cond_64

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    move-object/from16 v20, v0

    check-cast v20, Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v9}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    goto/16 :goto_64

    .line 311
    nop

    :pswitch_data_1f8
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_64
        :pswitch_1a0
        :pswitch_179
        :pswitch_1d4
        :pswitch_64
        :pswitch_148
        :pswitch_7c
        :pswitch_64
        :pswitch_64
        :pswitch_64
    .end packed-switch
.end method

.method public traverse(Lorg/w3c/dom/Node;)V
    .registers 3
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 156
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->traverseFragment(Lorg/w3c/dom/Node;)V

    .line 158
    iget-object v0, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 159
    return-void
.end method

.method public traverse(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .registers 5
    .parameter "pos"
    .parameter "top"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 228
    :goto_5
    if-eqz p1, :cond_33

    .line 230
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 232
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 234
    .local v0, nextNode:Lorg/w3c/dom/Node;
    :cond_e
    if-nez v0, :cond_1b

    .line 236
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 238
    if-eqz p2, :cond_1d

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 256
    :cond_1b
    :goto_1b
    move-object p1, v0

    .line 257
    goto :goto_5

    .line 241
    :cond_1d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 243
    if-nez v0, :cond_e

    .line 245
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 247
    if-eqz p1, :cond_31

    if-eqz p2, :cond_e

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 249
    :cond_31
    const/4 v0, 0x0

    .line 251
    goto :goto_1b

    .line 258
    .end local v0           #nextNode:Lorg/w3c/dom/Node;
    :cond_33
    iget-object v1, p0, Lorg/apache/xml/utils/TreeWalker;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 259
    return-void
.end method

.method public traverseFragment(Lorg/w3c/dom/Node;)V
    .registers 5
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 173
    move-object v1, p1

    .line 175
    .local v1, top:Lorg/w3c/dom/Node;
    :goto_1
    if-eqz p1, :cond_30

    .line 177
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 179
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 181
    .local v0, nextNode:Lorg/w3c/dom/Node;
    :cond_a
    if-nez v0, :cond_15

    .line 183
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 185
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 206
    :cond_15
    :goto_15
    move-object p1, v0

    .line 207
    goto :goto_1

    .line 188
    :cond_17
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 190
    if-nez v0, :cond_a

    .line 192
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 194
    if-eqz p1, :cond_29

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 196
    :cond_29
    if-eqz p1, :cond_2e

    .line 197
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 199
    :cond_2e
    const/4 v0, 0x0

    .line 201
    goto :goto_15

    .line 208
    .end local v0           #nextNode:Lorg/w3c/dom/Node;
    :cond_30
    return-void
.end method
