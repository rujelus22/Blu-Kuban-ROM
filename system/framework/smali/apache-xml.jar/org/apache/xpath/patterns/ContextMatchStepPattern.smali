.class public Lorg/apache/xpath/patterns/ContextMatchStepPattern;
.super Lorg/apache/xpath/patterns/StepPattern;
.source "ContextMatchStepPattern.java"


# static fields
.field static final serialVersionUID:J = -0x1a33da6115f1aa26L


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .parameter "axis"
    .parameter "paxis"

    .prologue
    .line 43
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;-><init>(III)V

    .line 44
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 4
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getIteratorRoot()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 65
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->getStaticScore()Lorg/apache/xpath/objects/XNumber;

    move-result-object v0

    .line 67
    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_e
.end method

.method public executeRelativePathPattern(Lorg/apache/xpath/XPathContext;Lorg/apache/xpath/patterns/StepPattern;)Lorg/apache/xpath/objects/XObject;
    .registers 21
    .parameter "xctxt"
    .parameter "prevStep"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 90
    sget-object v12, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    .line 91
    .local v12, score:Lorg/apache/xpath/objects/XObject;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v5

    .line 92
    .local v5, context:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v6

    .line 94
    .local v6, dtm:Lorg/apache/xml/dtm/DTM;
    if-eqz v6, :cond_ca

    .line 96
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v10

    .line 99
    .local v10, predContext:I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    .line 101
    .local v4, axis:I
    invoke-static {v4}, Lorg/apache/xpath/axes/WalkerFactory;->isDownwardAxisOfMany(I)Z

    move-result v9

    .line 102
    .local v9, needToTraverseAttrs:Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getIteratorRoot()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v6, v0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_63

    const/4 v8, 0x1

    .line 105
    .local v8, iterRootIsAttr:Z
    :goto_2d
    const/16 v16, 0xb

    move/from16 v0, v16

    if-ne v0, v4, :cond_37

    if-eqz v8, :cond_37

    .line 107
    const/16 v4, 0xf

    .line 110
    :cond_37
    invoke-interface {v6, v4}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v14

    .line 112
    .local v14, traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {v14, v5}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v11

    .local v11, relative:I
    :goto_3f
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v0, v11, :cond_ca

    .line 117
    :try_start_45
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 119
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v12

    .line 121
    sget-object v16, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_67

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v5}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->executePredicates(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Z
    :try_end_5b
    .catchall {:try_start_45 .. :try_end_5b} :catchall_b7

    move-result v16

    if-eqz v16, :cond_65

    .line 170
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    move-object v13, v12

    .line 176
    .end local v4           #axis:I
    .end local v8           #iterRootIsAttr:Z
    .end local v9           #needToTraverseAttrs:Z
    .end local v10           #predContext:I
    .end local v11           #relative:I
    .end local v12           #score:Lorg/apache/xpath/objects/XObject;
    .end local v14           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    .local v13, score:Lorg/apache/xpath/objects/XObject;
    :goto_62
    return-object v13

    .line 102
    .end local v13           #score:Lorg/apache/xpath/objects/XObject;
    .restart local v4       #axis:I
    .restart local v9       #needToTraverseAttrs:Z
    .restart local v10       #predContext:I
    .restart local v12       #score:Lorg/apache/xpath/objects/XObject;
    :cond_63
    const/4 v8, 0x0

    goto :goto_2d

    .line 128
    .restart local v8       #iterRootIsAttr:Z
    .restart local v11       #relative:I
    .restart local v14       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_65
    :try_start_65
    sget-object v12, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    .line 131
    :cond_67
    if-eqz v9, :cond_c1

    if-eqz v8, :cond_c1

    const/16 v16, 0x1

    invoke-interface {v6, v11}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c1

    .line 134
    const/4 v15, 0x2

    .line 135
    .local v15, xaxis:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_79
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v7, v0, :cond_c1

    .line 137
    invoke-interface {v6, v15}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v3

    .line 139
    .local v3, atraverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {v3, v11}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I
    :try_end_86
    .catchall {:try_start_65 .. :try_end_86} :catchall_b7

    move-result v2

    .line 140
    .local v2, arelative:I
    :goto_87
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_bc

    .line 145
    :try_start_8d
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 147
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xpath/patterns/ContextMatchStepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v12

    .line 149
    sget-object v16, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_aa

    .line 154
    sget-object v16, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;
    :try_end_9e
    .catchall {:try_start_8d .. :try_end_9e} :catchall_b2

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_aa

    .line 160
    :try_start_a2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_b7

    .line 170
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    move-object v13, v12

    .end local v12           #score:Lorg/apache/xpath/objects/XObject;
    .restart local v13       #score:Lorg/apache/xpath/objects/XObject;
    goto :goto_62

    .line 160
    .end local v13           #score:Lorg/apache/xpath/objects/XObject;
    .restart local v12       #score:Lorg/apache/xpath/objects/XObject;
    :cond_aa
    :try_start_aa
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 141
    invoke-virtual {v3, v11, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v2

    goto :goto_87

    .line 160
    :catchall_b2
    move-exception v16

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v16
    :try_end_b7
    .catchall {:try_start_aa .. :try_end_b7} :catchall_b7

    .line 170
    .end local v2           #arelative:I
    .end local v3           #atraverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    .end local v7           #i:I
    .end local v15           #xaxis:I
    :catchall_b7
    move-exception v16

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v16

    .line 163
    .restart local v2       #arelative:I
    .restart local v3       #atraverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    .restart local v7       #i:I
    .restart local v15       #xaxis:I
    :cond_bc
    const/16 v15, 0x9

    .line 135
    add-int/lit8 v7, v7, 0x1

    goto :goto_79

    .line 170
    .end local v2           #arelative:I
    .end local v3           #atraverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    .end local v7           #i:I
    .end local v15           #xaxis:I
    :cond_c1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 113
    invoke-virtual {v14, v5, v11}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v11

    goto/16 :goto_3f

    .end local v4           #axis:I
    .end local v8           #iterRootIsAttr:Z
    .end local v9           #needToTraverseAttrs:Z
    .end local v10           #predContext:I
    .end local v11           #relative:I
    .end local v14           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_ca
    move-object v13, v12

    .line 176
    .end local v12           #score:Lorg/apache/xpath/objects/XObject;
    .restart local v13       #score:Lorg/apache/xpath/objects/XObject;
    goto :goto_62
.end method
