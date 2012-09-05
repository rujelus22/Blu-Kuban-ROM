.class public Lorg/apache/xalan/templates/ElemCallTemplate;
.super Lorg/apache/xalan/templates/ElemForEach;
.source "ElemCallTemplate.java"


# static fields
.field static final serialVersionUID:J = 0x4585cc23655c8c7fL


# instance fields
.field protected m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

.field private m_template:Lorg/apache/xalan/templates/ElemTemplate;

.field public m_templateName:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemForEach;-><init>()V

    .line 54
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    .line 84
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    .line 269
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 4
    .parameter "newChild"

    .prologue
    .line 333
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    .line 335
    .local v0, type:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_d

    move-object v1, p1

    .line 337
    check-cast v1, Lorg/apache/xalan/templates/ElemWithParam;

    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemCallTemplate;->setParamElem(Lorg/apache/xalan/templates/ElemWithParam;)V

    .line 342
    :cond_d
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    return-object v1
.end method

.method public callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 3
    .parameter "visitor"
    .parameter "callAttrs"

    .prologue
    .line 362
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemForEach;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 363
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 13
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 119
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    move-result v5

    .line 120
    .local v5, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_8
    if-ge v4, v5, :cond_14

    .line 122
    invoke-virtual {p0, v4}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;

    move-result-object v3

    .line 123
    .local v3, ewp:Lorg/apache/xalan/templates/ElemWithParam;
    invoke-virtual {v3, p1}, Lorg/apache/xalan/templates/ElemWithParam;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 126
    .end local v3           #ewp:Lorg/apache/xalan/templates/ElemWithParam;
    :cond_14
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    if-eqz v7, :cond_7c

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    if-nez v7, :cond_7c

    .line 127
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    invoke-virtual {v7, v8}, Lorg/apache/xalan/templates/StylesheetRoot;->getTemplateComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    .line 130
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    if-nez v7, :cond_40

    .line 131
    const-string v7, "ER_ELEMTEMPLATEELEM_ERR"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, themsg:Ljava/lang/String;
    new-instance v7, Ljavax/xml/transform/TransformerException;

    invoke-direct {v7, v6, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v7

    .line 140
    .end local v6           #themsg:Ljava/lang/String;
    :cond_40
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    move-result v5

    .line 141
    const/4 v4, 0x0

    :goto_45
    if-ge v4, v5, :cond_7c

    .line 143
    invoke-virtual {p0, v4}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;

    move-result-object v3

    .line 144
    .restart local v3       #ewp:Lorg/apache/xalan/templates/ElemWithParam;
    const/4 v7, -0x1

    iput v7, v3, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, etePos:I
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v7}, Lorg/apache/xalan/templates/ElemTemplate;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 149
    .local v1, ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_55
    if-eqz v1, :cond_79

    .line 151
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_79

    move-object v0, v1

    .line 153
    check-cast v0, Lorg/apache/xalan/templates/ElemParam;

    .line 154
    .local v0, ep:Lorg/apache/xalan/templates/ElemParam;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemParam;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemWithParam;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 156
    iput v2, v3, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    .line 161
    :cond_72
    add-int/lit8 v2, v2, 0x1

    .line 149
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    goto :goto_55

    .line 141
    .end local v0           #ep:Lorg/apache/xalan/templates/ElemParam;
    :cond_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 166
    .end local v1           #ete:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v2           #etePos:I
    .end local v3           #ewp:Lorg/apache/xalan/templates/ElemWithParam;
    :cond_7c
    return-void
.end method

