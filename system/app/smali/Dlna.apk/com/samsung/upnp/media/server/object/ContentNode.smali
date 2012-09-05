.class public abstract Lcom/samsung/upnp/media/server/object/ContentNode;
.super Lcom/samsung/xml/Node;
.source "ContentNode.java"


# instance fields
.field private contentDir:Lcom/samsung/upnp/media/server/ContentDirectory;

.field private propList:Lcom/samsung/upnp/media/server/object/ContentPropertyList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/samsung/xml/Node;-><init>()V

    .line 151
    new-instance v0, Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentNode;->propList:Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->setID(I)V

    .line 71
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->setParentID(I)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->setRestricted(I)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->setContentDirectory(Lcom/samsung/upnp/media/server/ContentDirectory;)V

    .line 74
    return-void
.end method

.method private outputPropertyAttributes(Ljava/io/PrintWriter;Lcom/samsung/upnp/media/server/object/ContentProperty;)V
    .registers 8
    .parameter "ps"
    .parameter "prop"

    .prologue
    .line 465
    invoke-virtual {p2}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getNAttributes()I

    move-result v2

    .line 466
    .local v2, nAttributes:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_5
    if-lt v1, v2, :cond_8

    .line 470
    return-void

    .line 467
    :cond_8
    invoke-virtual {p2, v1}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getAttribute(I)Lcom/samsung/xml/Attribute;

    move-result-object v0

    .line 468
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

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method


# virtual methods
.method public abstract addContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)V
.end method

