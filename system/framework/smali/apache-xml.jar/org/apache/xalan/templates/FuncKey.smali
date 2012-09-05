.class public Lorg/apache/xalan/templates/FuncKey;
.super Lorg/apache/xpath/functions/Function2Args;
.source "FuncKey.java"


# static fields
.field private static ISTRUE:Ljava/lang/Boolean; = null

.field static final serialVersionUID:J = 0x7e23a7eadbc8c78cL


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lorg/apache/xalan/templates/FuncKey;->ISTRUE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function2Args;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 25
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getOwnerObject()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/xalan/transformer/TransformerImpl;

    .line 61
    .local v19, transformer:Lorg/apache/xalan/transformer/TransformerImpl;
    const/16 v16, 0x0

    .line 62
    .local v16, nodes:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v10

    .line 63
    .local v10, context:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v12

    .line 64
    .local v12, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v12, v10}, Lorg/apache/xml/dtm/DTM;->getDocumentRoot(I)I

    move-result v4

    .line 66
    .local v4, docContext:I
    const/4 v3, -0x1

    if-ne v3, v4, :cond_19

    .line 72
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncKey;->getArg0()Lorg/apache/xpath/Expression;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v22

    .line 73
    .local v22, xkeyname:Ljava/lang/String;
    new-instance v5, Lorg/apache/xml/utils/QName;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v5, v0, v3}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    .line 74
    .local v5, keyname:Lorg/apache/xml/utils/QName;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncKey;->getArg1()Lorg/apache/xpath/Expression;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v8

    .line 75
    .local v8, arg:Lorg/apache/xpath/objects/XObject;
    const/4 v3, 0x4

    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v7

    if-ne v3, v7, :cond_b8

    const/4 v9, 0x1

    .line 76
    .local v9, argIsNodeSetDTM:Z
    :goto_44
    invoke-virtual/range {v19 .. v19}, Lorg/apache/xalan/transformer/TransformerImpl;->getKeyManager()Lorg/apache/xalan/transformer/KeyManager;

    move-result-object v2

    .line 79
    .local v2, kmgr:Lorg/apache/xalan/transformer/KeyManager;
    if-eqz v9, :cond_5c

    move-object/from16 v17, v8

    .line 81
    check-cast v17, Lorg/apache/xpath/objects/XNodeSet;

    .line 82
    .local v17, ns:Lorg/apache/xpath/objects/XNodeSet;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/apache/xpath/objects/XNodeSet;->setShouldCacheNodes(Z)V

    .line 83
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XNodeSet;->getLength()I

    move-result v13

    .line 84
    .local v13, len:I
    const/4 v3, 0x1

    if-gt v13, v3, :cond_5c

    .line 85
    const/4 v9, 0x0

    .line 88
    .end local v13           #len:I
    .end local v17           #ns:Lorg/apache/xpath/objects/XNodeSet;
    :cond_5c
    if-eqz v9, :cond_cf

    .line 90
    const/16 v21, 0x0

    .line 91
    .local v21, usedrefs:Ljava/util/Hashtable;
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v14

    .line 93
    .local v14, ni:Lorg/apache/xml/dtm/DTMIterator;
    new-instance v20, Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-direct/range {v20 .. v20}, Lorg/apache/xpath/axes/UnionPathIterator;-><init>()V

    .line 94
    .local v20, upi:Lorg/apache/xpath/axes/UnionPathIterator;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/UnionPathIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 96
    :cond_70
    :goto_70
    const/4 v3, -0x1

    invoke-interface {v14}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v18

    .local v18, pos:I
    move/from16 v0, v18

    if-eq v3, v0, :cond_ba

    .line 98
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v12

    .line 99
    move/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v6

    .line 101
    .local v6, ref:Lorg/apache/xml/utils/XMLString;
    if-eqz v6, :cond_70

    .line 104
    if-nez v21, :cond_90

    .line 105
    new-instance v21, Ljava/util/Hashtable;

    .end local v21           #usedrefs:Ljava/util/Hashtable;
    invoke-direct/range {v21 .. v21}, Ljava/util/Hashtable;-><init>()V

    .line 107
    .restart local v21       #usedrefs:Ljava/util/Hashtable;
    :cond_90
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_70

    .line 115
    sget-object v3, Lorg/apache/xalan/templates/FuncKey;->ISTRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v7

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xalan/transformer/KeyManager;->getNodeSetDTMByKey(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v15

    .line 122
    .local v15, nl:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v15, v3, v0}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    .line 126
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lorg/apache/xpath/axes/UnionPathIterator;->addIterator(Lorg/apache/xml/dtm/DTMIterator;)V

    goto :goto_70

    .line 75
    .end local v2           #kmgr:Lorg/apache/xalan/transformer/KeyManager;
    .end local v6           #ref:Lorg/apache/xml/utils/XMLString;
    .end local v9           #argIsNodeSetDTM:Z
    .end local v14           #ni:Lorg/apache/xml/dtm/DTMIterator;
    .end local v15           #nl:Lorg/apache/xpath/objects/XNodeSet;
    .end local v18           #pos:I
    .end local v20           #upi:Lorg/apache/xpath/axes/UnionPathIterator;
    .end local v21           #usedrefs:Ljava/util/Hashtable;
    :cond_b8
    const/4 v9, 0x0

    goto :goto_44

    .line 135
    .restart local v2       #kmgr:Lorg/apache/xalan/transformer/KeyManager;
    .restart local v9       #argIsNodeSetDTM:Z
    .restart local v14       #ni:Lorg/apache/xml/dtm/DTMIterator;
    .restart local v18       #pos:I
    .restart local v20       #upi:Lorg/apache/xpath/axes/UnionPathIterator;
    .restart local v21       #usedrefs:Ljava/util/Hashtable;
    :cond_ba
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v11

    .line 136
    .local v11, current:I
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Lorg/apache/xpath/axes/UnionPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 138
    new-instance v16, Lorg/apache/xpath/objects/XNodeSet;

    .end local v16           #nodes:Lorg/apache/xpath/objects/XNodeSet;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 149
    .end local v11           #current:I
    .end local v14           #ni:Lorg/apache/xml/dtm/DTMIterator;
    .end local v18           #pos:I
    .end local v20           #upi:Lorg/apache/xpath/axes/UnionPathIterator;
    .end local v21           #usedrefs:Ljava/util/Hashtable;
    .restart local v16       #nodes:Lorg/apache/xpath/objects/XNodeSet;
    :goto_ce
    return-object v16

    .line 142
    :cond_cf
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v6

    .line 143
    .restart local v6       #ref:Lorg/apache/xml/utils/XMLString;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v7

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xalan/transformer/KeyManager;->getNodeSetDTMByKey(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XNodeSet;

    move-result-object v16

    .line 146
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v3

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lorg/apache/xpath/objects/XNodeSet;->setRoot(ILjava/lang/Object;)V

    goto :goto_ce
.end method
