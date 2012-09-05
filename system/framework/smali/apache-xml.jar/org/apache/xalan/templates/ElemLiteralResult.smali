.class public Lorg/apache/xalan/templates/ElemLiteralResult;
.super Lorg/apache/xalan/templates/ElemUse;
.source "ElemLiteralResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/ElemLiteralResult$Attribute;,
        Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;
    }
.end annotation


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""

.field static final serialVersionUID:J = -0x78c8b870c7d06eacL


# instance fields
.field private isLiteralResultAsStylesheet:Z

.field private m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

.field private m_avts:Ljava/util/List;

.field private m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

.field private m_localName:Ljava/lang/String;

.field private m_namespace:Ljava/lang/String;

.field private m_rawName:Ljava/lang/String;

.field private m_version:Ljava/lang/String;

.field private m_xslAttr:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUse;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->isLiteralResultAsStylesheet:Z

    .line 121
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    .line 125
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    .line 732
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xalan/templates/ElemLiteralResult;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    return-object v0
.end method

.method private excludeResultNSDecl(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1282
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_9

    .line 1284
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemLiteralResult;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1287
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method protected accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .registers 3
    .parameter "visitor"

    .prologue
    .line 1443
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitLiteralResultElement(Lorg/apache/xalan/templates/ElemLiteralResult;)Z

    move-result v0

    return v0
.end method

.method public addLiteralResultAttribute(Ljava/lang/String;)V
    .registers 3
    .parameter "att"

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    if-nez v0, :cond_b

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    .line 152
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_xslAttr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public addLiteralResultAttribute(Lorg/apache/xalan/templates/AVT;)V
    .registers 3
    .parameter "avt"

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-nez v0, :cond_b

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    .line 138
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 7
    .parameter "visitor"
    .parameter "callAttrs"

    .prologue
    .line 1452
    if-eqz p2, :cond_1e

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v3, :cond_1e

    .line 1454
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1456
    .local v2, nAttrs:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_e
    if-ltz v1, :cond_1e

    .line 1458
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    .line 1459
    .local v0, avt:Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1456
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1462
    .end local v0           #avt:Lorg/apache/xalan/templates/AVT;
    .end local v1           #i:I
    .end local v2           #nAttrs:I
    :cond_1e
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemUse;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 1463
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 8
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 101
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v1

    .line 102
    .local v1, cstate:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v4

    .line 103
    .local v4, vnames:Ljava/util/Vector;
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v5, :cond_2b

    .line 105
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 107
    .local v3, nAttrs:I
    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_17
    if-ltz v2, :cond_2b

    .line 109
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    .line 110
    .local v0, avt:Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 107
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 113
    .end local v0           #avt:Lorg/apache/xalan/templates/AVT;
    .end local v2           #i:I
    .end local v3           #nAttrs:I
    :cond_2b
    return-void
.end method

.method public containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "prefix"
    .parameter "uri"

    .prologue
    const/4 v1, 0x1

    .line 301
    if-eqz p2, :cond_b

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    if-nez v2, :cond_10

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v2, :cond_10

    .line 305
    :cond_b
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemUse;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 323
    :cond_f
    :goto_f
    return v1

    .line 307
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_18

    .line 308
    const-string p1, "#default"

    .line 312
    :cond_18
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    if-eqz v2, :cond_38

    .line 313
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v2}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 315
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 320
    .end local v0           #i:I
    :cond_38
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v2, p2}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 323
    :cond_44
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemUse;->containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_f
.end method

