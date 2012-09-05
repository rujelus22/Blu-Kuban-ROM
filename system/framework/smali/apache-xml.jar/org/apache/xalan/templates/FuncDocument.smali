.class public Lorg/apache/xalan/templates/FuncDocument;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncDocument.java"


# static fields
.field static final serialVersionUID:J = 0x227678209ab58610L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    return-void
.end method


# virtual methods
.method public checkNumberArgs(I)V
    .registers 3
    .parameter "argNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 440
    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    const/4 v0, 0x2

    if-le p1, v0, :cond_9

    .line 441
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xalan/templates/FuncDocument;->reportWrongNumberArgs()V

    .line 442
    :cond_9
    return-void
.end method

.method public error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .parameter "xctxt"
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, formattedMsg:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 395
    .local v0, errHandler:Ljavax/xml/transform/ErrorListener;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 398
    .local v2, spe:Ljavax/xml/transform/TransformerException;
    if-eqz v0, :cond_17

    .line 399
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    .line 402
    :goto_16
    return-void

    .line 401
    :cond_17
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 25
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v10

    .line 76
    .local v10, context:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v12

    .line 78
    .local v12, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v12, v10}, Lorg/apache/xml/dtm/DTM;->getDocumentRoot(I)I

    move-result v11

    .line 79
    .local v11, docContext:I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncDocument;->getArg0()Lorg/apache/xpath/Expression;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    .line 81
    .local v4, arg:Lorg/apache/xpath/objects/XObject;
    const-string v7, ""

    .line 82
    .local v7, base:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncDocument;->getArg1()Lorg/apache/xpath/Expression;

    move-result-object v5

    .line 84
    .local v5, arg1Expr:Lorg/apache/xpath/Expression;
    if-eqz v5, :cond_124

    .line 91
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v6

    .line 93
    .local v6, arg2:Lorg/apache/xpath/objects/XObject;
    const/16 v21, 0x4

    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11f

    .line 95
    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v9

    .line 97
    .local v9, baseNode:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_5f

    .line 102
    const-string v21, "WG_EMPTY_SECOND_ARG"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance v18, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    .line 210
    .end local v6           #arg2:Lorg/apache/xpath/objects/XObject;
    .end local v9           #baseNode:I
    .local v18, nodes:Lorg/apache/xpath/objects/XNodeSet;
    :cond_5e
    :goto_5e
    return-object v18

    .line 106
    .end local v18           #nodes:Lorg/apache/xpath/objects/XNodeSet;
    .restart local v6       #arg2:Lorg/apache/xpath/objects/XObject;
    .restart local v9       #baseNode:I
    :cond_5f
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v8

    .line 107
    .local v8, baseDTM:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v8}, Lorg/apache/xml/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v7

    .line 144
    .end local v6           #arg2:Lorg/apache/xpath/objects/XObject;
    .end local v8           #baseDTM:Lorg/apache/xml/dtm/DTM;
    .end local v9           #baseNode:I
    :goto_69
    new-instance v18, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    .line 145
    .restart local v18       #nodes:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/xpath/objects/XNodeSet;->mutableNodeset()Lorg/apache/xpath/NodeSetDTM;

    move-result-object v16

    .line 146
    .local v16, mnl:Lorg/apache/xpath/NodeSetDTM;
    const/16 v21, 0x4

    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_144

    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v15

    .line 148
    .local v15, iterator:Lorg/apache/xml/dtm/DTMIterator;
    :goto_8a
    const/16 v19, -0x1

    .line 150
    .local v19, pos:I
    :cond_8c
    if-eqz v15, :cond_9a

    const/16 v21, -0x1

    invoke-interface {v15}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v19

    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_5e

    .line 152
    :cond_9a
    if-eqz v15, :cond_147

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v20

    .line 163
    .local v20, ref:Lorg/apache/xml/utils/XMLString;
    :goto_ac
    if-nez v5, :cond_c2

    const/16 v21, -0x1

    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_c2

    .line 165
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v8

    .line 166
    .restart local v8       #baseDTM:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v8}, Lorg/apache/xml/dtm/DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v7

    .line 169
    .end local v8           #baseDTM:Lorg/apache/xml/dtm/DTM;
    :cond_c2
    if-eqz v20, :cond_8c

    .line 172
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v0, v11, :cond_d9

    .line 174
    const-string v21, "ER_NO_CONTEXT_OWNERDOC"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    :cond_d9
    const/16 v21, 0x3a

    invoke-interface/range {v20 .. v21}, Lorg/apache/xml/utils/XMLString;->indexOf(I)I

    move-result v13

    .line 184
    .local v13, indexOfColon:I
    const/16 v21, 0x2f

    invoke-interface/range {v20 .. v21}, Lorg/apache/xml/utils/XMLString;->indexOf(I)I

    move-result v14

    .line 186
    .local v14, indexOfSlash:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_f4

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v14, v0, :cond_f4

    if-ge v13, v14, :cond_f4

    .line 191
    const/4 v7, 0x0

    .line 194
    :cond_f4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v10, v2, v7}, Lorg/apache/xalan/templates/FuncDocument;->getDoc(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 197
    .local v17, newDoc:I
    const/16 v21, -0x1

    move/from16 v0, v21

    move/from16 v1, v17

    if-eq v0, v1, :cond_113

    .line 200
    invoke-virtual/range {v16 .. v17}, Lorg/apache/xpath/NodeSetDTM;->contains(I)Z

    move-result v21

    if-nez v21, :cond_113

    .line 202
    invoke-virtual/range {v16 .. v17}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    .line 206
    :cond_113
    if-eqz v15, :cond_5e

    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_8c

    goto/16 :goto_5e

    .line 125
    .end local v13           #indexOfColon:I
    .end local v14           #indexOfSlash:I
    .end local v15           #iterator:Lorg/apache/xml/dtm/DTMIterator;
    .end local v16           #mnl:Lorg/apache/xpath/NodeSetDTM;
    .end local v17           #newDoc:I
    .end local v18           #nodes:Lorg/apache/xpath/objects/XNodeSet;
    .end local v19           #pos:I
    .end local v20           #ref:Lorg/apache/xml/utils/XMLString;
    .restart local v6       #arg2:Lorg/apache/xpath/objects/XObject;
    :cond_11f
    invoke-virtual {v6}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    goto/16 :goto_69

    .line 140
    .end local v6           #arg2:Lorg/apache/xpath/objects/XObject;
    :cond_124
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v21

    if-eqz v21, :cond_141

    const/16 v21, 0x1

    :goto_12c
    const-string v22, "Namespace context can not be null!"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/FuncDocument;->assertion(ZLjava/lang/String;)V

    .line 141
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/xml/utils/PrefixResolver;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_69

    .line 140
    :cond_141
    const/16 v21, 0x0

    goto :goto_12c

    .line 146
    .restart local v16       #mnl:Lorg/apache/xpath/NodeSetDTM;
    .restart local v18       #nodes:Lorg/apache/xpath/objects/XNodeSet;
    :cond_144
    const/4 v15, 0x0

    goto/16 :goto_8a

    .line 152
    .restart local v15       #iterator:Lorg/apache/xml/dtm/DTMIterator;
    .restart local v19       #pos:I
    :cond_147
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v20

    goto/16 :goto_ac
.end method

.method getDoc(Lorg/apache/xpath/XPathContext;ILjava/lang/String;Ljava/lang/String;)I
    .registers 28
    .parameter "xctxt"
    .parameter "context"
    .parameter "uri"
    .parameter "base"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object v17

    .line 237
    .local v17, treeMgr:Lorg/apache/xpath/SourceTreeManager;
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;

    move-result-object v11

    .line 238
    .local v11, source:Ljavax/xml/transform/Source;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/apache/xpath/SourceTreeManager;->getNode(Ljavax/xml/transform/Source;)I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_19} :catch_22
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_19} :catch_37

    move-result v9

    .line 250
    .local v9, newDoc:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v0, v9, :cond_40

    move v10, v9

    .line 374
    .end local v9           #newDoc:I
    .end local p4
    .local v10, newDoc:I
    :goto_21
    return v10

    .line 240
    .end local v10           #newDoc:I
    .end local v11           #source:Ljavax/xml/transform/Source;
    .restart local p4
    :catch_22
    move-exception v7

    .line 242
    .local v7, ioe:Ljava/io/IOException;
    new-instance v18, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw v18

    .line 245
    .end local v7           #ioe:Ljava/io/IOException;
    :catch_37
    move-exception v15

    .line 247
    .local v15, te:Ljavax/xml/transform/TransformerException;
    new-instance v18, Ljavax/xml/transform/TransformerException;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 254
    .end local v15           #te:Ljavax/xml/transform/TransformerException;
    .restart local v9       #newDoc:I
    .restart local v11       #source:Ljavax/xml/transform/Source;
    :cond_40
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_5e

    .line 257
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/xml/utils/PrefixResolver;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p3

    .line 260
    :try_start_4e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xpath/SourceTreeManager;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)Ljavax/xml/transform/Source;
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5d} :catch_98

    move-result-object v11

    .line 269
    :cond_5e
    const/4 v4, 0x0

    .line 273
    .local v4, diagnosticsString:Ljava/lang/String;
    if-eqz p3, :cond_ad

    :try_start_61
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_ad

    .line 275
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v11, v1, v2}, Lorg/apache/xpath/SourceTreeManager;->getSourceTree(Ljavax/xml/transform/Source;Ljavax/xml/transform/SourceLocator;Lorg/apache/xpath/XPathContext;)I
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_74} :catch_e4

    move-result v9

    .line 352
    :goto_75
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v9, :cond_96

    .line 356
    if-eqz v4, :cond_1f7

    .line 358
    const-string v18, "WG_CANNOT_LOAD_REQUESTED_DOC"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local p4
    :cond_96
    :goto_96
    move v10, v9

    .line 374
    .end local v9           #newDoc:I
    .restart local v10       #newDoc:I
    goto :goto_21

    .line 262
    .end local v4           #diagnosticsString:Ljava/lang/String;
    .end local v10           #newDoc:I
    .restart local v9       #newDoc:I
    .restart local p4
    :catch_98
    move-exception v7

    .line 264
    .restart local v7       #ioe:Ljava/io/IOException;
    new-instance v18, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    throw v18

    .line 280
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v4       #diagnosticsString:Ljava/lang/String;
    :cond_ad
    :try_start_ad
    const-string v19, "WG_CANNOT_MAKE_URL_FROM"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p4, :cond_f5

    const-string v18, ""

    :goto_c2
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e3
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_e3} :catch_e4

    goto :goto_75

    .line 283
    :catch_e4
    move-exception v16

    .line 287
    .local v16, throwable:Ljava/lang/Throwable;
    const/4 v9, -0x1

    .line 291
    :goto_e6
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    move/from16 v18, v0

    if-eqz v18, :cond_f8

    .line 293
    check-cast v16, Lorg/apache/xml/utils/WrappedRuntimeException;

    .end local v16           #throwable:Ljava/lang/Throwable;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v16

    .restart local v16       #throwable:Ljava/lang/Throwable;
    goto :goto_e6

    .end local v16           #throwable:Ljava/lang/Throwable;
    :cond_f5
    move-object/from16 v18, p4

    .line 280
    goto :goto_c2

    .line 297
    .restart local v16       #throwable:Ljava/lang/Throwable;
    :cond_f8
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/NullPointerException;

    move/from16 v18, v0

    if-nez v18, :cond_108

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/ClassCastException;

    move/from16 v18, v0

    if-eqz v18, :cond_114

    .line 300
    :cond_108
    new-instance v18, Lorg/apache/xml/utils/WrappedRuntimeException;

    check-cast v16, Ljava/lang/Exception;

    .end local v16           #throwable:Ljava/lang/Throwable;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 304
    .restart local v16       #throwable:Ljava/lang/Throwable;
    :cond_114
    new-instance v14, Ljava/io/StringWriter;

    invoke-direct {v14}, Ljava/io/StringWriter;-><init>()V

    .line 305
    .local v14, sw:Ljava/io/StringWriter;
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 307
    .local v5, diagnosticsWriter:Ljava/io/PrintWriter;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljavax/xml/transform/TransformerException;

    move/from16 v18, v0

    if-eqz v18, :cond_1c3

    move-object/from16 v12, v16

    .line 309
    check-cast v12, Ljavax/xml/transform/TransformerException;

    .line 312
    .local v12, spe:Ljavax/xml/transform/TransformerException;
    move-object v6, v12

    .line 314
    .local v6, e:Ljava/lang/Throwable;
    :cond_12b
    :goto_12b
    if-eqz v6, :cond_1f1

    .line 316
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_161

    .line 318
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    :cond_161
    instance-of v0, v6, Ljavax/xml/transform/TransformerException;

    move/from16 v18, v0

    if-eqz v18, :cond_1c0

    move-object v13, v6

    .line 324
    check-cast v13, Ljavax/xml/transform/TransformerException;

    .line 326
    .local v13, spe2:Ljavax/xml/transform/TransformerException;
    invoke-virtual {v13}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v8

    .line 327
    .local v8, locator:Ljavax/xml/transform/SourceLocator;
    if-eqz v8, :cond_1ae

    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1ae

    .line 328
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   ID: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Line #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Column #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v8}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    :cond_1ae
    invoke-virtual {v13}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v6

    .line 335
    instance-of v0, v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    move/from16 v18, v0

    if-eqz v18, :cond_12b

    .line 336
    check-cast v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    .end local v6           #e:Ljava/lang/Throwable;
    invoke-virtual {v6}, Lorg/apache/xml/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v6

    .restart local v6       #e:Ljava/lang/Throwable;
    goto/16 :goto_12b

    .line 339
    .end local v8           #locator:Ljavax/xml/transform/SourceLocator;
    .end local v13           #spe2:Ljavax/xml/transform/TransformerException;
    :cond_1c0
    const/4 v6, 0x0

    goto/16 :goto_12b

    .line 345
    .end local v6           #e:Ljava/lang/Throwable;
    .end local v12           #spe:Ljavax/xml/transform/TransformerException;
    :cond_1c3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    :cond_1f1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_75

    .line 362
    .end local v5           #diagnosticsWriter:Ljava/io/PrintWriter;
    .end local v14           #sw:Ljava/io/StringWriter;
    .end local v16           #throwable:Ljava/lang/Throwable;
    :cond_1f7
    const-string v19, "WG_CANNOT_LOAD_REQUESTED_DOC"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    if-nez p3, :cond_231

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p4, :cond_20e

    const-string p4, ""

    .end local p4
    :cond_20e
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_222
    aput-object v18, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncDocument;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_96

    .restart local p4
    :cond_231
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_222
.end method

.method public isNodesetExpr()Z
    .registers 2

    .prologue
    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method protected reportWrongNumberArgs()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 451
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "ER_ONE_OR_TWO"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .parameter "xctxt"
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, formattedMsg:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 421
    .local v0, errHandler:Ljavax/xml/transform/ErrorListener;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 424
    .local v2, spe:Ljavax/xml/transform/TransformerException;
    if-eqz v0, :cond_17

    .line 425
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    .line 428
    :goto_16
    return-void

    .line 427
    :cond_17
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_16
.end method
