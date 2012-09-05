.class public Lorg/dom4j/io/DOMReader;
.super Ljava/lang/Object;
.source "DOMReader.java"


# instance fields
.field private factory:Lorg/dom4j/DocumentFactory;

.field private namespaceStack:Lorg/dom4j/tree/NamespaceStack;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 39
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    iget-object v1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-direct {v0, v1}, Lorg/dom4j/tree/NamespaceStack;-><init>(Lorg/dom4j/DocumentFactory;)V

    iput-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .registers 3
    .parameter "factory"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 44
    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0, p1}, Lorg/dom4j/tree/NamespaceStack;-><init>(Lorg/dom4j/DocumentFactory;)V

    iput-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    .line 45
    return-void
.end method

.method private getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "xmlnsDecl"

    .prologue
    .line 268
    const/16 v1, 0x3a

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 270
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 271
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    :goto_10
    return-object v1

    :cond_11
    const-string v1, ""

    goto :goto_10
.end method


# virtual methods
.method protected clearNamespaceStack()V
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    invoke-virtual {v0}, Lorg/dom4j/tree/NamespaceStack;->clear()V

    .line 262
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->contains(Lorg/dom4j/Namespace;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 263
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    .line 265
    :cond_16
    return-void
.end method

.method protected createDocument()Lorg/dom4j/Document;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method protected getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;
    .registers 4
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 252
    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/DocumentFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/w3c/dom/Document;)Lorg/dom4j/Document;
    .registers 7
    .parameter "domDocument"

    .prologue
    .line 74
    instance-of v4, p1, Lorg/dom4j/Document;

    if-eqz v4, :cond_7

    .line 75
    check-cast p1, Lorg/dom4j/Document;

    .line 88
    .end local p1
    :goto_6
    return-object p1

    .line 78
    .restart local p1
    :cond_7
    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 80
    .local v0, document:Lorg/dom4j/Document;
    invoke-virtual {p0}, Lorg/dom4j/io/DOMReader;->clearNamespaceStack()V

    .line 82
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 84
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .local v3, size:I
    :goto_17
    if-lt v1, v3, :cond_1b

    move-object p1, v0

    .line 88
    goto :goto_6

    .line 85
    :cond_1b
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lorg/dom4j/io/DOMReader;->readTree(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method protected readElement(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V
    .registers 27
    .parameter "node"
    .parameter "current"

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v16

    .line 179
    .local v16, previouslyDeclaredNamespaces:I
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v14

    .line 180
    .local v14, namespaceUri:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v10

    .line 182
    .local v10, elementPrefix:Ljava/lang/String;
    if-nez v10, :cond_16

    .line 183
    const-string v10, ""

    .line 186
    :cond_16
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 188
    .local v4, attributeList:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v4, :cond_2e

    if-nez v14, :cond_2e

    .line 190
    const-string v20, "xmlns"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 192
    .local v3, attribute:Lorg/w3c/dom/Node;
    if-eqz v3, :cond_2e

    .line 193
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 194
    const-string v10, ""

    .line 198
    .end local v3           #attribute:Lorg/w3c/dom/Node;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v20, v0

    .line 199
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    .line 198
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v14, v1, v2}, Lorg/dom4j/tree/NamespaceStack;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v17

    .line 200
    .local v17, qName:Lorg/dom4j/QName;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/dom4j/Branch;->addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v9

    .line 202
    .local v9, element:Lorg/dom4j/Element;
    if-eqz v4, :cond_69

    .line 203
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v18

    .line 204
    .local v18, size:I
    new-instance v6, Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v6, attributes:Ljava/util/List;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_5c
    move/from16 v0, v18

    if-lt v11, v0, :cond_87

    .line 225
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v18

    .line 227
    const/4 v11, 0x0

    :goto_65
    move/from16 v0, v18

    if-lt v11, v0, :cond_bb

    .line 238
    .end local v6           #attributes:Ljava/util/List;
    .end local v11           #i:I
    .end local v18           #size:I
    :cond_69
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 240
    .local v8, children:Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .restart local v11       #i:I
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    .restart local v18       #size:I
    :goto_72
    move/from16 v0, v18

    if-lt v11, v0, :cond_e3

    .line 246
    :goto_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v16

    if-gt v0, v1, :cond_ef

    .line 249
    return-void

    .line 207
    .end local v8           #children:Lorg/w3c/dom/NodeList;
    .restart local v6       #attributes:Ljava/util/List;
    :cond_87
    invoke-interface {v4, v11}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 210
    .restart local v3       #attribute:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    .line 212
    .local v12, name:Ljava/lang/String;
    const-string v20, "xmlns"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b7

    .line 213
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/dom4j/io/DOMReader;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 214
    .local v15, prefix:Ljava/lang/String;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    .line 216
    .local v19, uri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Lorg/dom4j/tree/NamespaceStack;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v13

    .line 218
    .local v13, namespace:Lorg/dom4j/Namespace;
    invoke-interface {v9, v13}, Lorg/dom4j/Element;->add(Lorg/dom4j/Namespace;)V

    .line 206
    .end local v13           #namespace:Lorg/dom4j/Namespace;
    .end local v15           #prefix:Ljava/lang/String;
    .end local v19           #uri:Ljava/lang/String;
    :goto_b4
    add-int/lit8 v11, v11, 0x1

    goto :goto_5c

    .line 220
    :cond_b7
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 229
    .end local v3           #attribute:Lorg/w3c/dom/Node;
    .end local v12           #name:Ljava/lang/String;
    :cond_bb
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 228
    check-cast v3, Lorg/w3c/dom/Node;

    .line 230
    .restart local v3       #attribute:Lorg/w3c/dom/Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v20, v0

    .line 231
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v21

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v22

    .line 232
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v23

    .line 230
    invoke-virtual/range {v20 .. v23}, Lorg/dom4j/tree/NamespaceStack;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v5

    .line 233
    .local v5, attributeQName:Lorg/dom4j/QName;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v5, v0}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 227
    add-int/lit8 v11, v11, 0x1

    goto :goto_65

    .line 241
    .end local v3           #attribute:Lorg/w3c/dom/Node;
    .end local v5           #attributeQName:Lorg/dom4j/QName;
    .end local v6           #attributes:Ljava/util/List;
    .restart local v8       #children:Lorg/w3c/dom/NodeList;
    :cond_e3
    invoke-interface {v8, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 242
    .local v7, child:Lorg/w3c/dom/Node;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lorg/dom4j/io/DOMReader;->readTree(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V

    .line 240
    add-int/lit8 v11, v11, 0x1

    goto :goto_72

    .line 247
    .end local v7           #child:Lorg/w3c/dom/Node;
    :cond_ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/dom4j/tree/NamespaceStack;->pop()Lorg/dom4j/Namespace;

    goto/16 :goto_76
.end method

.method protected readTree(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V
    .registers 12
    .parameter "node"
    .parameter "current"

    .prologue
    .line 93
    const/4 v4, 0x0

    .line 94
    .local v4, element:Lorg/dom4j/Element;
    const/4 v2, 0x0

    .line 96
    .local v2, document:Lorg/dom4j/Document;
    instance-of v6, p2, Lorg/dom4j/Element;

    if-eqz v6, :cond_29

    move-object v4, p2

    .line 97
    check-cast v4, Lorg/dom4j/Element;

    .line 102
    :goto_9
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    packed-switch v6, :pswitch_data_b8

    .line 171
    :pswitch_10
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "WARNING: Unknown DOM node type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 171
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    .end local p2
    :goto_28
    return-void

    .restart local p2
    :cond_29
    move-object v2, p2

    .line 99
    check-cast v2, Lorg/dom4j/Document;

    goto :goto_9

    .line 104
    :pswitch_2d
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/DOMReader;->readElement(Lorg/w3c/dom/Node;Lorg/dom4j/Branch;)V

    goto :goto_28

    .line 110
    :pswitch_31
    instance-of v6, p2, Lorg/dom4j/Element;

    if-eqz v6, :cond_44

    move-object v1, p2

    .line 111
    check-cast v1, Lorg/dom4j/Element;

    .line 112
    .local v1, currentEl:Lorg/dom4j/Element;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 113
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-interface {v1, v6, v7}, Lorg/dom4j/Element;->addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_28

    .end local v1           #currentEl:Lorg/dom4j/Element;
    :cond_44
    move-object v0, p2

    .line 115
    check-cast v0, Lorg/dom4j/Document;

    .line 116
    .local v0, currentDoc:Lorg/dom4j/Document;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 116
    invoke-interface {v0, v6, v7}, Lorg/dom4j/Document;->addProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_28

    .line 124
    .end local v0           #currentDoc:Lorg/dom4j/Document;
    :pswitch_53
    instance-of v6, p2, Lorg/dom4j/Element;

    if-eqz v6, :cond_61

    .line 125
    check-cast p2, Lorg/dom4j/Element;

    .end local p2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Lorg/dom4j/Element;->addComment(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_28

    .line 127
    .restart local p2
    :cond_61
    check-cast p2, Lorg/dom4j/Document;

    .end local p2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Lorg/dom4j/Document;->addComment(Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_28

    .restart local p2
    :pswitch_6b
    move-object v3, p1

    .line 135
    check-cast v3, Lorg/w3c/dom/DocumentType;

    .line 136
    .local v3, domDocType:Lorg/w3c/dom/DocumentType;
    invoke-interface {v3}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v6

    .line 137
    invoke-interface {v3}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v8

    .line 136
    invoke-interface {v2, v6, v7, v8}, Lorg/dom4j/Document;->addDocType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Document;

    goto :goto_28

    .line 142
    .end local v3           #domDocType:Lorg/w3c/dom/DocumentType;
    :pswitch_7e
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_28

    .line 147
    :pswitch_86
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/dom4j/Element;->addCDATA(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_28

    .line 154
    :pswitch_8e
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    .line 156
    .local v5, firstChild:Lorg/w3c/dom/Node;
    if-eqz v5, :cond_a0

    .line 157
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 158
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-interface {v4, v6, v7}, Lorg/dom4j/Element;->addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_28

    .line 160
    :cond_a0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Lorg/dom4j/Element;->addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto/16 :goto_28

    .line 166
    .end local v5           #firstChild:Lorg/w3c/dom/Node;
    :pswitch_ab
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/dom4j/Element;->addEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    goto/16 :goto_28

    .line 102
    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_10
        :pswitch_7e
        :pswitch_86
        :pswitch_8e
        :pswitch_ab
        :pswitch_31
        :pswitch_53
        :pswitch_10
        :pswitch_6b
    .end packed-switch
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .registers 4
    .parameter "docFactory"

    .prologue
    .line 69
    iput-object p1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 70
    iget-object v0, p0, Lorg/dom4j/io/DOMReader;->namespaceStack:Lorg/dom4j/tree/NamespaceStack;

    iget-object v1, p0, Lorg/dom4j/io/DOMReader;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0, v1}, Lorg/dom4j/tree/NamespaceStack;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 71
    return-void
.end method