.method public containsExtensionElementURI(Ljava/lang/String;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 1187
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_6

    .line 1188
    const/4 v0, 0x0

    .line 1190
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public enumerateLiteralResultAttributes()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 1431
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_5
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 19
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1303
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v2

    .line 1311
    .local v2, rhandler:Lorg/apache/xml/serializer/SerializationHandler;
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->executeNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 1315
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getRawName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_21} :catch_68

    .line 1329
    const/4 v14, 0x0

    .line 1334
    .local v14, tException:Ljavax/xml/transform/TransformerException;
    :try_start_22
    invoke-super/range {p0 .. p1}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v3, :cond_6f

    .line 1340
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    .line 1342
    .local v11, nAttrs:I
    add-int/lit8 v10, v11, -0x1

    .local v10, i:I
    :goto_35
    if-ltz v10, :cond_6f

    .line 1344
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xalan/templates/AVT;

    .line 1345
    .local v9, avt:Lorg/apache/xalan/templates/AVT;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v16

    .line 1346
    .local v16, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v13

    .line 1347
    .local v13, sourceNode:I
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v9, v0, v13, v1}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v7

    .line 1350
    .local v7, stringedValue:Ljava/lang/String;
    if-eqz v7, :cond_65

    .line 1358
    invoke-virtual {v9}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CDATA"

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_65
    .catch Ljavax/xml/transform/TransformerException; {:try_start_22 .. :try_end_65} :catch_89
    .catch Lorg/xml/sax/SAXException; {:try_start_22 .. :try_end_65} :catch_8c

    .line 1342
    :cond_65
    add-int/lit8 v10, v10, -0x1

    goto :goto_35

    .line 1317
    .end local v7           #stringedValue:Ljava/lang/String;
    .end local v9           #avt:Lorg/apache/xalan/templates/AVT;
    .end local v10           #i:I
    .end local v11           #nAttrs:I
    .end local v13           #sourceNode:I
    .end local v14           #tException:Ljavax/xml/transform/TransformerException;
    .end local v16           #xctxt:Lorg/apache/xpath/XPathContext;
    :catch_68
    move-exception v12

    .line 1319
    .local v12, se:Lorg/xml/sax/SAXException;
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v12}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1370
    .end local v12           #se:Lorg/xml/sax/SAXException;
    .restart local v14       #tException:Ljavax/xml/transform/TransformerException;
    :cond_6f
    const/4 v3, 0x1

    :try_start_70
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V
    :try_end_77
    .catch Ljavax/xml/transform/TransformerException; {:try_start_70 .. :try_end_77} :catch_89
    .catch Lorg/xml/sax/SAXException; {:try_start_70 .. :try_end_77} :catch_8c

    .line 1389
    :goto_77
    :try_start_77
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getRawName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Lorg/xml/sax/SAXException; {:try_start_77 .. :try_end_86} :catch_93

    .line 1406
    if-eqz v14, :cond_9d

    .line 1407
    throw v14

    .line 1372
    :catch_89
    move-exception v15

    .line 1375
    .local v15, te:Ljavax/xml/transform/TransformerException;
    move-object v14, v15

    .line 1380
    goto :goto_77

    .line 1377
    .end local v15           #te:Ljavax/xml/transform/TransformerException;
    :catch_8c
    move-exception v12

    .line 1379
    .restart local v12       #se:Lorg/xml/sax/SAXException;
    new-instance v14, Ljavax/xml/transform/TransformerException;

    .end local v14           #tException:Ljavax/xml/transform/TransformerException;
    invoke-direct {v14, v12}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    .restart local v14       #tException:Ljavax/xml/transform/TransformerException;
    goto :goto_77

    .line 1391
    .end local v12           #se:Lorg/xml/sax/SAXException;
    :catch_93
    move-exception v12

    .line 1397
    .restart local v12       #se:Lorg/xml/sax/SAXException;
    if-eqz v14, :cond_97

    .line 1398
    throw v14

    .line 1400
    :cond_97
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v12}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1409
    .end local v12           #se:Lorg/xml/sax/SAXException;
    :cond_9d
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->unexecuteNSDecls(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 1414
    :try_start_a0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/xml/serializer/SerializationHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_a7
    .catch Lorg/xml/sax/SAXException; {:try_start_a0 .. :try_end_a7} :catch_a8

    .line 1420
    return-void

    .line 1416
    :catch_a8
    move-exception v12

    .line 1418
    .restart local v12       #se:Lorg/xml/sax/SAXException;
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v12}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "rawName"

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLiteralResultAttribute(Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;

    move-result-object v0

    .line 280
    .local v0, avt:Lorg/apache/xalan/templates/AVT;
    if-eqz v0, :cond_b

    .line 282
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object v1

    .line 285
    :goto_a
    return-object v1

    :cond_b
    const-string v1, ""

    goto :goto_a
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 224
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/ElemLiteralResult;->getLiteralResultAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;

    move-result-object v0

    .line 226
    .local v0, avt:Lorg/apache/xalan/templates/AVT;
    if-eqz v0, :cond_b

    .line 228
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object v1

    .line 231
    :goto_a
    return-object v1

    :cond_b
    const-string v1, ""

    goto :goto_a
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .prologue
    .line 550
    new-instance v0, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;

    invoke-direct {v0, p0}, Lorg/apache/xalan/templates/ElemLiteralResult$LiteralElementAttributes;-><init>(Lorg/apache/xalan/templates/ElemLiteralResult;)V

    return-object v0
.end method

.method public getExtensionElementPrefix(I)Ljava/lang/String;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 1158
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_a

    .line 1159
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1161
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionElementPrefixCount()I
    .registers 2

    .prologue
    .line 1172
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getIsLiteralResultAsStylesheet()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->isLiteralResultAsStylesheet:Z

    return v0
.end method

.method public getLiteralResultAttribute(Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;
    .registers 8
    .parameter "name"

    .prologue
    .line 245
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v4, :cond_5e

    .line 247
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 248
    .local v2, nAttrs:I
    const/4 v3, 0x0

    .line 249
    .local v3, namespace:Ljava/lang/String;
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_d
    if-ltz v1, :cond_5e

    .line 251
    iget-object v4, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    .line 252
    .local v0, avt:Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v3

    .line 254
    if-eqz v3, :cond_46

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    :cond_46
    if-eqz v3, :cond_50

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    :cond_50
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 263
    .end local v0           #avt:Lorg/apache/xalan/templates/AVT;
    .end local v1           #i:I
    .end local v2           #nAttrs:I
    .end local v3           #namespace:Ljava/lang/String;
    :cond_5a
    :goto_5a
    return-object v0

    .line 249
    .restart local v0       #avt:Lorg/apache/xalan/templates/AVT;
    .restart local v1       #i:I
    .restart local v2       #nAttrs:I
    .restart local v3       #namespace:Ljava/lang/String;
    :cond_5b
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 263
    .end local v0           #avt:Lorg/apache/xalan/templates/AVT;
    .end local v1           #i:I
    .end local v2           #nAttrs:I
    .end local v3           #namespace:Ljava/lang/String;
    :cond_5e
    const/4 v0, 0x0

    goto :goto_5a
.end method

.method public getLiteralResultAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;
    .registers 7
    .parameter "namespaceURI"
    .parameter "localName"

    .prologue
    .line 193
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v3, :cond_2e

    .line 195
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 197
    .local v2, nAttrs:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_c
    if-ltz v1, :cond_2e

    .line 199
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    .line 201
    .local v0, avt:Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 209
    .end local v0           #avt:Lorg/apache/xalan/templates/AVT;
    .end local v1           #i:I
    .end local v2           #nAttrs:I
    :goto_2a
    return-object v0

    .line 197
    .restart local v0       #avt:Lorg/apache/xalan/templates/AVT;
    .restart local v1       #i:I
    .restart local v2       #nAttrs:I
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 209
    .end local v0           #avt:Lorg/apache/xalan/templates/AVT;
    .end local v1           #i:I
    .end local v2           #nAttrs:I
    :cond_2e
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public getLocalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1213
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 4

    .prologue
    .line 519
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x1

    .line 520
    .local v0, len:I
    if-lez v0, :cond_19

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_18
    return-object v1

    :cond_19
    const-string v1, ""

    goto :goto_18
.end method

.method public getRawName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1241
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_version:Ljava/lang/String;

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 1201
    const/16 v0, 0x4d

    return v0
.end method

.method needToCheckExclude()Z
    .registers 2

    .prologue
    .line 402
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getPrefixTable()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_10

    .line 405
    const/4 v0, 0x0

    .line 413
    :goto_f
    return v0

    .line 410
    :cond_10
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getPrefixTable()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemLiteralResult;->setPrefixTable(Ljava/util/List;)V

    .line 413
    :cond_1e
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public resolvePrefixTables()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-super {p0}, Lorg/apache/xalan/templates/ElemUse;->resolvePrefixTables()V

    .line 337
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v8

    .line 339
    .local v8, stylesheet:Lorg/apache/xalan/templates/StylesheetRoot;
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    if-eqz v9, :cond_48

    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_48

    .line 341
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/apache/xalan/templates/StylesheetRoot;->getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v5

    .line 343
    .local v5, nsa:Lorg/apache/xalan/templates/NamespaceAlias;
    if-eqz v5, :cond_48

    .line 345
    invoke-virtual {v5}, Lorg/apache/xalan/templates/NamespaceAlias;->getResultNamespace()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    .line 348
    invoke-virtual {v5}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    move-result-object v7

    .line 350
    .local v7, resultPrefix:Ljava/lang/String;
    if-eqz v7, :cond_a5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a5

    .line 351
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    .line 357
    .end local v5           #nsa:Lorg/apache/xalan/templates/NamespaceAlias;
    .end local v7           #resultPrefix:Ljava/lang/String;
    :cond_48
    :goto_48
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    if-eqz v9, :cond_aa

    .line 359
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    .line 361
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_53
    if-ge v1, v2, :cond_aa

    .line 363
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_avts:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/AVT;

    .line 366
    .local v0, avt:Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getURI()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, ns:Ljava/lang/String;
    if-eqz v4, :cond_a2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a2

    .line 370
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lorg/apache/xalan/templates/StylesheetRoot;->getNamespaceAliasComposed(Ljava/lang/String;)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v5

    .line 373
    .restart local v5       #nsa:Lorg/apache/xalan/templates/NamespaceAlias;
    if-eqz v5, :cond_a2

    .line 375
    invoke-virtual {v5}, Lorg/apache/xalan/templates/NamespaceAlias;->getResultNamespace()Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, namespace:Ljava/lang/String;
    invoke-virtual {v5}, Lorg/apache/xalan/templates/NamespaceAlias;->getStylesheetPrefix()Ljava/lang/String;

    move-result-object v7

    .line 379
    .restart local v7       #resultPrefix:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getName()Ljava/lang/String;

    move-result-object v6

    .line 381
    .local v6, rawName:Ljava/lang/String;
    if-eqz v7, :cond_9c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_9c

    .line 382
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 384
    :cond_9c
    invoke-virtual {v0, v3}, Lorg/apache/xalan/templates/AVT;->setURI(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/AVT;->setRawName(Ljava/lang/String;)V

    .line 361
    .end local v3           #namespace:Ljava/lang/String;
    .end local v5           #nsa:Lorg/apache/xalan/templates/NamespaceAlias;
    .end local v6           #rawName:Ljava/lang/String;
    .end local v7           #resultPrefix:Ljava/lang/String;
    :cond_a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 353
    .end local v0           #avt:Lorg/apache/xalan/templates/AVT;
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v4           #ns:Ljava/lang/String;
    .restart local v5       #nsa:Lorg/apache/xalan/templates/NamespaceAlias;
    .restart local v7       #resultPrefix:Ljava/lang/String;
    :cond_a5
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    iput-object v9, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    goto :goto_48

    .line 390
    .end local v5           #nsa:Lorg/apache/xalan/templates/NamespaceAlias;
    .end local v7           #resultPrefix:Ljava/lang/String;
    :cond_aa
    return-void
.end method

.method public setExcludeResultPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 1264
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_excludeResultPrefixes:Lorg/apache/xml/utils/StringVector;

    .line 1265
    return-void
.end method

.method public setExtensionElementPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 540
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    .line 541
    return-void
.end method

.method public setIsLiteralResultAsStylesheet(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 76
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->isLiteralResultAsStylesheet:Z

    .line 77
    return-void
.end method

.method public setLocalName(Ljava/lang/String;)V
    .registers 2
    .parameter "localName"

    .prologue
    .line 467
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_localName:Ljava/lang/String;

    .line 468
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .registers 2
    .parameter "ns"

    .prologue
    .line 434
    if-nez p1, :cond_4

    .line 435
    const-string p1, ""

    .line 436
    :cond_4
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_namespace:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public setRawName(Ljava/lang/String;)V
    .registers 2
    .parameter "rawName"

    .prologue
    .line 498
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_rawName:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 1230
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemLiteralResult;->m_version:Ljava/lang/String;

    .line 1231
    return-void
.end method

.method public setXmlSpace(Lorg/apache/xalan/templates/AVT;)V
    .registers 4
    .parameter "avt"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->addLiteralResultAttribute(Lorg/apache/xalan/templates/AVT;)V

    .line 170
    invoke-virtual {p1}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, val:Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 173
    const/4 v1, 0x2

    invoke-super {p0, v1}, Lorg/apache/xalan/templates/ElemUse;->setXmlSpace(I)V

    .line 180
    :cond_13
    :goto_13
    return-void

    .line 175
    :cond_14
    const-string v1, "preserve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 177
    const/4 v1, 0x1

    invoke-super {p0, v1}, Lorg/apache/xalan/templates/ElemUse;->setXmlSpace(I)V

    goto :goto_13
.end method

.method public throwDOMException(SLjava/lang/String;)V
    .registers 5
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 1473
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1475
    .local v0, themsg:Ljava/lang/String;
    new-instance v1, Lorg/w3c/dom/DOMException;

    invoke-direct {v1, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method
