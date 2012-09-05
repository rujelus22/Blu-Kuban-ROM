.class public Lorg/apache/xpath/axes/OneStepIterator;
.super Lorg/apache/xpath/axes/ChildTestIterator;
.source "OneStepIterator.java"


# static fields
.field static final serialVersionUID:J = 0x402ab874e6139f8bL


# instance fields
.field protected m_axis:I

.field protected m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMAxisIterator;I)V
    .registers 5
    .parameter "iterator"
    .parameter "axis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisTraverser;)V

    .line 42
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    .line 80
    iput-object p1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 81
    iput p2, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    .line 82
    const/4 v0, -0x1

    .line 83
    .local v0, whatToShow:I
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/OneStepIterator;->initNodeTest(I)V

    .line 84
    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 6
    .parameter "compiler"
    .parameter "opPos"
    .parameter "analysis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 42
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    .line 60
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v0

    .line 62
    .local v0, firstStepPos:I
    invoke-static {p1, v0}, Lorg/apache/xpath/axes/WalkerFactory;->getAxisFromStep(Lorg/apache/xpath/compiler/Compiler;I)I

    move-result v1

    iput v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    .line 64
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/OneStepIterator;

    .line 141
    .local v0, clone:Lorg/apache/xpath/axes/OneStepIterator;
    iget-object v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    if-eqz v1, :cond_12

    .line 143
    iget-object v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->cloneIterator()Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 145
    :cond_12
    return-object v0
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/OneStepIterator;

    .line 160
    .local v0, clone:Lorg/apache/xpath/axes/OneStepIterator;
    iget-object v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    iput-object v1, v0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 162
    return-object v0
.end method

.method protected countProximityPosition(I)V
    .registers 4
    .parameter "i"

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->isReverseAxes()Z

    move-result v0

    if-nez v0, :cond_a

    .line 303
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/ChildTestIterator;->countProximityPosition(I)V

    .line 306
    :cond_9
    :goto_9
    return-void

    .line 304
    :cond_a
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    array-length v0, v0

    if-ge p1, v0, :cond_9

    .line 305
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    goto :goto_9
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 5
    .parameter "expr"

    .prologue
    const/4 v0, 0x0

    .line 335
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/ChildTestIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 341
    .end local p1
    :cond_7
    :goto_7
    return v0

    .line 338
    .restart local p1
    :cond_8
    iget v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    check-cast p1, Lorg/apache/xpath/axes/OneStepIterator;

    .end local p1
    iget v2, p1, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    if-ne v1, v2, :cond_7

    .line 341
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public detach()V
    .registers 3

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_f

    .line 112
    iget v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_c

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 116
    :cond_c
    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->detach()V

    .line 118
    :cond_f
    return-void
.end method

.method public getAxis()I
    .registers 2

    .prologue
    .line 327
    iget v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    return v0
.end method

.method public getLength()I
    .registers 11

    .prologue
    const/4 v9, -0x1

    const/4 v7, 0x1

    .line 246
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->isReverseAxes()Z

    move-result v8

    if-nez v8, :cond_d

    .line 247
    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->getLength()I

    move-result v1

    .line 292
    :cond_c
    :goto_c
    return v1

    .line 250
    :cond_d
    iget-object v8, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v8}, Lorg/apache/xpath/XPathContext;->getSubContextList()Lorg/apache/xpath/axes/SubContextList;

    move-result-object v8

    if-ne p0, v8, :cond_27

    move v2, v7

    .line 253
    .local v2, isPredicateTest:Z
    :goto_16
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->getPredicateCount()I

    move-result v4

    .line 258
    .local v4, predCount:I
    iget v8, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    if-eq v9, v8, :cond_29

    if-eqz v2, :cond_29

    iget v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ge v8, v7, :cond_29

    .line 259
    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    goto :goto_c

    .line 250
    .end local v2           #isPredicateTest:Z
    .end local v4           #predCount:I
    :cond_27
    const/4 v2, 0x0

    goto :goto_16

    .line 261
    .restart local v2       #isPredicateTest:Z
    .restart local v4       #predCount:I
    :cond_29
    const/4 v1, 0x0

    .line 263
    .local v1, count:I
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v6

    .line 266
    .local v6, xctxt:Lorg/apache/xpath/XPathContext;
    :try_start_2e
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/OneStepIterator;

    .line 268
    .local v0, clone:Lorg/apache/xpath/axes/OneStepIterator;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->getRoot()I

    move-result v5

    .line 269
    .local v5, root:I
    invoke-virtual {v6, v5}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 270
    invoke-virtual {v0, v5, v6}, Lorg/apache/xpath/axes/OneStepIterator;->setRoot(ILjava/lang/Object;)V

    .line 272
    iget v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    iput v8, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    .line 276
    :goto_42
    invoke-virtual {v0}, Lorg/apache/xpath/axes/OneStepIterator;->nextNode()I
    :try_end_45
    .catchall {:try_start_2e .. :try_end_45} :catchall_5c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2e .. :try_end_45} :catch_57

    move-result v3

    .local v3, next:I
    if-eq v9, v3, :cond_4b

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 287
    :cond_4b
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 289
    .end local v0           #clone:Lorg/apache/xpath/axes/OneStepIterator;
    .end local v3           #next:I
    .end local v5           #root:I
    :goto_4e
    if-eqz v2, :cond_c

    iget v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    if-ge v8, v7, :cond_c

    .line 290
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_length:I

    goto :goto_c

    .line 281
    :catch_57
    move-exception v8

    .line 287
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    goto :goto_4e

    :catchall_5c
    move-exception v7

    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v7
