.class public Lorg/apache/xalan/transformer/NodeSorter;
.super Ljava/lang/Object;
.source "NodeSorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    }
.end annotation


# instance fields
.field m_execContext:Lorg/apache/xpath/XPathContext;

.field m_keys:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/xpath/XPathContext;)V
    .registers 2
    .parameter "p"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    .line 62
    return-void
.end method


# virtual methods
.method compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I
    .registers 29
    .parameter "n1"
    .parameter "n2"
    .parameter "kIndex"
    .parameter "support"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 131
    const/16 v17, 0x0

    .line 132
    .local v17, result:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xalan/transformer/NodeSortKey;

    .line 134
    .local v8, k:Lorg/apache/xalan/transformer/NodeSortKey;
    iget-boolean v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_treatAsNumbers:Z

    move/from16 v20, v0

    if-eqz v20, :cond_146

    .line 138
    if-nez p3, :cond_a5

    .line 140
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 141
    .local v9, n1Num:D
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 172
    .local v12, n2Num:D
    :goto_32
    cmpl-double v20, v9, v12

    if-nez v20, :cond_101

    add-int/lit8 v20, p3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_101

    .line 174
    add-int/lit8 v20, p3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    move-result v17

    .line 256
    .end local v9           #n1Num:D
    .end local v12           #n2Num:D
    :cond_58
    :goto_58
    if-nez v17, :cond_7c

    .line 258
    add-int/lit8 v20, p3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7c

    .line 260
    add-int/lit8 v20, p3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    move-result v17

    .line 264
    :cond_7c
    if-nez v17, :cond_a4

    .line 271
    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v20, v0

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v7

    .line 272
    .local v7, dtm:Lorg/apache/xml/dtm/DTM;
    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v7, v0, v1}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v20

    if-eqz v20, :cond_1ea

    const/16 v17, -0x1

    .line 277
    .end local v7           #dtm:Lorg/apache/xml/dtm/DTM;
    :cond_a4
    :goto_a4
    return v17

    .line 143
    :cond_a5
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_c7

    .line 145
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 146
    .restart local v9       #n1Num:D
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .restart local v12       #n2Num:D
    goto/16 :goto_32

    .line 159
    .end local v9           #n1Num:D
    .end local v12           #n2Num:D
    :cond_c7
    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v22, v0

    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v15

    .line 161
    .local v15, r1:Lorg/apache/xpath/objects/XObject;
    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v22, v0

    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v16

    .line 163
    .local v16, r2:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v9

    .line 168
    .restart local v9       #n1Num:D
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v12

    .restart local v12       #n2Num:D
    goto/16 :goto_32

    .line 179
    .end local v15           #r1:Lorg/apache/xpath/objects/XObject;
    .end local v16           #r2:Lorg/apache/xpath/objects/XObject;
    :cond_101
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-eqz v20, :cond_122

    .line 181
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-eqz v20, :cond_11f

    .line 182
    const-wide/16 v5, 0x0

    .line 192
    .local v5, diff:D
    :goto_10f
    const-wide/16 v20, 0x0

    cmpg-double v20, v5, v20

    if-gez v20, :cond_131

    iget-boolean v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12e

    const/16 v17, 0x1

    :goto_11d
    goto/16 :goto_58

    .line 184
    .end local v5           #diff:D
    :cond_11f
    const-wide/high16 v5, -0x4010

    .restart local v5       #diff:D
    goto :goto_10f

    .line 186
    .end local v5           #diff:D
    :cond_122
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v20

    if-eqz v20, :cond_12b

    .line 187
    const-wide/high16 v5, 0x3ff0

    .restart local v5       #diff:D
    goto :goto_10f

    .line 189
    .end local v5           #diff:D
    :cond_12b
    sub-double v5, v9, v12

    .restart local v5       #diff:D
    goto :goto_10f

    .line 192
    :cond_12e
    const/16 v17, -0x1

    goto :goto_11d

    :cond_131
    const-wide/16 v20, 0x0

    cmpl-double v20, v5, v20

    if-lez v20, :cond_143

    iget-boolean v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    move/from16 v20, v0

    if-eqz v20, :cond_140

    const/16 v17, -0x1

    goto :goto_11d

    :cond_140
    const/16 v17, 0x1

    goto :goto_11d

    :cond_143
    const/16 v17, 0x0

    goto :goto_11d

    .line 201
    .end local v5           #diff:D
    .end local v9           #n1Num:D
    .end local v12           #n2Num:D
    :cond_146
    if-nez p3, :cond_185

    .line 203
    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    check-cast v11, Ljava/text/CollationKey;

    .line 204
    .local v11, n1String:Ljava/text/CollationKey;
    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key1Value:Ljava/lang/Object;

    check-cast v14, Ljava/text/CollationKey;

    .line 233
    .local v14, n2String:Ljava/text/CollationKey;
    :goto_154
    invoke-virtual {v11, v14}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I

    move-result v17

    .line 236
    iget-boolean v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_caseOrderUpper:Z

    move/from16 v20, v0

    if-eqz v20, :cond_178

    .line 238
    invoke-virtual {v11}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 239
    .local v18, tempN1:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/text/CollationKey;->getSourceString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    .line 241
    .local v19, tempN2:Ljava/lang/String;
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_178

    .line 245
    if-nez v17, :cond_1e4

    const/16 v17, 0x0

    .line 250
    .end local v18           #tempN1:Ljava/lang/String;
    .end local v19           #tempN2:Ljava/lang/String;
    :cond_178
    :goto_178
    iget-boolean v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_descending:Z

    move/from16 v20, v0

    if-eqz v20, :cond_58

    .line 252
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    goto/16 :goto_58

    .line 206
    .end local v11           #n1String:Ljava/text/CollationKey;
    .end local v14           #n2String:Ljava/text/CollationKey;
    :cond_185
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_19a

    .line 208
    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    check-cast v11, Ljava/text/CollationKey;

    .line 209
    .restart local v11       #n1String:Ljava/text/CollationKey;
    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_key2Value:Ljava/lang/Object;

    check-cast v14, Ljava/text/CollationKey;

    .restart local v14       #n2String:Ljava/text/CollationKey;
    goto :goto_154

    .line 222
    .end local v11           #n1String:Ljava/text/CollationKey;
    .end local v14           #n2String:Ljava/text/CollationKey;
    :cond_19a
    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v22, v0

    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v15

    .line 224
    .restart local v15       #r1:Lorg/apache/xpath/objects/XObject;
    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_selectPat:Lorg/apache/xpath/XPath;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/transformer/NodeSorter;->m_execContext:Lorg/apache/xpath/XPathContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    move/from16 v22, v0

    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v23}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v16

    .line 227
    .restart local v16       #r2:Lorg/apache/xpath/objects/XObject;
    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    move-object/from16 v20, v0

    invoke-virtual {v15}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v11

    .line 228
    .restart local v11       #n1String:Ljava/text/CollationKey;
    iget-object v0, v8, Lorg/apache/xalan/transformer/NodeSortKey;->m_col:Ljava/text/Collator;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v14

    .restart local v14       #n2String:Ljava/text/CollationKey;
    goto/16 :goto_154

    .line 245
    .end local v15           #r1:Lorg/apache/xpath/objects/XObject;
    .end local v16           #r2:Lorg/apache/xpath/objects/XObject;
    .restart local v18       #tempN1:Ljava/lang/String;
    .restart local v19       #tempN2:Ljava/lang/String;
    :cond_1e4
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    goto :goto_178

    .line 272
    .end local v11           #n1String:Ljava/text/CollationKey;
    .end local v14           #n2String:Ljava/text/CollationKey;
    .end local v18           #tempN1:Ljava/lang/String;
    .end local v19           #tempN2:Ljava/lang/String;
    .restart local v7       #dtm:Lorg/apache/xml/dtm/DTM;
    :cond_1ea
    const/16 v17, 0x1

    goto/16 :goto_a4
