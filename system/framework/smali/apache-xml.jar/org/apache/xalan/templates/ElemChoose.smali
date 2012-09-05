.class public Lorg/apache/xalan/templates/ElemChoose;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemChoose.java"


# static fields
.field static final serialVersionUID:J = -0x2a9b3f7976fe6851L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 7
    .parameter "newChild"

    .prologue
    .line 137
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    .line 139
    .local v0, type:I
    packed-switch v0, :pswitch_data_22

    .line 147
    const-string v1, "ER_CANNOT_ADD"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemChoose;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemChoose;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :pswitch_1d
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    return-object v1

    .line 139
    :pswitch_data_22
    .packed-switch 0x26
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public canAcceptVariables()Z
    .registers 2

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 10
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 81
    const/4 v1, 0x0

    .line 83
    .local v1, found:Z
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemChoose;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 84
    .local v0, childElem:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_6
    if-eqz v0, :cond_38

    .line 86
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v3

    .line 88
    .local v3, type:I
    const/16 v6, 0x26

    if-ne v6, v3, :cond_2a

    .line 90
    const/4 v1, 0x1

    move-object v4, v0

    .line 92
    check-cast v4, Lorg/apache/xalan/templates/ElemWhen;

    .line 95
    .local v4, when:Lorg/apache/xalan/templates/ElemWhen;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v5

    .line 96
    .local v5, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v5}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v2

    .line 103
    .local v2, sourceNode:I
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemWhen;->getTest()Lorg/apache/xpath/XPath;

    move-result-object v6

    invoke-virtual {v6, v5, v2, v4}, Lorg/apache/xpath/XPath;->bool(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 104
    invoke-virtual {p1, v4, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    .line 123
    .end local v2           #sourceNode:I
    .end local v3           #type:I
    .end local v4           #when:Lorg/apache/xalan/templates/ElemWhen;
    .end local v5           #xctxt:Lorg/apache/xpath/XPathContext;
    :cond_29
    :goto_29
    return-void

    .line 109
    .restart local v3       #type:I
    :cond_2a
    const/16 v6, 0x27

    if-ne v6, v3, :cond_33

    .line 111
    const/4 v1, 0x1

    .line 114
    invoke-virtual {p1, v0, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    goto :goto_29

    .line 84
    :cond_33
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_6

    .line 120
    .end local v3           #type:I
    :cond_38
    if-nez v1, :cond_29

    .line 121
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v6

    const-string v7, "ER_CHOOSE_REQUIRES_WHEN"

    invoke-virtual {v6, p0, v7}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    goto :goto_29
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string v0, "choose"

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 51
    const/16 v0, 0x25

    return v0
.end method
