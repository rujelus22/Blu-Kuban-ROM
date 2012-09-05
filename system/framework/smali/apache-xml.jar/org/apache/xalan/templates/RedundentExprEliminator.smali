.class public Lorg/apache/xalan/templates/RedundentExprEliminator;
.super Lorg/apache/xalan/templates/XSLTVisitor;
.source "RedundentExprEliminator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DIAGNOSE_MULTISTEPLIST:Z = false

.field public static final DIAGNOSE_NUM_PATHS_REDUCED:Z = false

.field static final PSUEDOVARNAMESPACE:Ljava/lang/String; = "http://xml.apache.org/xalan/psuedovar"

.field private static m_uniquePseudoVarID:I


# instance fields
.field m_absPathChecker:Lorg/apache/xalan/templates/AbsPathChecker;

.field m_absPaths:Ljava/util/Vector;

.field m_isSameContext:Z

.field m_paths:Ljava/util/Vector;

.field m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x1

    sput v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/apache/xalan/templates/XSLTVisitor;-><init>()V

    .line 54
    new-instance v0, Lorg/apache/xalan/templates/AbsPathChecker;

    invoke-direct {v0}, Lorg/apache/xalan/templates/AbsPathChecker;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPathChecker:Lorg/apache/xalan/templates/AbsPathChecker;

    .line 66
    new-instance v0, Lorg/apache/xalan/templates/VarNameCollector;

    invoke-direct {v0}, Lorg/apache/xalan/templates/VarNameCollector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    .line 76
    return-void
.end method

.method private final assertIsLocPathIterator(Lorg/apache/xpath/Expression;Lorg/apache/xpath/ExpressionOwner;)V
    .registers 7
    .parameter "expr1"
    .parameter "eo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1244
    instance-of v1, p1, Lorg/apache/xpath/axes/LocPathIterator;

    if-nez v1, :cond_71

    .line 1247
    instance-of v1, p1, Lorg/apache/xpath/operations/Variable;

    if-eqz v1, :cond_55

    .line 1249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Programmer\'s assertion: expr1 not an iterator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lorg/apache/xpath/operations/Variable;

    invoke-virtual {v1}, Lorg/apache/xpath/operations/Variable;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1257
    .local v0, errMsg:Ljava/lang/String;
    :goto_22
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1254
    .end local v0           #errMsg:Ljava/lang/String;
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Programmer\'s assertion: expr1 not an iterator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #errMsg:Ljava/lang/String;
    goto :goto_22

    .line 1261
    .end local v0           #errMsg:Ljava/lang/String;
    :cond_71
    return-void
.end method

.method protected static assertion(ZLjava/lang/String;)V
    .registers 6
    .parameter "b"
    .parameter "msg"

    .prologue
    .line 1288
    if-nez p0, :cond_14

    .line 1290
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ER_ASSERT_REDUNDENT_EXPR_ELIMINATOR"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1293
    :cond_14
    return-void
.end method