.end method

.method mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V
    .registers 23
    .parameter "a"
    .parameter "b"
    .parameter "l"
    .parameter "r"
    .parameter "support"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 299
    sub-int v2, p4, p3

    if-lez v2, :cond_cd

    .line 301
    add-int v2, p4, p3

    div-int/lit8 v6, v2, 0x2

    .local v6, m:I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p5

    .line 303
    invoke-virtual/range {v2 .. v7}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    .line 304
    add-int/lit8 v10, v6, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v12}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    .line 308
    move v14, v6

    .local v14, i:I
    :goto_25
    move/from16 v0, p3

    if-lt v14, v0, :cond_49

    .line 313
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v14, v2, :cond_3d

    .line 314
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 308
    :goto_3a
    add-int/lit8 v14, v14, -0x1

    goto :goto_25

    .line 316
    :cond_3d
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_3a

    .line 319
    :cond_49
    move/from16 v14, p3

    .line 321
    add-int/lit8 v15, v6, 0x1

    .local v15, j:I
    :goto_4d
    move/from16 v0, p4

    if-gt v15, v0, :cond_80

    .line 325
    add-int v2, p4, v6

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v2, v15

    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_6f

    .line 326
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    add-int v3, p4, v6

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v3, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 321
    :goto_6c
    add-int/lit8 v15, v15, 0x1

    goto :goto_4d

    .line 328
    :cond_6f
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    add-int v3, p4, v6

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v3, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_6c

    .line 331
    :cond_80
    move/from16 v15, p4

    .line 335
    move/from16 v16, p3

    .local v16, k:I
    :goto_84
    move/from16 v0, v16

    move/from16 v1, p4

    if-gt v0, v1, :cond_cd

    .line 339
    if-ne v14, v15, :cond_a1

    .line 340
    const/4 v13, -0x1

    .line 345
    .local v13, compVal:I
    :goto_8d
    if-gez v13, :cond_bb

    .line 349
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 351
    add-int/lit8 v14, v14, 0x1

    .line 335
    :cond_9e
    :goto_9e
    add-int/lit8 v16, v16, 0x1

    goto :goto_84

    .line 342
    .end local v13           #compVal:I
    :cond_a1
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v3, v4, v1}, Lorg/apache/xalan/transformer/NodeSorter;->compare(Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;ILorg/apache/xpath/XPathContext;)I

    move-result v13

    .restart local v13       #compVal:I
    goto :goto_8d

    .line 353
    :cond_bb
    if-lez v13, :cond_9e

    .line 357
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 359
    add-int/lit8 v15, v15, -0x1

    goto :goto_9e

    .line 363
    .end local v6           #m:I
    .end local v13           #compVal:I
    .end local v14           #i:I
    .end local v15           #j:I
    .end local v16           #k:I
    :cond_cd
    return-void