.method public endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElemCount()I

    move-result v2

    .line 174
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_11

    .line 176
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/ElemCallTemplate;->getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;

    move-result-object v0

    .line 177
    .local v0, ewp:Lorg/apache/xalan/templates/ElemWithParam;
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemWithParam;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 180
    .end local v0           #ewp:Lorg/apache/xalan/templates/ElemWithParam;
    :cond_11
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 181
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 18
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    if-eqz v11, :cond_90

    .line 198
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v10

    .line 199
    .local v10, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v9

    .line 201
    .local v9, vars:Lorg/apache/xpath/VariableStack;
    invoke-virtual {v9}, Lorg/apache/xpath/VariableStack;->getStackFrame()I

    move-result v8

    .line 202
    .local v8, thisframe:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    iget v11, v11, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    invoke-virtual {v9, v11}, Lorg/apache/xpath/VariableStack;->link(I)I

    move-result v4

    .line 206
    .local v4, nextFrame:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    iget v11, v11, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    if-lez v11, :cond_5e

    .line 208
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    iget v12, v12, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    invoke-virtual {v9, v11, v12}, Lorg/apache/xpath/VariableStack;->clearLocalSlots(II)V

    .line 210
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    if-eqz v11, :cond_5e

    .line 212
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    .line 213
    .local v1, currentNode:I
    invoke-virtual {v9, v8}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    array-length v7, v11

    .line 216
    .local v7, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_41
    if-ge v3, v7, :cond_5b

    .line 218
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aget-object v2, v11, v3

    .line 219
    .local v2, ewp:Lorg/apache/xalan/templates/ElemWithParam;
    iget v11, v2, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    if-ltz v11, :cond_58

    .line 221
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lorg/apache/xalan/templates/ElemWithParam;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v5

    .line 226
    .local v5, obj:Lorg/apache/xpath/objects/XObject;
    iget v11, v2, Lorg/apache/xalan/templates/ElemWithParam;->m_index:I

    invoke-virtual {v9, v11, v5, v4}, Lorg/apache/xpath/VariableStack;->setLocalVariable(ILorg/apache/xpath/objects/XObject;I)V

    .line 216
    .end local v5           #obj:Lorg/apache/xpath/objects/XObject;
    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 229
    .end local v2           #ewp:Lorg/apache/xalan/templates/ElemWithParam;
    :cond_5b
    invoke-virtual {v9, v4}, Lorg/apache/xpath/VariableStack;->setStackFrame(I)V

    .line 233
    .end local v1           #currentNode:I
    .end local v3           #i:I
    .end local v7           #size:I
    :cond_5e
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v6

    .line 237
    .local v6, savedLocator:Ljavax/xml/transform/SourceLocator;
    :try_start_62
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v10, v11}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lorg/apache/xalan/templates/ElemTemplate;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_7b
    .catchall {:try_start_62 .. :try_end_7b} :catchall_85

    .line 245
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 246
    invoke-virtual {v10, v6}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 256
    invoke-virtual {v9, v8}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    .line 265
    .end local v4           #nextFrame:I
    .end local v6           #savedLocator:Ljavax/xml/transform/SourceLocator;
    .end local v8           #thisframe:I
    .end local v9           #vars:Lorg/apache/xpath/VariableStack;
    .end local v10           #xctxt:Lorg/apache/xpath/XPathContext;
    :goto_84
    return-void

    .line 245
    .restart local v4       #nextFrame:I
    .restart local v6       #savedLocator:Ljavax/xml/transform/SourceLocator;
    .restart local v8       #thisframe:I
    .restart local v9       #vars:Lorg/apache/xpath/VariableStack;
    .restart local v10       #xctxt:Lorg/apache/xpath/XPathContext;
    :catchall_85
    move-exception v11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 246
    invoke-virtual {v10, v6}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 256
    invoke-virtual {v9, v8}, Lorg/apache/xpath/VariableStack;->unlink(I)V

    throw v11

    .line 261
    .end local v4           #nextFrame:I
    .end local v6           #savedLocator:Ljavax/xml/transform/SourceLocator;
    .end local v8           #thisframe:I
    .end local v9           #vars:Lorg/apache/xpath/VariableStack;
    .end local v10           #xctxt:Lorg/apache/xpath/XPathContext;
    :cond_90
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v11

    const-string v12, "ER_TEMPLATE_NOT_FOUND"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12, v13}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_84
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    const-string v0, "call-template"

    return-object v0
.end method

.method public getParamElem(I)Lorg/apache/xalan/templates/ElemWithParam;
    .registers 3
    .parameter "i"

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParamElemCount()I
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    array-length v0, v0

    goto :goto_5
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 94
    const/16 v0, 0x11

    return v0
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 65
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_templateName:Lorg/apache/xml/utils/QName;

    .line 66
    return-void
.end method

.method public setParamElem(Lorg/apache/xalan/templates/ElemWithParam;)V
    .registers 6
    .parameter "ParamElem"

    .prologue
    const/4 v3, 0x0

    .line 299
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    if-nez v2, :cond_f

    .line 301
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/xalan/templates/ElemWithParam;

    iput-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    .line 302
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    aput-object p1, v2, v3

    .line 314
    :goto_e
    return-void

    .line 308
    :cond_f
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    array-length v1, v2

    .line 309
    .local v1, length:I
    add-int/lit8 v2, v1, 0x1

    new-array v0, v2, [Lorg/apache/xalan/templates/ElemWithParam;

    .line 310
    .local v0, ewp:[Lorg/apache/xalan/templates/ElemWithParam;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemCallTemplate;->m_paramElems:[Lorg/apache/xalan/templates/ElemWithParam;

    .line 312
    aput-object p1, v0, v1

    goto :goto_e
.end method
