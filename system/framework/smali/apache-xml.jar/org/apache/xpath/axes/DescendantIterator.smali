.class public Lorg/apache/xpath/axes/DescendantIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "DescendantIterator.java"


# static fields
.field static final serialVersionUID:J = -0x1084eea8350345eaL


# instance fields
.field protected m_axis:I

.field protected m_extendedTypeID:I

.field protected transient m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 134
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 135
    const/16 v1, 0x12

    iput v1, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    .line 136
    const/4 v0, -0x1

    .line 137
    .local v0, whatToShow:I
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/DescendantIterator;->initNodeTest(I)V

    .line 138
    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 14
    .parameter "compiler"
    .parameter "opPos"
    .parameter "analysis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2a

    const/4 v3, 0x0

    const/4 v8, -0x1

    .line 57
    invoke-direct {p0, p1, p2, p3, v3}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 59
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result v0

    .line 60
    .local v0, firstStepPos:I
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v5

    .line 62
    .local v5, stepType:I
    if-ne v9, v5, :cond_12

    const/4 v3, 0x1

    .line 63
    .local v3, orSelf:Z
    :cond_12
    const/4 v1, 0x0

    .line 64
    .local v1, fromRoot:Z
    const/16 v7, 0x30

    if-ne v7, v5, :cond_27

    .line 66
    const/4 v3, 0x1

    .line 80
    :cond_18
    :goto_18
    move v2, v0

    .line 83
    .local v2, nextStepPos:I
    :goto_19
    invoke-virtual {p1, v2}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result v2

    .line 84
    if-lez v2, :cond_38

    .line 86
    invoke-virtual {p1, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v4

    .line 87
    .local v4, stepOp:I
    if-eq v8, v4, :cond_38

    .line 88
    move v0, v2

    .line 91
    goto :goto_19

    .line 69
    .end local v2           #nextStepPos:I
    .end local v4           #stepOp:I
    :cond_27
    const/16 v7, 0x32

    if-ne v7, v5, :cond_18

    .line 71
    const/4 v1, 0x1

    .line 73
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getNextStepPos(I)I

    move-result v2

    .line 74
    .restart local v2       #nextStepPos:I
    invoke-virtual {p1, v2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v7

    if-ne v7, v9, :cond_18

    .line 75
    const/4 v3, 0x1

    goto :goto_18

    .line 98
    :cond_38
    const/high16 v7, 0x1

    and-int/2addr v7, p3

    if-eqz v7, :cond_3e

    .line 99
    const/4 v3, 0x0

    .line 101
    :cond_3e
    if-eqz v1, :cond_5c

    .line 103
    if-eqz v3, :cond_57

    .line 104
    const/16 v7, 0x12

    iput v7, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    .line 113
    :goto_46
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getWhatToShow(I)I

    move-result v6

    .line 115
    .local v6, whatToShow:I
    and-int/lit8 v7, v6, 0x43

    if-eqz v7, :cond_50

    if-ne v6, v8, :cond_66

    .line 119
    :cond_50
    invoke-virtual {p0, v6}, Lorg/apache/xpath/axes/DescendantIterator;->initNodeTest(I)V

    .line 125
    :goto_53
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/axes/DescendantIterator;->initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V

    .line 126
    return-void

    .line 106
    .end local v6           #whatToShow:I
    :cond_57
    const/16 v7, 0x11

    iput v7, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    goto :goto_46

    .line 108
    :cond_5c
    if-eqz v3, :cond_62

    .line 109
    const/4 v7, 0x5

    iput v7, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    goto :goto_46

    .line 111
    :cond_62
    const/4 v7, 0x4

    iput v7, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    goto :goto_46

    .line 122
    .restart local v6       #whatToShow:I
    :cond_66
    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getStepNS(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/Compiler;->getStepLocalName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/xpath/axes/DescendantIterator;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_53
.end method


# virtual methods
.method public asNode(Lorg/apache/xpath/XPathContext;)I
    .registers 11
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->getPredicateCount()I

    move-result v8

    if-lez v8, :cond_b

    .line 297
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->asNode(Lorg/apache/xpath/XPathContext;)I

    move-result v8

    .line 322
    :goto_a
    return v8

    .line 299
    :cond_b
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 301
    .local v0, current:I
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 302
    .local v1, dtm:Lorg/apache/xml/dtm/DTM;
    iget v8, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    invoke-interface {v1, v8}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v5

    .line 304
    .local v5, traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, localName:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, namespace:Ljava/lang/String;
    iget v7, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    .line 312
    .local v7, what:I
    const/4 v8, -0x1

    if-eq v8, v7, :cond_2e

    const-string v8, "*"

    if-eq v3, v8, :cond_2e

    const-string v8, "*"

    if-ne v4, v8, :cond_33

    .line 316
    :cond_2e
    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v8

    goto :goto_a

    .line 320
    :cond_33
    invoke-static {v7}, Lorg/apache/xpath/axes/DescendantIterator;->getNodeTypeTest(I)I

    move-result v6

    .line 321
    .local v6, type:I
    invoke-interface {v1, v4, v3, v6}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 322
    .local v2, extendedType:I
    invoke-virtual {v5, v0, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(II)I

    move-result v8

    goto :goto_a
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/DescendantIterator;

    .line 153
    .local v0, clone:Lorg/apache/xpath/axes/DescendantIterator;
    iget-object v1, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iput-object v1, v0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 155
    invoke-virtual {v0}, Lorg/apache/xpath/axes/DescendantIterator;->resetProximityPositions()V

    .line 157
    return-object v0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 5
    .parameter "expr"

    .prologue
    const/4 v0, 0x0

    .line 370
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 376
    .end local p1
    :cond_7
    :goto_7
    return v0

    .line 373
    .restart local p1
    :cond_8
    iget v1, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    check-cast p1, Lorg/apache/xpath/axes/DescendantIterator;

    .end local p1
    iget v2, p1, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    if-ne v1, v2, :cond_7

    .line 376
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public detach()V
    .registers 2

    .prologue
    .line 335
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_d

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    .line 340
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->detach()V

    .line 342
    :cond_d
    return-void
.end method

.method public getAxis()I
    .registers 2

    .prologue
    .line 352
    iget v0, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    return v0
.end method

.method public nextNode()I
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v3, -0x1

    .line 174
    iget-boolean v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    if-eqz v4, :cond_8

    move v0, v3

    .line 249
    :cond_7
    :goto_7
    return v0

    .line 177
    :cond_8
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v3, v4, :cond_f

    .line 179
    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->resetProximityPositions()V

    .line 186
    :cond_f
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v4, :cond_4c

    .line 188
    iget-object v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    .line 191
    .local v2, vars:Lorg/apache/xpath/VariableStack;
    invoke-virtual {v2}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v1

    .line 193
    .local v1, savedStart:I
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    invoke-virtual {v2, v4}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 206
    :cond_22
    :goto_22
    :try_start_22
    iget v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    if-nez v4, :cond_5a

    .line 208
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v3, v4, :cond_4f

    iget-object v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    :goto_32
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    .line 220
    .local v0, next:I
    :goto_34
    if-eq v3, v0, :cond_3c

    .line 222
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/DescendantIterator;->acceptNode(I)S

    move-result v4

    if-ne v8, v4, :cond_78

    .line 232
    :cond_3c
    :goto_3c
    if-eq v3, v0, :cond_7b

    .line 234
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_pos:I
    :try_end_44
    .catchall {:try_start_22 .. :try_end_44} :catchall_87

    .line 246
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v4, :cond_7

    .line 249
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    goto :goto_7

    .line 198
    .end local v0           #next:I
    .end local v1           #savedStart:I
    .end local v2           #vars:Lorg/apache/xpath/VariableStack;
    :cond_4c
    const/4 v2, 0x0

    .line 199
    .restart local v2       #vars:Lorg/apache/xpath/VariableStack;
    const/4 v1, 0x0

    .restart local v1       #savedStart:I
    goto :goto_22

    .line 208
    :cond_4f
    :try_start_4f
    iget-object v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    goto :goto_32

    .line 214
    :cond_5a
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    if-ne v3, v4, :cond_6b

    iget-object v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iget v6, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(II)I

    move-result v0

    :goto_68
    iput v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    .restart local v0       #next:I
    goto :goto_34

    .end local v0           #next:I
    :cond_6b
    iget-object v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_context:I

    iget v6, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    iget v7, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(III)I

    move-result v0

    goto :goto_68

    .line 230
    .restart local v0       #next:I
    :cond_78
    if-ne v0, v3, :cond_22

    goto :goto_3c

    .line 239
    :cond_7b
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z
    :try_end_7e
    .catchall {:try_start_4f .. :try_end_7e} :catchall_87

    .line 246
    iget v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v4, :cond_85

    .line 249
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_85
    move v0, v3

    goto :goto_7

    .line 246
    .end local v0           #next:I
    :catchall_87
    move-exception v4

    iget v5, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_stackFrame:I

    if-eq v3, v5, :cond_8f

    .line 249
    invoke-virtual {v2, v1}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    :cond_8f
    throw v4
.end method

.method public setRoot(ILjava/lang/Object;)V
    .registers 9
    .parameter "context"
    .parameter "environment"

    .prologue
    .line 263
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 264
    iget-object v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    iget v5, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_axis:I

    invoke-interface {v4, v5}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 266
    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, localName:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/DescendantIterator;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, namespace:Ljava/lang/String;
    iget v3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    .line 271
    .local v3, what:I
    const/4 v4, -0x1

    if-eq v4, v3, :cond_2a

    const-string v4, "*"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    const-string v4, "*"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 275
    :cond_2a
    const/4 v4, 0x0

    iput v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    .line 283
    :goto_2d
    return-void

    .line 279
    :cond_2e
    invoke-static {v3}, Lorg/apache/xpath/axes/DescendantIterator;->getNodeTypeTest(I)I

    move-result v2

    .line 280
    .local v2, type:I
    iget-object v4, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_cdtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v4, v1, v0, v2}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/apache/xpath/axes/DescendantIterator;->m_extendedTypeID:I

    goto :goto_2d
.end method
