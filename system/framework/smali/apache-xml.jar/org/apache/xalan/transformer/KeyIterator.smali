.class public Lorg/apache/xalan/transformer/KeyIterator;
.super Lorg/apache/xpath/axes/OneStepIteratorForward;
.source "KeyIterator.java"


# static fields
.field static final serialVersionUID:J = -0x12b90050ba7c0c3dL


# instance fields
.field private m_keyDeclarations:Ljava/util/Vector;

.field private m_name:Lorg/apache/xml/utils/QName;


# direct methods
.method constructor <init>(Lorg/apache/xml/utils/QName;Ljava/util/Vector;)V
    .registers 4
    .parameter "name"
    .parameter "keyDeclarations"

    .prologue
    .line 83
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/OneStepIteratorForward;-><init>(I)V

    .line 84
    iput-object p2, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_keyDeclarations:Ljava/util/Vector;

    .line 86
    iput-object p1, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_name:Lorg/apache/xml/utils/QName;

    .line 87
    return-void
.end method


# virtual methods
.method public acceptNode(I)S
    .registers 19
    .parameter "testNode"

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, foundKey:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    check-cast v5, Lorg/apache/xalan/transformer/KeyIterator;

    .line 104
    .local v5, ki:Lorg/apache/xalan/transformer/KeyIterator;
    invoke-virtual {v5}, Lorg/apache/xalan/transformer/KeyIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v11

    .line 105
    .local v11, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v5}, Lorg/apache/xalan/transformer/KeyIterator;->getKeyDeclarations()Ljava/util/Vector;

    move-result-object v4

    .line 107
    .local v4, keys:Ljava/util/Vector;
    invoke-virtual {v5}, Lorg/apache/xalan/transformer/KeyIterator;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v8

    .line 111
    .local v8, name:Lorg/apache/xml/utils/QName;
    :try_start_13
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v7

    .line 114
    .local v7, nDeclarations:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_18
    if-ge v2, v7, :cond_44

    .line 116
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/KeyDeclaration;

    .line 120
    .local v3, kd:Lorg/apache/xalan/templates/KeyDeclaration;
    invoke-virtual {v3}, Lorg/apache/xalan/templates/KeyDeclaration;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v12

    invoke-virtual {v12, v8}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2d

    .line 114
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 123
    :cond_2d
    const/4 v1, 0x1

    .line 128
    invoke-virtual {v3}, Lorg/apache/xalan/templates/KeyDeclaration;->getMatch()Lorg/apache/xpath/XPath;

    move-result-object v6

    .line 129
    .local v6, matchExpr:Lorg/apache/xpath/XPath;
    move/from16 v0, p1

    invoke-virtual {v6, v11, v0}, Lorg/apache/xpath/XPath;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide v9

    .line 131
    .local v9, score:D
    invoke-virtual {v3}, Lorg/apache/xalan/templates/KeyDeclaration;->getMatch()Lorg/apache/xpath/XPath;
    :try_end_3b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_13 .. :try_end_3b} :catch_43

    const-wide/high16 v12, -0x10

    cmpl-double v12, v9, v12

    if-eqz v12, :cond_2a

    .line 134
    const/4 v12, 0x1

    .line 150
    .end local v2           #i:I
    .end local v3           #kd:Lorg/apache/xalan/templates/KeyDeclaration;
    .end local v6           #matchExpr:Lorg/apache/xpath/XPath;
    .end local v7           #nDeclarations:I
    .end local v9           #score:D
    :goto_42
    return v12

    .line 138
    :catch_43
    move-exception v12

    .line 144
    :cond_44
    if-nez v1, :cond_5c

    .line 145
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "ER_NO_XSLKEY_DECLARATION"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v8}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 150
    :cond_5c
    const/4 v12, 0x2

    goto :goto_42
.end method

.method public getKeyDeclarations()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_keyDeclarations:Ljava/util/Vector;

    return-object v0
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/xalan/transformer/KeyIterator;->m_name:Lorg/apache/xml/utils/QName;

    return-object v0
.end method