.method public addProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)V
    .registers 3
    .parameter "prop"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentNode;->propList:Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public findContentNodeByID(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;
    .registers 9
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 296
    if-nez p1, :cond_5

    move-object p0, v5

    .line 313
    .end local p0
    :cond_4
    :goto_4
    return-object p0

    .line 299
    .restart local p0
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, nodeID:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 303
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getNContentNodes()I

    move-result v3

    .line 304
    .local v3, nodeCnt:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_14
    if-lt v2, v3, :cond_18

    move-object p0, v5

    .line 313
    goto :goto_4

    .line 305
    :cond_18
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/media/server/object/ContentNode;->getContentNode(I)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v0

    .line 306
    .local v0, cnode:Lcom/samsung/upnp/media/server/object/ContentNode;
    if-nez v0, :cond_21

    .line 304
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 308
    :cond_21
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->findContentNodeByID(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v1

    .line 309
    .local v1, fnode:Lcom/samsung/upnp/media/server/object/ContentNode;
    if-eqz v1, :cond_1e

    move-object p0, v1

    .line 310
    goto :goto_4
.end method

.method public getArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    const-string v0, "upnp:artist"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentNode;->contentDir:Lcom/samsung/upnp/media/server/ContentDirectory;

    return-object v0
.end method

.method public getContentNode(I)Lcom/samsung/upnp/media/server/object/ContentNode;
    .registers 3
    .parameter "index"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/media/server/object/ContentNode;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 393
    const-string v0, "dc:date"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 332
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNContentNodes()I
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getNNodes()I

    move-result v0

    return v0
.end method

.method public getNProperties()I
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentNode;->propList:Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->size()I

    move-result v0

    return v0
.end method

.method public getParentID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    const-string v0, "parentID"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperties(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentPropertyList;
    .registers 6
    .parameter "name"

    .prologue
    .line 167
    new-instance v0, Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;-><init>()V

    .line 168
    .local v0, list:Lcom/samsung/upnp/media/server/object/ContentPropertyList;
    iget-object v2, p0, Lcom/samsung/upnp/media/server/object/ContentNode;->propList:Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    .line 172
    return-object v0

    .line 168
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/media/server/object/ContentProperty;

    .line 169
    .local v1, prop:Lcom/samsung/upnp/media/server/object/ContentProperty;
    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 170
    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public getProperty(I)Lcom/samsung/upnp/media/server/object/ContentProperty;
    .registers 3
    .parameter "index"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentNode;->propList:Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->getContentProperty(I)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentProperty;
    .registers 3
    .parameter "name"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentNode;->propList:Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->getContentProperty(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v0

    .line 235
    .local v0, prop:Lcom/samsung/upnp/media/server/object/ContentProperty;
    if-eqz v0, :cond_b

    .line 236
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 237
    :goto_a
    return-object v1

    :cond_b
    const-string v1, ""

    goto :goto_a
.end method

.method public getRestricted()I
    .registers 2

    .prologue
    .line 365
    const-string v0, "restricted"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getAttributeIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 383
    const-string v0, "sec:CaptionInfo"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 379
    const-string v0, "dc:title"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUPnPClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 437
    const-string v0, "upnp:class"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasProperties()Z
    .registers 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getNProperties()I

    move-result v0

    if-lez v0, :cond_8

    .line 199
    const/4 v0, 0x1

    .line 200
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isContaierNode()Z
    .registers 2

    .prologue
    .line 103
    instance-of v0, p0, Lcom/samsung/upnp/media/server/object/container/ContainerNode;

    if-eqz v0, :cond_6

    .line 104
    const/4 v0, 0x1

    .line 105
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isItemNode()Z
    .registers 2

    .prologue
    .line 110
    instance-of v0, p0, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    if-eqz v0, :cond_6

    .line 111
    const/4 v0, 0x1

    .line 112
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public output(Ljava/io/PrintWriter;IZ)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 474
    invoke-virtual {p0, p2}, Lcom/samsung/upnp/media/server/object/ContentNode;->getIndentLevelString(I)Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getName()Ljava/lang/String;

    move-result-object v3

    .line 477
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentNode;->hasNodes()Z

    move-result v4

    if-nez v4, :cond_59

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentNode;->hasProperties()Z

    move-result v4

    if-nez v4, :cond_59

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    :goto_58
    return-void

    .line 486
    :cond_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->outputAttributes(Ljava/io/PrintWriter;)V

    .line 488
    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getNProperties()I

    move-result v4

    move v1, v0

    .line 491
    :goto_80
    if-lt v1, v4, :cond_ab

    .line 508
    if-eqz p3, :cond_8a

    .line 509
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getNNodes()I

    move-result v1

    .line 510
    :goto_88
    if-lt v0, v1, :cond_140

    .line 516
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_58

    .line 492
    :cond_ab
    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/upnp/media/server/object/ContentNode;->getIndentLevelString(I)Ljava/lang/String;

    move-result-object v5

    .line 493
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getProperty(I)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v6

    .line 494
    instance-of v7, v6, Lcom/samsung/upnp/media/server/object/item/IHiddenProperty;

    if-eqz v7, :cond_bc

    .line 491
    :goto_b9
    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    .line 497
    :cond_bc
    invoke-virtual {v6}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getName()Ljava/lang/String;

    move-result-object v7

    .line 498
    invoke-virtual {v6}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 499
    invoke-virtual {v6}, Lcom/samsung/upnp/media/server/object/ContentProperty;->hasAttributes()Z

    move-result v9

    if-eqz v9, :cond_10a

    .line 500
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "<"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 501
    invoke-direct {p0, p1, v6}, Lcom/samsung/upnp/media/server/object/ContentNode;->outputPropertyAttributes(Ljava/io/PrintWriter;Lcom/samsung/upnp/media/server/object/ContentProperty;)V

    .line 502
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b9

    .line 505
    :cond_10a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "<"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_b9

    .line 511
    :cond_140
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v4

    .line 512
    add-int/lit8 v5, p2, 0x1

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v5, v6}, Lcom/samsung/xml/Node;->output(Ljava/io/PrintWriter;IZ)V

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_88
.end method

.method public removeAllProperty()V
    .registers 2

    .prologue
    .line 205
    new-instance v0, Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentNode;->propList:Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    .line 206
    return-void
.end method

.method public abstract removeContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)Z
.end method

.method public removeProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)Z
    .registers 3
    .parameter "prop"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/ContentNode;->propList:Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 403
    const-string v0, "upnp:artist"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public setContentDirectory(Lcom/samsung/upnp/media/server/ContentDirectory;)V
    .registers 2
    .parameter "cdir"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/upnp/media/server/object/ContentNode;->contentDir:Lcom/samsung/upnp/media/server/ContentDirectory;

    .line 85
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 388
    const-string v0, "dc:date"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public setID(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 322
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->setAttribute(Ljava/lang/String;I)V

    .line 323
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .registers 3
    .parameter "id"

    .prologue
    .line 327
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public setParentID(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 341
    const-string v0, "parentID"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->setAttribute(Ljava/lang/String;I)V

    .line 342
    return-void
.end method

.method public setParentID(Ljava/lang/String;)V
    .registers 3
    .parameter "id"

    .prologue
    .line 346
    const-string v0, "parentID"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 213
    if-eqz p1, :cond_c

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    if-nez p2, :cond_d

    .line 223
    :cond_c
    :goto_c
    return-void

    .line 216
    :cond_d
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v0

    .line 217
    .local v0, prop:Lcom/samsung/upnp/media/server/object/ContentProperty;
    if-eqz v0, :cond_17

    .line 218
    invoke-virtual {v0, p2}, Lcom/samsung/upnp/media/server/object/ContentProperty;->setValue(Ljava/lang/String;)V

    goto :goto_c

    .line 221
    :cond_17
    new-instance v0, Lcom/samsung/upnp/media/server/object/ContentProperty;

    .end local v0           #prop:Lcom/samsung/upnp/media/server/object/ContentProperty;
    invoke-direct {v0, p1, p2}, Lcom/samsung/upnp/media/server/object/ContentProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .restart local v0       #prop:Lcom/samsung/upnp/media/server/object/ContentProperty;
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->addProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)V

    goto :goto_c
.end method

.method public setPropertyAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "propName"
    .parameter "attrName"
    .parameter "value"

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getProperty(Ljava/lang/String;)Lcom/samsung/upnp/media/server/object/ContentProperty;

    move-result-object v0

    .line 265
    .local v0, prop:Lcom/samsung/upnp/media/server/object/ContentProperty;
    if-nez v0, :cond_10

    .line 266
    new-instance v0, Lcom/samsung/upnp/media/server/object/ContentProperty;

    .end local v0           #prop:Lcom/samsung/upnp/media/server/object/ContentProperty;
    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/samsung/upnp/media/server/object/ContentProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .restart local v0       #prop:Lcom/samsung/upnp/media/server/object/ContentProperty;
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/ContentNode;->addProperty(Lcom/samsung/upnp/media/server/object/ContentProperty;)V

    .line 269
    :cond_10
    invoke-virtual {v0, p2, p3}, Lcom/samsung/upnp/media/server/object/ContentProperty;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public setRestricted(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 360
    const-string v0, "restricted"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->setAttribute(Ljava/lang/String;I)V

    .line 361
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 374
    const-string v0, "dc:title"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public setUPnPClass(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 432
    const-string v0, "upnp:class"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public setWriteStatus(Ljava/lang/String;)V
    .registers 3
    .parameter "status"

    .prologue
    .line 451
    const-string v0, "upnp:writeStatus"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return-void
.end method