.end method

.method public sort(Lorg/apache/xml/dtm/DTMIterator;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V
    .registers 13
    .parameter "v"
    .parameter "keys"
    .parameter "support"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 77
    iput-object p2, p0, Lorg/apache/xalan/transformer/NodeSorter;->m_keys:Ljava/util/Vector;

    .line 80
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getLength()I

    move-result v8

    .line 88
    .local v8, n:I
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 90
    .local v1, nodes:Ljava/util/Vector;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_d
    if-ge v7, v8, :cond_1e

    .line 92
    new-instance v6, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    invoke-interface {p1, v7}, Lorg/apache/xml/dtm/DTMIterator;->item(I)I

    move-result v0

    invoke-direct {v6, p0, v0}, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;-><init>(Lorg/apache/xalan/transformer/NodeSorter;I)V

    .line 94
    .local v6, elem:Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 90
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 97
    .end local v6           #elem:Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;
    :cond_1e
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 99
    .local v2, scratchVector:Ljava/util/Vector;
    add-int/lit8 v4, v8, -0x1

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/NodeSorter;->mergesort(Ljava/util/Vector;Ljava/util/Vector;IILorg/apache/xpath/XPathContext;)V

    .line 102
    const/4 v7, 0x0

    :goto_2b
    if-ge v7, v8, :cond_3b

    .line 104
    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;

    iget v0, v0, Lorg/apache/xalan/transformer/NodeSorter$NodeCompareElem;->m_node:I

    invoke-interface {p1, v0, v7}, Lorg/apache/xml/dtm/DTMIterator;->setItem(II)V

    .line 102
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 106
    :cond_3b
    invoke-interface {p1, v3}, Lorg/apache/xml/dtm/DTMIterator;->setCurrentPos(I)V

    .line 111
    return-void
.end method