.end method

.method protected getNextNode()I
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    return v0
.end method

.method protected getProximityPosition(I)I
    .registers 9
    .parameter "predicateIndex"

    .prologue
    const/4 v5, -0x1

    .line 190
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->isReverseAxes()Z

    move-result v6

    if-nez v6, :cond_c

    .line 191
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/ChildTestIterator;->getProximityPosition(I)I

    move-result v5

    .line 235
    :cond_b
    :goto_b
    return v5

    .line 196
    :cond_c
    if-ltz p1, :cond_b

    .line 199
    iget-object v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v6, v6, p1

    if-gtz v6, :cond_3e

    .line 201
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    .line 204
    .local v4, xctxt:Lorg/apache/xpath/XPathContext;
    :try_start_18
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/OneStepIterator;

    .line 206
    .local v0, clone:Lorg/apache/xpath/axes/OneStepIterator;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/OneStepIterator;->getRoot()I

    move-result v3

    .line 207
    .local v3, root:I
    invoke-virtual {v4, v3}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 208
    invoke-virtual {v0, v3, v4}, Lorg/apache/xpath/axes/OneStepIterator;->setRoot(ILjava/lang/Object;)V

    .line 211
    iput p1, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    .line 214
    const/4 v1, 0x1

    .line 217
    .local v1, count:I
    :goto_2b
    invoke-virtual {v0}, Lorg/apache/xpath/axes/OneStepIterator;->nextNode()I

    move-result v2

    .local v2, next:I
    if-eq v5, v2, :cond_34

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 222
    :cond_34
    iget-object v5, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v6, v5, p1

    add-int/2addr v6, v1

    aput v6, v5, p1
    :try_end_3b
    .catchall {:try_start_18 .. :try_end_3b} :catchall_48
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_18 .. :try_end_3b} :catch_43

    .line 231
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 235
    .end local v0           #clone:Lorg/apache/xpath/axes/OneStepIterator;
    .end local v1           #count:I
    .end local v2           #next:I
    .end local v3           #root:I
    .end local v4           #xctxt:Lorg/apache/xpath/XPathContext;
    :cond_3e
    :goto_3e
    iget-object v5, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v5, v5, p1

    goto :goto_b

    .line 224
    .restart local v4       #xctxt:Lorg/apache/xpath/XPathContext;
    :catch_43
    move-exception v5

    .line 231
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    goto :goto_3e

    :catchall_48
    move-exception v5

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v5
.end method

.method public isReverseAxes()Z
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMAxisIterator;->isReverse()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 314
    invoke-super {p0}, Lorg/apache/xpath/axes/ChildTestIterator;->reset()V

    .line 315
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    if-eqz v0, :cond_c

    .line 316
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMAxisIterator;->reset()Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 317
    :cond_c
    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .registers 5
    .parameter "context"
    .parameter "environment"

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/ChildTestIterator;->setRoot(ILjava/lang/Object;)V

    .line 96
    iget v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_12

    .line 97
    iget-object v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_axis:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 98
    :cond_12
    iget-object v0, p0, Lorg/apache/xpath/axes/OneStepIterator;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    iget v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 99
    return-void
.end method
