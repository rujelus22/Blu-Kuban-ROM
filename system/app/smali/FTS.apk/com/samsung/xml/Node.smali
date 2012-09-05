.class public Lcom/samsung/xml/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field private attrList:Lcom/samsung/xml/AttributeList;

.field private name:Ljava/lang/String;

.field private nodeList:Lcom/samsung/xml/NodeList;

.field private parentNode:Lcom/samsung/xml/Node;

.field private userData:Ljava/lang/Object;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Lcom/samsung/xml/Node;->parentNode:Lcom/samsung/xml/Node;

    .line 95
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/xml/Node;->name:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/xml/Node;->value:Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/samsung/xml/AttributeList;

    invoke-direct {v0}, Lcom/samsung/xml/AttributeList;-><init>()V

    iput-object v0, p0, Lcom/samsung/xml/Node;->attrList:Lcom/samsung/xml/AttributeList;

    .line 237
    new-instance v0, Lcom/samsung/xml/NodeList;

    invoke-direct {v0}, Lcom/samsung/xml/NodeList;-><init>()V

    iput-object v0, p0, Lcom/samsung/xml/Node;->nodeList:Lcom/samsung/xml/NodeList;

    .line 318
    iput-object v1, p0, Lcom/samsung/xml/Node;->userData:Ljava/lang/Object;

    .line 44
    invoke-virtual {p0, v1}, Lcom/samsung/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/samsung/xml/Node;->setParentNode(Lcom/samsung/xml/Node;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/xml/Node;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/samsung/xml/Node;->setName(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public addAttribute(Lcom/samsung/xml/Attribute;)V
    .registers 3
    .parameter "attr"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/xml/Node;->attrList:Lcom/samsung/xml/AttributeList;

    invoke-virtual {v0, p1}, Lcom/samsung/xml/AttributeList;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public addNode(Lcom/samsung/xml/Node;)V
    .registers 3
    .parameter "node"

    .prologue
    .line 258
    if-eqz p1, :cond_a

    .line 259
    invoke-virtual {p1, p0}, Lcom/samsung/xml/Node;->setParentNode(Lcom/samsung/xml/Node;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/xml/Node;->nodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v0, p1}, Lcom/samsung/xml/NodeList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_a
    return-void
.end method

.method public getAttribute(I)Lcom/samsung/xml/Attribute;
    .registers 3
    .parameter "index"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/xml/Node;->attrList:Lcom/samsung/xml/AttributeList;

    invoke-virtual {v0, p1}, Lcom/samsung/xml/AttributeList;->getAttribute(I)Lcom/samsung/xml/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;
    .registers 3
    .parameter "name"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/xml/Node;->attrList:Lcom/samsung/xml/AttributeList;

    invoke-virtual {v0, p1}, Lcom/samsung/xml/AttributeList;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/samsung/xml/Node;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v0

    .line 210
    .local v0, attr:Lcom/samsung/xml/Attribute;
    if-eqz v0, :cond_b

    .line 211
    invoke-virtual {v0}, Lcom/samsung/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 212
    :goto_a
    return-object v1

    :cond_b
    const-string v1, ""

    goto :goto_a
.end method

.method public getIndentLevelString(I)Ljava/lang/String;
    .registers 5
    .parameter "nIndentLevel"

    .prologue
    .line 337
    new-array v0, p1, [C

    .line 338
    .local v0, indentString:[C
    const/4 v1, 0x0

    .local v1, n:I
    :goto_3
    if-lt v1, p1, :cond_b

    .line 340
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 339
    :cond_b
    const/16 v2, 0x9

    aput-char v2, v0, v1

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public getNAttributes()I
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/xml/Node;->attrList:Lcom/samsung/xml/AttributeList;

    invoke-virtual {v0}, Lcom/samsung/xml/AttributeList;->size()I

    move-result v0

    return v0
.end method

.method public getNNodes()I
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/xml/Node;->nodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v0}, Lcom/samsung/xml/NodeList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/xml/Node;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNode(I)Lcom/samsung/xml/Node;
    .registers 3
    .parameter "index"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/xml/Node;->nodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v0, p1}, Lcom/samsung/xml/NodeList;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;
    .registers 3
    .parameter "name"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/samsung/xml/Node;->nodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v0, p1}, Lcom/samsung/xml/NodeList;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeEndsWith(Ljava/lang/String;)Lcom/samsung/xml/Node;
    .registers 3
    .parameter "name"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/samsung/xml/Node;->nodeList:Lcom/samsung/xml/NodeList;

    invoke-virtual {v0, p1}, Lcom/samsung/xml/NodeList;->getEndsWith(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v0

    .line 309
    .local v0, node:Lcom/samsung/xml/Node;
    if-eqz v0, :cond_b

    .line 310
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 311
    :goto_a
    return-object v1

    :cond_b
    const-string v1, ""

    goto :goto_a
.end method

.method public getParentNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/xml/Node;->parentNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method public getRootNode()Lcom/samsung/xml/Node;
    .registers 3

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, rootNode:Lcom/samsung/xml/Node;
    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getParentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 84
    .local v0, parentNode:Lcom/samsung/xml/Node;
    :goto_5
    if-nez v0, :cond_8

    .line 88
    return-object v1

    .line 85
    :cond_8
    move-object v1, v0

    .line 86
    invoke-virtual {v1}, Lcom/samsung/xml/Node;->getParentNode()Lcom/samsung/xml/Node;

    move-result-object v0

    goto :goto_5
.end method

.method public getUserData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/xml/Node;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/xml/Node;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasNodes()Z
    .registers 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v0

    if-lez v0, :cond_8

    .line 288
    const/4 v0, 0x1

    .line 289
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public output(Ljava/io/PrintWriter;IZ)V
    .registers 12
    .parameter "ps"
    .parameter "indentLevel"
    .parameter "hasChildNode"

    .prologue
    .line 354
    invoke-virtual {p0, p2}, Lcom/samsung/xml/Node;->getIndentLevelString(I)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, indentString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/xml/Node;->hasNodes()Z

    move-result v6

    if-eqz v6, :cond_14

    if-nez p3, :cond_66

    .line 360
    :cond_14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, p1}, Lcom/samsung/xml/Node;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 363
    if-eqz v5, :cond_39

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3f

    .line 365
    :cond_39
    const-string v6, " />"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    :goto_3e
    return-void

    .line 367
    :cond_3f
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ">"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3e

    .line 373
    :cond_66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0, p1}, Lcom/samsung/xml/Node;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 375
    const-string v6, ">"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v3

    .line 378
    .local v3, nChildNodes:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_8d
    if-lt v2, v3, :cond_b0

    .line 383
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "</"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3e

    .line 379
    :cond_b0
    invoke-virtual {p0, v2}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v0

    .line 380
    .local v0, cnode:Lcom/samsung/xml/Node;
    add-int/lit8 v6, p2, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, p1, v6, v7}, Lcom/samsung/xml/Node;->output(Ljava/io/PrintWriter;IZ)V

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_8d
.end method