.method private static declared-synchronized getPseudoVarID()I
    .registers 3

    .prologue
    .line 803
    const-class v1, Lorg/apache/xalan/templates/RedundentExprEliminator;

    monitor-enter v1

    :try_start_3
    sget v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static validateNewAddition(Ljava/util/Vector;Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)V
    .registers 10
    .parameter "paths"
    .parameter "owner"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1272
    invoke-interface {p1}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v3

    if-ne v3, p2, :cond_32

    move v3, v4

    :goto_9
    const-string v6, "owner.getExpression() != path!!!"

    invoke-static {v3, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    .line 1273
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1275
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v2, :cond_38

    .line 1277
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/ExpressionOwner;

    .line 1278
    .local v0, ew:Lorg/apache/xpath/ExpressionOwner;
    if-eq v0, p1, :cond_34

    move v3, v4

    :goto_1e
    const-string v6, "duplicate owner on the list!!!"

    invoke-static {v3, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    .line 1279
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v3

    if-eq v3, p2, :cond_36

    move v3, v4

    :goto_2a
    const-string v6, "duplicate expression on the list!!!"

    invoke-static {v3, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    .line 1275
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .end local v0           #ew:Lorg/apache/xpath/ExpressionOwner;
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_32
    move v3, v5

    .line 1272
    goto :goto_9

    .restart local v0       #ew:Lorg/apache/xpath/ExpressionOwner;
    .restart local v1       #i:I
    .restart local v2       #n:I
    :cond_34
    move v3, v5

    .line 1278
    goto :goto_1e

    :cond_36
    move v3, v5

    .line 1279
    goto :goto_2a

    .line 1281
    .end local v0           #ew:Lorg/apache/xpath/ExpressionOwner;
    :cond_38
    return-void
.end method


# virtual methods
.method protected addVarDeclToElem(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Lorg/apache/xalan/templates/ElemVariable;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 11
    .parameter "psuedoVarRecipient"
    .parameter "lpi"
    .parameter "psuedoVar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x29

    .line 902
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 904
    .local v1, ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    invoke-virtual {p2, v3, v4}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 910
    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    invoke-virtual {v4}, Lorg/apache/xalan/templates/VarNameCollector;->getVarCount()I

    move-result v4

    if-lez v4, :cond_32

    .line 912
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 913
    .local v0, baseElem:Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPrevVariableElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    .line 914
    .local v2, varElem:Lorg/apache/xalan/templates/ElemVariable;
    :goto_1c
    if-eqz v2, :cond_32

    .line 916
    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xalan/templates/VarNameCollector;->doesOccur(Lorg/apache/xml/utils/QName;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 918
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    .line 919
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 926
    .end local v0           #baseElem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v2           #varElem:Lorg/apache/xalan/templates/ElemVariable;
    :cond_32
    if-eqz v1, :cond_55

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v4

    if-ne v6, v4, :cond_55

    .line 929
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->isParam(Lorg/apache/xpath/ExpressionNode;)Z

    move-result v4

    if-eqz v4, :cond_47

    move-object p3, v3

    .line 941
    .end local p3
    :goto_41
    return-object p3

    .line 922
    .restart local v0       #baseElem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v2       #varElem:Lorg/apache/xalan/templates/ElemVariable;
    .restart local p3
    :cond_42
    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPrevVariableElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    goto :goto_1c

    .line 932
    .end local v0           #baseElem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v2           #varElem:Lorg/apache/xalan/templates/ElemVariable;
    :cond_47
    if-eqz v1, :cond_55

    .line 934
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 935
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v3

    if-eq v6, v3, :cond_47

    .line 939
    :cond_55
    invoke-virtual {p1, p3, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 940
    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    invoke-virtual {v3}, Lorg/apache/xalan/templates/VarNameCollector;->reset()V

    goto :goto_41
.end method

.method protected changePartToRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/axes/WalkingIterator;IZ)Lorg/apache/xpath/axes/LocPathIterator;
    .registers 15
    .parameter "uniquePseudoVarName"
    .parameter "wi"
    .parameter "numSteps"
    .parameter "isGlobal"

    .prologue
    .line 442
    new-instance v5, Lorg/apache/xpath/operations/Variable;

    invoke-direct {v5}, Lorg/apache/xpath/operations/Variable;-><init>()V

    .line 443
    .local v5, var:Lorg/apache/xpath/operations/Variable;
    invoke-virtual {v5, p1}, Lorg/apache/xpath/operations/Variable;->setQName(Lorg/apache/xml/utils/QName;)V

    .line 444
    invoke-virtual {v5, p4}, Lorg/apache/xpath/operations/Variable;->setIsGlobal(Z)V

    .line 445
    if-eqz p4, :cond_22

    .line 446
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 447
    .local v0, elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v4

    .line 448
    .local v4, root:Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v6

    .line 449
    .local v6, vars:Ljava/util/Vector;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Lorg/apache/xpath/operations/Variable;->setIndex(I)V

    .line 453
    .end local v0           #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v4           #root:Lorg/apache/xalan/templates/StylesheetRoot;
    .end local v6           #vars:Ljava/util/Vector;
    :cond_22
    invoke-virtual {p2}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v7

    .line 454
    .local v7, walker:Lorg/apache/xpath/axes/AxesWalker;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_27
    if-ge v3, p3, :cond_3a

    .line 456
    if-eqz v7, :cond_38

    const/4 v8, 0x1

    :goto_2c
    const-string v9, "Walker should not be null!"

    invoke-static {v8, v9}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    .line 457
    invoke-virtual {v7}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v7

    .line 454
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 456
    :cond_38
    const/4 v8, 0x0

    goto :goto_2c

    .line 460
    :cond_3a
    if-eqz v7, :cond_51

    .line 463
    new-instance v2, Lorg/apache/xpath/axes/FilterExprWalker;

    invoke-direct {v2, p2}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    .line 464
    .local v2, few:Lorg/apache/xpath/axes/FilterExprWalker;
    invoke-virtual {v2, v5}, Lorg/apache/xpath/axes/FilterExprWalker;->setInnerExpression(Lorg/apache/xpath/Expression;)V

    .line 465
    invoke-virtual {v2, p2}, Lorg/apache/xpath/axes/FilterExprWalker;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 466
    invoke-virtual {v2, v7}, Lorg/apache/xpath/axes/FilterExprWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 467
    invoke-virtual {v7, v2}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 468
    invoke-virtual {p2, v2}, Lorg/apache/xpath/axes/WalkingIterator;->setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 475
    .end local v2           #few:Lorg/apache/xpath/axes/FilterExprWalker;
    .end local p2
    :goto_50
    return-object p2

    .line 473
    .restart local p2
    :cond_51
    new-instance v1, Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    invoke-direct {v1, v5}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;-><init>(Lorg/apache/xpath/Expression;)V

    .line 474
    .local v1, feis:Lorg/apache/xpath/axes/FilterExprIteratorSimple;
    invoke-virtual {p2}, Lorg/apache/xpath/axes/WalkingIterator;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    move-object p2, v1

    .line 475
    goto :goto_50
.end method

.method protected changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 9
    .parameter "varName"
    .parameter "owner"
    .parameter "paths"
    .parameter "psuedoVarRecipient"

    .prologue
    .line 788
    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-ne p3, v3, :cond_28

    new-instance v2, Lorg/apache/xpath/operations/VariableSafeAbsRef;

    invoke-direct {v2}, Lorg/apache/xpath/operations/VariableSafeAbsRef;-><init>()V

    .line 789
    .local v2, varRef:Lorg/apache/xpath/operations/Variable;
    :goto_9
    invoke-virtual {v2, p1}, Lorg/apache/xpath/operations/Variable;->setQName(Lorg/apache/xml/utils/QName;)V

    .line 790
    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-ne p3, v3, :cond_24

    move-object v1, p4

    .line 792
    check-cast v1, Lorg/apache/xalan/templates/StylesheetRoot;

    .line 793
    .local v1, root:Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v0

    .line 796
    .local v0, globalVars:Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/xpath/operations/Variable;->setIndex(I)V

    .line 797
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/xpath/operations/Variable;->setIsGlobal(Z)V

    .line 799
    .end local v0           #globalVars:Ljava/util/Vector;
    .end local v1           #root:Lorg/apache/xalan/templates/StylesheetRoot;
    :cond_24
    invoke-interface {p2, v2}, Lorg/apache/xpath/ExpressionOwner;->setExpression(Lorg/apache/xpath/Expression;)V

    .line 800
    return-void

    .line 788
    .end local v2           #varRef:Lorg/apache/xpath/operations/Variable;
    :cond_28
    new-instance v2, Lorg/apache/xpath/operations/Variable;

    invoke-direct {v2}, Lorg/apache/xpath/operations/Variable;-><init>()V

    goto :goto_9
.end method

.method protected countAncestors(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    .registers 3
    .parameter "elem"

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, count:I
    :goto_1
    if-eqz p1, :cond_a

    .line 406
    add-int/lit8 v0, v0, 0x1

    .line 407
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    goto :goto_1

    .line 409
    :cond_a
    return v0
.end method

.method protected countSteps(Lorg/apache/xpath/axes/LocPathIterator;)I
    .registers 6
    .parameter "lpi"

    .prologue
    .line 753
    instance-of v3, p1, Lorg/apache/xpath/axes/WalkingIterator;

    if-eqz v3, :cond_15

    move-object v2, p1

    .line 755
    check-cast v2, Lorg/apache/xpath/axes/WalkingIterator;

    .line 756
    .local v2, wi:Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual {v2}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    .line 757
    .local v0, aw:Lorg/apache/xpath/axes/AxesWalker;
    const/4 v1, 0x0

    .line 758
    .local v1, count:I
    :goto_c
    if-eqz v0, :cond_16

    .line 760
    add-int/lit8 v1, v1, 0x1

    .line 761
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    goto :goto_c

    .line 766
    .end local v0           #aw:Lorg/apache/xpath/axes/AxesWalker;
    .end local v1           #count:I
    .end local v2           #wi:Lorg/apache/xpath/axes/WalkingIterator;
    :cond_15
    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method protected createGlobalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/StylesheetRoot;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 8
    .parameter "uniquePseudoVarName"
    .parameter "stylesheetRoot"
    .parameter "lpi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 848
    new-instance v1, Lorg/apache/xalan/templates/ElemVariable;

    invoke-direct {v1}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    .line 849
    .local v1, psuedoVar:Lorg/apache/xalan/templates/ElemVariable;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/xalan/templates/ElemVariable;->setIsTopLevel(Z)V

    .line 850
    new-instance v2, Lorg/apache/xpath/XPath;

    invoke-direct {v2, p3}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    .line 851
    .local v2, xpath:Lorg/apache/xpath/XPath;
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/ElemVariable;->setSelect(Lorg/apache/xpath/XPath;)V

    .line 852
    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/ElemVariable;->setName(Lorg/apache/xml/utils/QName;)V

    .line 854
    invoke-virtual {p2}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object v0

    .line 855
    .local v0, globalVars:Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/xalan/templates/ElemVariable;->setIndex(I)V

    .line 856
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 857
    return-object v1
.end method

.method protected createIteratorFromSteps(Lorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/WalkingIterator;
    .registers 9
    .parameter "wi"
    .parameter "numSteps"

    .prologue
    .line 489
    new-instance v2, Lorg/apache/xpath/axes/WalkingIterator;

    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 492
    .local v2, newIter:Lorg/apache/xpath/axes/WalkingIterator;
    :try_start_9
    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xpath/axes/AxesWalker;

    .line 493
    .local v4, walker:Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {v2, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 494
    invoke-virtual {v4, v2}, Lorg/apache/xpath/axes/AxesWalker;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    .line 495
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1a
    if-ge v1, p2, :cond_30

    .line 497
    invoke-virtual {v4}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xpath/axes/AxesWalker;

    .line 498
    .local v3, next:Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {v4, v3}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 499
    invoke-virtual {v3, v2}, Lorg/apache/xpath/axes/AxesWalker;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    .line 500
    move-object v4, v3

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 502
    .end local v3           #next:Lorg/apache/xpath/axes/AxesWalker;
    :cond_30
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    :try_end_34
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_9 .. :try_end_34} :catch_35

    .line 508
    return-object v2

    .line 504
    .end local v1           #i:I
    .end local v4           #walker:Lorg/apache/xpath/axes/AxesWalker;
    :catch_35
    move-exception v0

    .line 506
    .local v0, cnse:Ljava/lang/CloneNotSupportedException;
    new-instance v5, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v5, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method protected createLocalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 7
    .parameter "uniquePseudoVarName"
    .parameter "psuedoVarRecipient"
    .parameter "lpi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 879
    new-instance v0, Lorg/apache/xalan/templates/ElemVariablePsuedo;

    invoke-direct {v0}, Lorg/apache/xalan/templates/ElemVariablePsuedo;-><init>()V

    .line 881
    .local v0, psuedoVar:Lorg/apache/xalan/templates/ElemVariable;
    new-instance v2, Lorg/apache/xpath/XPath;

    invoke-direct {v2, p3}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    .line 882
    .local v2, xpath:Lorg/apache/xpath/XPath;
    invoke-virtual {v0, v2}, Lorg/apache/xalan/templates/ElemVariablePsuedo;->setSelect(Lorg/apache/xpath/XPath;)V

    .line 883
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemVariable;->setName(Lorg/apache/xml/utils/QName;)V

    .line 885
    invoke-virtual {p0, p2, p3, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->addVarDeclToElem(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Lorg/apache/xalan/templates/ElemVariable;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v1

    .line 887
    .local v1, var:Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {p3, v1}, Lorg/apache/xpath/axes/LocPathIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 889
    return-object v1
.end method

.method protected createMultistepExprList(Ljava/util/Vector;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .registers 11
    .parameter "paths"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 556
    const/4 v1, 0x0

    .line 557
    .local v1, first:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    .line 558
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v4, :cond_2e

    .line 560
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/ExpressionOwner;

    .line 561
    .local v0, eo:Lorg/apache/xpath/ExpressionOwner;
    if-nez v0, :cond_15

    .line 558
    :cond_12
    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 565
    :cond_15
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v3

    check-cast v3, Lorg/apache/xpath/axes/LocPathIterator;

    .line 566
    .local v3, lpi:Lorg/apache/xpath/axes/LocPathIterator;
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->countSteps(Lorg/apache/xpath/axes/LocPathIterator;)I

    move-result v5

    .line 567
    .local v5, numPaths:I
    if-le v5, v8, :cond_12

    .line 569
    if-nez v1, :cond_29

    .line 570
    new-instance v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .end local v1           #first:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    invoke-direct {v1, p0, v0, v5, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    .restart local v1       #first:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    goto :goto_12

    .line 572
    :cond_29
    invoke-virtual {v1, v0, v5}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->addInSortedOrder(Lorg/apache/xpath/ExpressionOwner;I)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-result-object v1

    goto :goto_12

    .line 576
    .end local v0           #eo:Lorg/apache/xpath/ExpressionOwner;
    .end local v3           #lpi:Lorg/apache/xpath/axes/LocPathIterator;
    .end local v5           #numPaths:I
    :cond_2e
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    move-result v7

    if-gt v7, v8, :cond_37

    :cond_36
    move-object v1, v6

    .line 579
    .end local v1           #first:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :cond_37
    return-object v1
.end method

.method protected createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;
    .registers 8
    .parameter "psuedoVarRecipient"
    .parameter "lpi"
    .parameter "isGlobal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 821
    new-instance v0, Lorg/apache/xml/utils/QName;

    const-string v1, "http://xml.apache.org/xalan/psuedovar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPseudoVarID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    .local v0, uniquePseudoVarName:Lorg/apache/xml/utils/QName;
    if-eqz p3, :cond_27

    .line 825
    check-cast p1, Lorg/apache/xalan/templates/StylesheetRoot;

    .end local p1
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createGlobalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/StylesheetRoot;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v1

    .line 829
    :goto_26
    return-object v1

    .restart local p1
    :cond_27
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createLocalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v1

    goto :goto_26
.end method

.method protected diagnoseLineNumber(Lorg/apache/xpath/Expression;)V
    .registers 6
    .parameter "expr"

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 285
    .local v0, e:Lorg/apache/xalan/templates/ElemTemplateElement;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method protected diagnoseMultistepList(IIZ)V
    .registers 7
    .parameter "matchCount"
    .parameter "lengthToTest"
    .parameter "isGlobal"

    .prologue
    .line 420
    if-lez p1, :cond_33

    .line 422
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found multistep matches: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 424
    if-eqz p3, :cond_34

    .line 425
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, " (global)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 429
    :cond_33
    :goto_33
    return-void

    .line 427
    :cond_34
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    goto :goto_33
.end method

.method protected diagnoseNumPaths(Ljava/util/Vector;II)V
    .registers 7
    .parameter "paths"
    .parameter "numPathsEliminated"
    .parameter "numUniquePathsEliminated"

    .prologue
    .line 1219
    if-lez p2, :cond_42

    .line 1221
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    if-ne p1, v0, :cond_43

    .line 1223
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eliminated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total paths!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1224
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consolodated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " redundent paths!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1234
    :cond_42
    :goto_42
    return-void

    .line 1229
    :cond_43
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eliminated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total global paths!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1230
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consolodated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " redundent global paths!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_42
.end method

.method protected eleminateRedundent(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V
    .registers 13
    .parameter "psuedoVarRecipient"
    .parameter "paths"

    .prologue
    .line 123
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v7

    .line 124
    .local v7, n:I
    const/4 v8, 0x0

    .line 125
    .local v8, numPathsEliminated:I
    const/4 v9, 0x0

    .line 126
    .local v9, numUniquePathsEliminated:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v7, :cond_22

    .line 128
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xpath/ExpressionOwner;

    .line 129
    .local v3, owner:Lorg/apache/xpath/ExpressionOwner;
    if-eqz v3, :cond_1f

    .line 131
    add-int/lit8 v1, v2, 0x1

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/RedundentExprEliminator;->findAndEliminateRedundant(IILorg/apache/xpath/ExpressionOwner;Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)I

    move-result v6

    .line 132
    .local v6, found:I
    if-lez v6, :cond_1e

    .line 133
    add-int/lit8 v9, v9, 0x1

    .line 134
    :cond_1e
    add-int/2addr v8, v6

    .line 126
    .end local v6           #found:I
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 138
    .end local v3           #owner:Lorg/apache/xpath/ExpressionOwner;
    :cond_22
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateSharedPartialPaths(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V

    .line 142
    return-void
.end method

.method public eleminateRedundentGlobals(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 3
    .parameter "stylesheet"

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateRedundent(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V

    .line 106
    return-void
.end method

.method public eleminateRedundentLocals(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 3
    .parameter "psuedoVarRecipient"

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateRedundent(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V

    .line 93
    return-void
.end method

.method protected eleminateSharedPartialPaths(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V
    .registers 11
    .parameter "psuedoVarRecipient"
    .parameter "paths"

    .prologue
    const/4 v7, 0x1

    .line 154
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createMultistepExprList(Ljava/util/Vector;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-result-object v2

    .line 155
    .local v2, list:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    if-eqz v2, :cond_27

    .line 160
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-ne p2, v0, :cond_1c

    move v3, v7

    .line 164
    .local v3, isGlobal:Z
    :goto_c
    iget v6, v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    .line 165
    .local v6, longestStepsCount:I
    add-int/lit8 v4, v6, -0x1

    .local v4, i:I
    :goto_10
    if-lt v4, v7, :cond_27

    .line 167
    move-object v1, v2

    .line 168
    .local v1, next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :goto_13
    if-eqz v1, :cond_19

    .line 170
    iget v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    if-ge v0, v4, :cond_1e

    .line 165
    :cond_19
    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    .line 160
    .end local v1           #next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .end local v3           #isGlobal:Z
    .end local v4           #i:I
    .end local v6           #longestStepsCount:I
    :cond_1c
    const/4 v3, 0x0

    goto :goto_c

    .restart local v1       #next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .restart local v3       #isGlobal:Z
    .restart local v4       #i:I
    .restart local v6       #longestStepsCount:I
    :cond_1e
    move-object v0, p0

    move-object v5, p1

    .line 172
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/RedundentExprEliminator;->matchAndEliminatePartialPaths(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;ZILorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-result-object v2

    .line 173
    iget-object v1, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_13

    .line 177
    .end local v1           #next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .end local v3           #isGlobal:Z
    .end local v4           #i:I
    .end local v6           #longestStepsCount:I
    :cond_27
    return-void
.end method

.method protected findAndEliminateRedundant(IILorg/apache/xpath/ExpressionOwner;Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)I
    .registers 30
    .parameter "start"
    .parameter "firstOccuranceIndex"
    .parameter "firstOccuranceOwner"
    .parameter "psuedoVarRecipient"
    .parameter "paths"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 602
    const/4 v6, 0x0

    .line 603
    .local v6, head:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/16 v19, 0x0

    .line 604
    .local v19, tail:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/4 v13, 0x0

    .line 605
    .local v13, numPathsFound:I
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v12

    .line 607
    .local v12, n:I
    invoke-interface/range {p3 .. p3}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v4

    .line 610
    .local v4, expr1:Lorg/apache/xpath/Expression;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    move-object/from16 v22, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7b

    const/4 v8, 0x1

    .local v8, isGlobal:Z
    :goto_19
    move-object v10, v4

    .line 611
    check-cast v10, Lorg/apache/xpath/axes/LocPathIterator;

    .line 612
    .local v10, lpi:Lorg/apache/xpath/axes/LocPathIterator;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/xalan/templates/RedundentExprEliminator;->countSteps(Lorg/apache/xpath/axes/LocPathIterator;)I

    move-result v18

    .line 613
    .local v18, stepCount:I
    move/from16 v9, p1

    .local v9, j:I
    :goto_24
    if-ge v9, v12, :cond_7d

    .line 615
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/xpath/ExpressionOwner;

    .line 616
    .local v15, owner2:Lorg/apache/xpath/ExpressionOwner;
    if-eqz v15, :cond_78

    .line 618
    invoke-interface {v15}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v5

    .line 619
    .local v5, expr2:Lorg/apache/xpath/Expression;
    invoke-virtual {v5, v10}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v7

    .line 620
    .local v7, isEqual:Z
    if-eqz v7, :cond_78

    move-object v11, v5

    .line 622
    check-cast v11, Lorg/apache/xpath/axes/LocPathIterator;

    .line 623
    .local v11, lpi2:Lorg/apache/xpath/axes/LocPathIterator;
    if-nez v6, :cond_52

    .line 625
    new-instance v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .end local v6           #head:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v6, v0, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    .line 626
    .restart local v6       #head:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    move-object/from16 v19, v6

    .line 627
    add-int/lit8 v13, v13, 0x1

    .line 629
    :cond_52
    new-instance v22, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v18

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v15, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 630
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object/from16 v19, v0

    .line 633
    const/16 v22, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 636
    add-int/lit8 v13, v13, 0x1

    .line 613
    .end local v5           #expr2:Lorg/apache/xpath/Expression;
    .end local v7           #isEqual:Z
    .end local v11           #lpi2:Lorg/apache/xpath/axes/LocPathIterator;
    :cond_78
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    .line 610
    .end local v8           #isGlobal:Z
    .end local v9           #j:I
    .end local v10           #lpi:Lorg/apache/xpath/axes/LocPathIterator;
    .end local v15           #owner2:Lorg/apache/xpath/ExpressionOwner;
    .end local v18           #stepCount:I
    :cond_7b
    const/4 v8, 0x0

    goto :goto_19

    .line 642
    .restart local v8       #isGlobal:Z
    .restart local v9       #j:I
    .restart local v10       #lpi:Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v18       #stepCount:I
    :cond_7d
    if-nez v13, :cond_92

    if-eqz v8, :cond_92

    .line 644
    new-instance v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .end local v6           #head:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v6, v0, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    .line 645
    .restart local v6       #head:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    add-int/lit8 v13, v13, 0x1

    .line 648
    :cond_92
    if-eqz v6, :cond_d6

    .line 650
    if-eqz v8, :cond_c2

    move-object/from16 v16, p4

    .line 651
    .local v16, root:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_98
    iget-object v0, v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v17

    check-cast v17, Lorg/apache/xpath/axes/LocPathIterator;

    .line 652
    .local v17, sharedIter:Lorg/apache/xpath/axes/LocPathIterator;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v8}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v21

    .line 655
    .local v21, var:Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v20

    .line 656
    .local v20, uniquePseudoVarName:Lorg/apache/xml/utils/QName;
    :goto_b0
    if-eqz v6, :cond_c9

    .line 658
    iget-object v14, v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    .line 661
    .local v14, owner:Lorg/apache/xpath/ExpressionOwner;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p5

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v14, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 662
    iget-object v6, v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 663
    goto :goto_b0

    .line 650
    .end local v14           #owner:Lorg/apache/xpath/ExpressionOwner;
    .end local v16           #root:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v17           #sharedIter:Lorg/apache/xpath/axes/LocPathIterator;
    .end local v20           #uniquePseudoVarName:Lorg/apache/xml/utils/QName;
    .end local v21           #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_c2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->findCommonAncestor(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v16

    goto :goto_98

    .line 666
    .restart local v16       #root:Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v17       #sharedIter:Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v20       #uniquePseudoVarName:Lorg/apache/xml/utils/QName;
    .restart local v21       #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_c9
    invoke-virtual/range {v21 .. v21}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v22

    move-object/from16 v0, p5

    move-object/from16 v1, v22

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 669
    .end local v16           #root:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v17           #sharedIter:Lorg/apache/xpath/axes/LocPathIterator;
    .end local v20           #uniquePseudoVarName:Lorg/apache/xml/utils/QName;
    .end local v21           #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_d6
    return v13
.end method

.method protected findCommonAncestor(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 19
    .parameter "head"

    .prologue
    .line 295
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    move-result v11

    .line 299
    .local v11, numExprs:I
    new-array v5, v11, [Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 300
    .local v5, elems:[Lorg/apache/xalan/templates/ElemTemplateElement;
    new-array v2, v11, [I

    .line 304
    .local v2, ancestorCounts:[I
    move-object/from16 v9, p1

    .line 305
    .local v9, next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/16 v13, 0x2710

    .line 306
    .local v13, shortestAncestorCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_d
    if-ge v7, v11, :cond_2d

    .line 308
    iget-object v15, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    invoke-interface {v15}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v4

    .line 310
    .local v4, elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    aput-object v4, v5, v7

    .line 311
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->countAncestors(Lorg/apache/xalan/templates/ElemTemplateElement;)I

    move-result v10

    .line 312
    .local v10, numAncestors:I
    aput v10, v2, v7

    .line 313
    if-ge v10, v13, :cond_28

    .line 315
    move v13, v10

    .line 317
    :cond_28
    iget-object v9, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 306
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 321
    .end local v4           #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v10           #numAncestors:I
    :cond_2d
    const/4 v7, 0x0

    :goto_2e
    if-ge v7, v11, :cond_49

    .line 323
    aget v15, v2, v7

    if-le v15, v13, :cond_46

    .line 325
    aget v15, v2, v7

    sub-int v12, v15, v13

    .line 326
    .local v12, numStepCorrection:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_39
    if-ge v8, v12, :cond_46

    .line 328
    aget-object v15, v5, v7

    invoke-virtual {v15}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v15

    aput-object v15, v5, v7

    .line 326
    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    .line 321
    .end local v8           #j:I
    .end local v12           #numStepCorrection:I
    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 335
    :cond_49
    const/4 v6, 0x0

    .local v6, first:Lorg/apache/xalan/templates/ElemTemplateElement;
    move v14, v13

    .line 336
    .end local v13           #shortestAncestorCount:I
    .local v14, shortestAncestorCount:I
    :goto_4b
    add-int/lit8 v13, v14, -0x1

    .end local v14           #shortestAncestorCount:I
    .restart local v13       #shortestAncestorCount:I
    if-ltz v14, :cond_82

    .line 338
    const/4 v3, 0x1

    .line 339
    .local v3, areEqual:Z
    const/4 v15, 0x0

    aget-object v6, v5, v15

    .line 340
    const/4 v7, 0x1

    :goto_54
    if-ge v7, v11, :cond_5b

    .line 342
    aget-object v15, v5, v7

    if-eq v6, v15, :cond_6f

    .line 344
    const/4 v3, 0x0

    .line 350
    :cond_5b
    if-eqz v3, :cond_72

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->isNotSameAsOwner(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v15

    if-eqz v15, :cond_72

    invoke-virtual {v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->canAcceptVariables()Z

    move-result v15

    if-eqz v15, :cond_72

    move-object v15, v6

    .line 367
    .end local v3           #areEqual:Z
    :goto_6e
    return-object v15

    .line 340
    .restart local v3       #areEqual:Z
    :cond_6f
    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    .line 360
    :cond_72
    const/4 v7, 0x0

    :goto_73
    if-ge v7, v11, :cond_80

    .line 362
    aget-object v15, v5, v7

    invoke-virtual {v15}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v15

    aput-object v15, v5, v7

    .line 360
    add-int/lit8 v7, v7, 0x1

    goto :goto_73

    :cond_80
    move v14, v13

    .line 364
    .end local v13           #shortestAncestorCount:I
    .restart local v14       #shortestAncestorCount:I
    goto :goto_4b

    .line 366
    .end local v3           #areEqual:Z
    .end local v14           #shortestAncestorCount:I
    .restart local v13       #shortestAncestorCount:I
    :cond_82
    const/4 v15, 0x0

    const-string v16, "Could not find common ancestor!!!"

    invoke-static/range {v15 .. v16}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    .line 367
    const/4 v15, 0x0

    goto :goto_6e
.end method

.method protected getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 6
    .parameter "expr"

    .prologue
    .line 1038
    invoke-virtual {p1}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    .line 1039
    .local v0, parent:Lorg/apache/xpath/ExpressionNode;
    :goto_4
    if-eqz v0, :cond_12

    .line 1041
    instance-of v1, v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v1, :cond_d

    .line 1042
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    .end local v0           #parent:Lorg/apache/xpath/ExpressionNode;
    return-object v0

    .line 1043
    .restart local v0       #parent:Lorg/apache/xpath/ExpressionNode;
    :cond_d
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    goto :goto_4

    .line 1045
    :cond_12
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_ASSERT_NO_TEMPLATE_PARENT"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getPrevElementWithinContext(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 5
    .parameter "elem"

    .prologue
    .line 1012
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 1013
    .local v0, prev:Lorg/apache/xalan/templates/ElemTemplateElement;
    if-nez v0, :cond_a

    .line 1014
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 1015
    :cond_a
    if-eqz v0, :cond_1d

    .line 1017
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    .line 1018
    .local v1, type:I
    const/16 v2, 0x1c

    if-eq v2, v1, :cond_1c

    const/16 v2, 0x13

    if-eq v2, v1, :cond_1c

    const/16 v2, 0x19

    if-ne v2, v1, :cond_1d

    .line 1022
    :cond_1c
    const/4 v0, 0x0

    .line 1025
    .end local v1           #type:I
    :cond_1d
    return-object v0
.end method

.method protected getPrevVariableElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 4
    .parameter "elem"

    .prologue
    .line 989
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPrevElementWithinContext(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 991
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    .line 993
    .local v0, type:I
    const/16 v1, 0x49

    if-eq v1, v0, :cond_12

    const/16 v1, 0x29

    if-ne v1, v0, :cond_0

    .line 996
    :cond_12
    check-cast p1, Lorg/apache/xalan/templates/ElemVariable;

    .line 999
    .end local v0           #type:I
    .end local p1
    :goto_14
    return-object p1

    .restart local p1
    :cond_15
    const/4 p1, 0x0

    goto :goto_14
.end method

.method public isAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z
    .registers 5
    .parameter "path"

    .prologue
    .line 1057
    invoke-virtual {p1}, Lorg/apache/xpath/axes/LocPathIterator;->getAnalysisBits()I

    move-result v0

    .line 1058
    .local v0, analysis:I
    const/high16 v2, 0x800

    invoke-static {v0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_14

    const/high16 v2, 0x2000

    invoke-static {v0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_14
    const/4 v1, 0x1

    .line 1060
    .local v1, isAbs:Z
    :goto_15
    if-eqz v1, :cond_1d

    .line 1062
    iget-object v2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPathChecker:Lorg/apache/xalan/templates/AbsPathChecker;

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/AbsPathChecker;->checkAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result v1

    .line 1064
    :cond_1d
    return v1

    .line 1058
    .end local v1           #isAbs:Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_15
.end method

.method protected isNotSameAsOwner(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 6
    .parameter "head"
    .parameter "ete"

    .prologue
    .line 384
    move-object v1, p1

    .line 385
    .local v1, next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :goto_1
    if-eqz v1, :cond_14

    .line 387
    iget-object v2, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    invoke-interface {v2}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 388
    .local v0, elemOwner:Lorg/apache/xalan/templates/ElemTemplateElement;
    if-ne v0, p2, :cond_11

    .line 389
    const/4 v2, 0x0

    .line 392
    .end local v0           #elemOwner:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_10
    return v2

    .line 390
    .restart local v0       #elemOwner:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_11
    iget-object v1, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 391
    goto :goto_1

    .line 392
    .end local v0           #elemOwner:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_14
    const/4 v2, 0x1

    goto :goto_10
.end method

.method protected isParam(Lorg/apache/xpath/ExpressionNode;)Z
    .registers 6
    .parameter "expr"

    .prologue
    const/4 v2, 0x0

    .line 949
    :goto_1
    if-eqz p1, :cond_7

    .line 951
    instance-of v3, p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v3, :cond_1a

    .line 955
    :cond_7
    if-eqz p1, :cond_20

    move-object v0, p1

    .line 957
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 958
    .local v0, ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_c
    if-eqz v0, :cond_20

    .line 960
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    .line 961
    .local v1, type:I
    sparse-switch v1, :sswitch_data_22

    .line 969
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 970
    goto :goto_c

    .line 953
    .end local v0           #ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v1           #type:I
    :cond_1a
    invoke-interface {p1}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object p1

    goto :goto_1

    .line 964
    .restart local v0       #ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v1       #type:I
    :sswitch_1f
    const/4 v2, 0x1

    .line 972
    .end local v0           #ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v1           #type:I
    :cond_20
    :sswitch_20
    return v2

    .line 961
    nop

    :sswitch_data_22
    .sparse-switch
        0x13 -> :sswitch_20
        0x19 -> :sswitch_20
        0x29 -> :sswitch_1f
    .end sparse-switch
.end method

.method protected matchAndEliminatePartialPaths(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;ZILorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .registers 24
    .parameter "testee"
    .parameter "head"
    .parameter "isGlobal"
    .parameter "lengthToTest"
    .parameter "varScope"

    .prologue
    .line 192
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    .line 261
    :cond_8
    return-object p2

    .line 196
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v5

    check-cast v5, Lorg/apache/xpath/axes/WalkingIterator;

    .line 197
    .local v5, iter1:Lorg/apache/xpath/axes/WalkingIterator;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->partialIsVariable(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;I)Z

    move-result v17

    if-nez v17, :cond_8

    .line 199
    const/4 v8, 0x0

    .line 200
    .local v8, matchedPaths:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/4 v9, 0x0

    .line 201
    .local v9, matchedPathsTail:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    move-object/from16 v10, p2

    .line 202
    .local v10, meh:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :goto_25
    if-eqz v10, :cond_7a

    .line 204
    move-object/from16 v0, p1

    if-eq v10, v0, :cond_77

    iget-object v0, v10, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v17, v0

    if-eqz v17, :cond_77

    .line 206
    iget-object v0, v10, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v6

    check-cast v6, Lorg/apache/xpath/axes/WalkingIterator;

    .line 207
    .local v6, iter2:Lorg/apache/xpath/axes/WalkingIterator;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v5, v6, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->stepsEqual(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/axes/WalkingIterator;I)Z

    move-result v17

    if-eqz v17, :cond_77

    .line 209
    if-nez v8, :cond_5f

    .line 213
    :try_start_47
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->clone()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object v8, v0

    .line 214
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;
    :try_end_58
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_47 .. :try_end_58} :catch_c4

    .line 217
    :goto_58
    move-object v9, v8

    .line 218
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 223
    :cond_5f
    :try_start_5f
    invoke-virtual {v10}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object/from16 v0, v17

    iput-object v0, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 224
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v10, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;
    :try_end_6f
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5f .. :try_end_6f} :catch_c2

    .line 227
    :goto_6f
    iget-object v9, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 228
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 231
    .end local v6           #iter2:Lorg/apache/xpath/axes/WalkingIterator;
    :cond_77
    iget-object v10, v10, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_25

    .line 234
    :cond_7a
    const/4 v7, 0x0

    .line 235
    .local v7, matchCount:I
    if-eqz v8, :cond_8

    .line 237
    if-eqz p3, :cond_bb

    move-object/from16 v14, p5

    .line 238
    .local v14, root:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_81
    iget-object v0, v8, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v15

    check-cast v15, Lorg/apache/xpath/axes/WalkingIterator;

    .line 239
    .local v15, sharedIter:Lorg/apache/xpath/axes/WalkingIterator;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v15, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createIteratorFromSteps(Lorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v11

    .line 240
    .local v11, newIter:Lorg/apache/xpath/axes/WalkingIterator;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v14, v11, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v16

    .line 243
    .local v16, var:Lorg/apache/xalan/templates/ElemVariable;
    :goto_9b
    if-eqz v8, :cond_8

    .line 245
    iget-object v13, v8, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    .line 246
    .local v13, owner:Lorg/apache/xpath/ExpressionOwner;
    invoke-interface {v13}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v4

    check-cast v4, Lorg/apache/xpath/axes/WalkingIterator;

    .line 251
    .local v4, iter:Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p4

    move/from16 v3, p3

    invoke-virtual {v0, v1, v4, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changePartToRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/axes/WalkingIterator;IZ)Lorg/apache/xpath/axes/LocPathIterator;

    move-result-object v12

    .line 253
    .local v12, newIter2:Lorg/apache/xpath/axes/LocPathIterator;
    invoke-interface {v13, v12}, Lorg/apache/xpath/ExpressionOwner;->setExpression(Lorg/apache/xpath/Expression;)V

    .line 255
    iget-object v8, v8, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 256
    goto :goto_9b

    .line 237
    .end local v4           #iter:Lorg/apache/xpath/axes/WalkingIterator;
    .end local v11           #newIter:Lorg/apache/xpath/axes/WalkingIterator;
    .end local v12           #newIter2:Lorg/apache/xpath/axes/LocPathIterator;
    .end local v13           #owner:Lorg/apache/xpath/ExpressionOwner;
    .end local v14           #root:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v15           #sharedIter:Lorg/apache/xpath/axes/WalkingIterator;
    .end local v16           #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_bb
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/apache/xalan/templates/RedundentExprEliminator;->findCommonAncestor(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v14

    goto :goto_81

    .line 226
    .end local v7           #matchCount:I
    .restart local v6       #iter2:Lorg/apache/xpath/axes/WalkingIterator;
    :catch_c2
    move-exception v17

    goto :goto_6f

    .line 216
    :catch_c4
    move-exception v17

    goto :goto_58
.end method

.method protected oldFindAndEliminateRedundant(IILorg/apache/xpath/ExpressionOwner;Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)I
    .registers 24
    .parameter "start"
    .parameter "firstOccuranceIndex"
    .parameter "firstOccuranceOwner"
    .parameter "psuedoVarRecipient"
    .parameter "paths"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 681
    const/4 v15, 0x0

    .line 682
    .local v15, uniquePseudoVarName:Lorg/apache/xml/utils/QName;
    const/4 v6, 0x0

    .line 683
    .local v6, foundFirst:Z
    const/4 v13, 0x0

    .line 684
    .local v13, numPathsFound:I
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v12

    .line 685
    .local v12, n:I
    invoke-interface/range {p3 .. p3}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v4

    .line 688
    .local v4, expr1:Lorg/apache/xpath/Expression;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_46

    const/4 v8, 0x1

    .local v8, isGlobal:Z
    :goto_18
    move-object v10, v4

    .line 689
    check-cast v10, Lorg/apache/xpath/axes/LocPathIterator;

    .line 690
    .local v10, lpi:Lorg/apache/xpath/axes/LocPathIterator;
    move/from16 v9, p1

    .local v9, j:I
    :goto_1d
    if-ge v9, v12, :cond_7d

    .line 692
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/xpath/ExpressionOwner;

    .line 693
    .local v14, owner2:Lorg/apache/xpath/ExpressionOwner;
    if-eqz v14, :cond_7a

    .line 695
    invoke-interface {v14}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v5

    .line 696
    .local v5, expr2:Lorg/apache/xpath/Expression;
    invoke-virtual {v5, v10}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v7

    .line 697
    .local v7, isEqual:Z
    if-eqz v7, :cond_7a

    move-object v11, v5

    .line 699
    check-cast v11, Lorg/apache/xpath/axes/LocPathIterator;

    .line 700
    .local v11, lpi2:Lorg/apache/xpath/axes/LocPathIterator;
    if-nez v6, :cond_66

    .line 702
    const/4 v6, 0x1

    .line 706
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v10, v8}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v16

    .line 707
    .local v16, var:Lorg/apache/xalan/templates/ElemVariable;
    if-nez v16, :cond_48

    .line 708
    const/16 v17, 0x0

    .line 742
    .end local v5           #expr2:Lorg/apache/xpath/Expression;
    .end local v7           #isEqual:Z
    .end local v11           #lpi2:Lorg/apache/xpath/axes/LocPathIterator;
    .end local v14           #owner2:Lorg/apache/xpath/ExpressionOwner;
    .end local v16           #var:Lorg/apache/xalan/templates/ElemVariable;
    :goto_45
    return v17

    .line 688
    .end local v8           #isGlobal:Z
    .end local v9           #j:I
    .end local v10           #lpi:Lorg/apache/xpath/axes/LocPathIterator;
    :cond_46
    const/4 v8, 0x0

    goto :goto_18

    .line 709
    .restart local v5       #expr2:Lorg/apache/xpath/Expression;
    .restart local v7       #isEqual:Z
    .restart local v8       #isGlobal:Z
    .restart local v9       #j:I
    .restart local v10       #lpi:Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v11       #lpi2:Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v14       #owner2:Lorg/apache/xpath/ExpressionOwner;
    .restart local v16       #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_48
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v15

    .line 711
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 716
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v17

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 717
    add-int/lit8 v13, v13, 0x1

    .line 720
    .end local v16           #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_66
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    invoke-virtual {v0, v15, v14, v1, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 723
    const/16 v17, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 726
    add-int/lit8 v13, v13, 0x1

    .line 690
    .end local v5           #expr2:Lorg/apache/xpath/Expression;
    .end local v7           #isEqual:Z
    .end local v11           #lpi2:Lorg/apache/xpath/axes/LocPathIterator;
    :cond_7a
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    .line 732
    .end local v14           #owner2:Lorg/apache/xpath/ExpressionOwner;
    :cond_7d
    if-nez v13, :cond_ba

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_ba

    .line 734
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, v17

    invoke-virtual {v0, v1, v10, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v16

    .line 735
    .restart local v16       #var:Lorg/apache/xalan/templates/ElemVariable;
    if-nez v16, :cond_9c

    .line 736
    const/16 v17, 0x0

    goto :goto_45

    .line 737
    :cond_9c
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v15

    .line 738
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 739
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v17

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 740
    add-int/lit8 v13, v13, 0x1

    .end local v16           #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_ba
    move/from16 v17, v13

    .line 742
    goto :goto_45
.end method

.method partialIsVariable(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;I)Z
    .registers 6
    .parameter "testee"
    .parameter "lengthToTest"

    .prologue
    const/4 v1, 0x1

    .line 270
    if-ne v1, p2, :cond_14

    .line 272
    iget-object v2, p1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    invoke-interface {v2}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/WalkingIterator;

    .line 273
    .local v0, wi:Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual {v0}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/xpath/axes/FilterExprWalker;

    if-eqz v2, :cond_14

    .line 276
    .end local v0           #wi:Lorg/apache/xpath/axes/WalkingIterator;
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method protected stepsEqual(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/axes/WalkingIterator;I)Z
    .registers 10
    .parameter "iter1"
    .parameter "iter2"
    .parameter "numSteps"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 523
    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    .line 524
    .local v0, aw1:Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {p2}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    .line 526
    .local v1, aw2:Lorg/apache/xpath/axes/AxesWalker;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, p3, :cond_23

    .line 528
    if-eqz v0, :cond_11

    if-nez v1, :cond_12

    .line 540
    :cond_11
    :goto_11
    return v3

    .line 531
    :cond_12
    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/AxesWalker;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 534
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    .line 535
    invoke-virtual {v1}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 538
    :cond_23
    if-nez v0, :cond_27

    if-eqz v1, :cond_28

    :cond_27
    move v3, v4

    :cond_28
    const-string v5, "Total match is incorrect!"

    invoke-static {v3, v5}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    move v3, v4

    .line 540
    goto :goto_11
.end method

.method public visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 9
    .parameter "elem"

    .prologue
    const/4 v5, 0x0

    .line 1165
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v4

    .line 1166
    .local v4, type:I
    sparse-switch v4, :sswitch_data_34

    .line 1207
    const/4 v5, 0x1

    :goto_9
    return v5

    .line 1174
    :sswitch_a
    const/16 v6, 0x1c

    if-ne v4, v6, :cond_18

    move-object v0, p1

    .line 1176
    check-cast v0, Lorg/apache/xalan/templates/ElemForEach;

    .line 1178
    .local v0, efe:Lorg/apache/xalan/templates/ElemForEach;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemForEach;->getSelect()Lorg/apache/xpath/Expression;

    move-result-object v3

    .line 1179
    .local v3, select:Lorg/apache/xpath/Expression;
    invoke-virtual {v3, v0, p0}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 1182
    .end local v0           #efe:Lorg/apache/xalan/templates/ElemForEach;
    .end local v3           #select:Lorg/apache/xpath/Expression;
    :cond_18
    iget-object v2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    .line 1183
    .local v2, savedPaths:Ljava/util/Vector;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    .line 1188
    invoke-virtual {p1, p0, v5}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 1189
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateRedundentLocals(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 1191
    iput-object v2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    goto :goto_9

    .line 1200
    .end local v2           #savedPaths:Ljava/util/Vector;
    :sswitch_2a
    iget-boolean v1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 1201
    .local v1, savedIsSame:Z
    iput-boolean v5, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 1202
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1203
    iput-boolean v1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    goto :goto_9

    .line 1166
    :sswitch_data_34
    .sparse-switch
        0x11 -> :sswitch_a
        0x13 -> :sswitch_a
        0x1c -> :sswitch_a
        0x23 -> :sswitch_2a
        0x40 -> :sswitch_2a
    .end sparse-switch
.end method

.method public visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z
    .registers 9
    .parameter "owner"
    .parameter "path"

    .prologue
    const/4 v5, 0x1

    .line 1079
    instance-of v4, p2, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;

    if-eqz v4, :cond_6

    .line 1109
    :cond_5
    :goto_5
    return v5

    .line 1083
    :cond_6
    instance-of v4, p2, Lorg/apache/xpath/axes/WalkingIterator;

    if-eqz v4, :cond_26

    move-object v3, p2

    .line 1085
    check-cast v3, Lorg/apache/xpath/axes/WalkingIterator;

    .line 1086
    .local v3, wi:Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual {v3}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    .line 1087
    .local v0, aw:Lorg/apache/xpath/axes/AxesWalker;
    instance-of v4, v0, Lorg/apache/xpath/axes/FilterExprWalker;

    if-eqz v4, :cond_26

    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v4

    if-nez v4, :cond_26

    move-object v2, v0

    .line 1089
    check-cast v2, Lorg/apache/xpath/axes/FilterExprWalker;

    .line 1090
    .local v2, few:Lorg/apache/xpath/axes/FilterExprWalker;
    invoke-virtual {v2}, Lorg/apache/xpath/axes/FilterExprWalker;->getInnerExpression()Lorg/apache/xpath/Expression;

    move-result-object v1

    .line 1091
    .local v1, exp:Lorg/apache/xpath/Expression;
    instance-of v4, v1, Lorg/apache/xpath/operations/Variable;

    if-nez v4, :cond_5

    .line 1096
    .end local v0           #aw:Lorg/apache/xpath/axes/AxesWalker;
    .end local v1           #exp:Lorg/apache/xpath/Expression;
    .end local v2           #few:Lorg/apache/xpath/axes/FilterExprWalker;
    .end local v3           #wi:Lorg/apache/xpath/axes/WalkingIterator;
    :cond_26
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->isAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result v4

    if-eqz v4, :cond_36

    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-eqz v4, :cond_36

    .line 1100
    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5

    .line 1102
    :cond_36
    iget-boolean v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    if-eqz v4, :cond_5

    .line 1106
    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z
    .registers 5
    .parameter "owner"
    .parameter "pred"

    .prologue
    const/4 v1, 0x0

    .line 1124
    iget-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 1125
    .local v0, savedIsSame:Z
    iput-boolean v1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 1128
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 1130
    iput-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 1134
    return v1
.end method

.method public visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 4
    .parameter "elem"

    .prologue
    .line 1145
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    .line 1146
    .local v0, type:I
    packed-switch v0, :pswitch_data_e

    .line 1151
    const/4 v1, 0x1

    :goto_8
    return v1

    .line 1149
    :pswitch_9
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v1

    goto :goto_8

    .line 1146
    :pswitch_data_e
    .packed-switch 0x13
        :pswitch_9
    .end packed-switch
.end method
