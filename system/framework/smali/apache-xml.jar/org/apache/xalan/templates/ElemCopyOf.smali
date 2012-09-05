.class public Lorg/apache/xalan/templates/ElemCopyOf;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemCopyOf.java"


# static fields
.field static final serialVersionUID:J = -0x672a43ef2f404637L


# instance fields
.field public m_selectExpression:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 6
    .parameter "newChild"

    .prologue
    .line 220
    const-string v0, "ER_CANNOT_ADD"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCopyOf;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemCopyOf;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 5
    .parameter "visitor"
    .parameter "callAttrs"

    .prologue
    .line 234
    if-eqz p2, :cond_d

    .line 235
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 236
    :cond_d
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 237
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 6
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 88
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    .line 89
    .local v0, cstate:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 90
    return-void
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
    .line 129
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v13

    .line 130
    .local v13, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v13}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v8

    .line 131
    .local v8, sourceNode:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    move-object/from16 v0, p0

    invoke-virtual {v14, v13, v8, v0}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v12

    .line 133
    .local v12, value:Lorg/apache/xpath/objects/XObject;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v3

    .line 135
    .local v3, handler:Lorg/apache/xml/serializer/SerializationHandler;
    if-eqz v12, :cond_31

    .line 137
    invoke-virtual {v12}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v11

    .line 140
    .local v11, type:I
    packed-switch v11, :pswitch_data_90

    .line 190
    invoke-virtual {v12}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, s:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v3, v14, v15, v0}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V

    .line 208
    .end local v6           #s:Ljava/lang/String;
    .end local v11           #type:I
    :cond_31
    :goto_31
    return-void

    .line 145
    .restart local v11       #type:I
    :pswitch_32
    invoke-virtual {v12}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v6

    .line 147
    .restart local v6       #s:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v3, v14, v15, v0}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V
    :try_end_44
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_31

    .line 203
    .end local v3           #handler:Lorg/apache/xml/serializer/SerializationHandler;
    .end local v6           #s:Ljava/lang/String;
    .end local v8           #sourceNode:I
    .end local v11           #type:I
    .end local v12           #value:Lorg/apache/xpath/objects/XObject;
    .end local v13           #xctxt:Lorg/apache/xpath/XPathContext;
    :catch_45
    move-exception v7

    .line 205
    .local v7, se:Lorg/xml/sax/SAXException;
    new-instance v14, Ljavax/xml/transform/TransformerException;

    invoke-direct {v14, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 152
    .end local v7           #se:Lorg/xml/sax/SAXException;
    .restart local v3       #handler:Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v8       #sourceNode:I
    .restart local v11       #type:I
    .restart local v12       #value:Lorg/apache/xpath/objects/XObject;
    .restart local v13       #xctxt:Lorg/apache/xpath/XPathContext;
    :pswitch_4c
    :try_start_4c
    invoke-virtual {v12}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v4

    .line 155
    .local v4, nl:Lorg/apache/xml/dtm/DTMIterator;
    new-instance v10, Lorg/apache/xalan/transformer/TreeWalker2Result;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v3}, Lorg/apache/xalan/transformer/TreeWalker2Result;-><init>(Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xml/serializer/SerializationHandler;)V

    .line 158
    .local v10, tw:Lorg/apache/xml/dtm/ref/DTMTreeWalker;
    :cond_57
    :goto_57
    const/4 v14, -0x1

    invoke-interface {v4}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v5

    .local v5, pos:I
    if-eq v14, v5, :cond_31

    .line 160
    invoke-virtual {v13}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v14

    invoke-virtual {v14, v5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v2

    .line 161
    .local v2, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v2, v5}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v9

    .line 165
    .local v9, t:S
    const/16 v14, 0x9

    if-ne v9, v14, :cond_7d

    .line 167
    invoke-interface {v2, v5}, Lorg/apache/xml/dtm/DTM;->getFirstChild(I)I

    move-result v1

    .local v1, child:I
    :goto_72
    const/4 v14, -0x1

    if-eq v1, v14, :cond_57

    .line 170
    invoke-virtual {v10, v1}, Lorg/apache/xalan/transformer/TreeWalker2Result;->traverse(I)V

    .line 168
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNextSibling(I)I

    move-result v1

    goto :goto_72

    .line 173
    .end local v1           #child:I
    :cond_7d
    const/4 v14, 0x2

    if-ne v9, v14, :cond_84

    .line 175
    invoke-static {v3, v5}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    goto :goto_57

    .line 179
    :cond_84
    invoke-virtual {v10, v5}, Lorg/apache/xalan/transformer/TreeWalker2Result;->traverse(I)V

    goto :goto_57

    .line 185
    .end local v2           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v4           #nl:Lorg/apache/xml/dtm/DTMIterator;
    .end local v5           #pos:I
    .end local v9           #t:S
    .end local v10           #tw:Lorg/apache/xml/dtm/ref/DTMTreeWalker;
    :pswitch_88
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v14

    invoke-static {v3, v12, v14}, Lorg/apache/xalan/serialize/SerializerUtils;->outputResultTreeFragment(Lorg/apache/xml/serializer/SerializationHandler;Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/XPathContext;)V
    :try_end_8f
    .catch Lorg/xml/sax/SAXException; {:try_start_4c .. :try_end_8f} :catch_45

    goto :goto_31

    .line 140
    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_4c
        :pswitch_88
    .end packed-switch
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    const-string v0, "copy-of"

    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/XPath;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 100
    const/16 v0, 0x4a

    return v0
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .registers 2
    .parameter "expr"

    .prologue
    .line 64
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemCopyOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    .line 65
    return-void
.end method