.method public outputAttributes(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "ps"

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getNAttributes()I

    move-result v2

    .line 346
    .local v2, nAttributes:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_5
    if-lt v1, v2, :cond_8

    .line 350
    return-void

    .line 347
    :cond_8
    invoke-virtual {p0, v1}, Lcom/samsung/xml/Node;->getAttribute(I)Lcom/samsung/xml/Attribute;

    move-result-object v0

    .line 348
    .local v0, attr:Lcom/samsung/xml/Attribute;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/xml/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/samsung/xml/Node;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v0

    .line 196
    .local v0, attr:Lcom/samsung/xml/Attribute;
    if-eqz v0, :cond_a

    .line 197
    invoke-virtual {v0, p2}, Lcom/samsung/xml/Attribute;->setValue(Ljava/lang/String;)V

    .line 202
    :goto_9
    return-void

    .line 200
    :cond_a
    new-instance v0, Lcom/samsung/xml/Attribute;

    .end local v0           #attr:Lcom/samsung/xml/Attribute;
    invoke-direct {v0, p1, p2}, Lcom/samsung/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .restart local v0       #attr:Lcom/samsung/xml/Attribute;
    invoke-virtual {p0, v0}, Lcom/samsung/xml/Node;->addAttribute(Lcom/samsung/xml/Attribute;)V

    goto :goto_9
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/samsung/xml/Node;->name:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "ns"
    .parameter "name"

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/xml/Node;->name:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setNameSpace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "ns"
    .parameter "value"

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "xmlns:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public setNode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v0

    .line 298
    .local v0, node:Lcom/samsung/xml/Node;
    if-eqz v0, :cond_a

    .line 299
    invoke-virtual {v0, p2}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 305
    :goto_9
    return-void

    .line 302
    :cond_a
    new-instance v0, Lcom/samsung/xml/Node;

    .end local v0           #node:Lcom/samsung/xml/Node;
    invoke-direct {v0, p1}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 303
    .restart local v0       #node:Lcom/samsung/xml/Node;
    invoke-virtual {v0, p2}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0, v0}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    goto :goto_9
.end method

.method public setParentNode(Lcom/samsung/xml/Node;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/xml/Node;->parentNode:Lcom/samsung/xml/Node;

    .line 69
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/samsung/xml/Node;->userData:Ljava/lang/Object;

    .line 323
    return-void
.end method

.method public setValue(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/xml/Node;->value:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 397
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/xml/Node;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 5
    .parameter "hasChildNode"

    .prologue
    .line 388
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 389
    .local v0, byteOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 390
    .local v1, pr:Ljava/io/PrintWriter;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/samsung/xml/Node;->output(Ljava/io/PrintWriter;IZ)V

    .line 391
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 392
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
