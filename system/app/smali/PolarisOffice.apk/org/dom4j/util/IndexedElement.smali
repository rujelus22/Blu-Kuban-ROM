.class public Lorg/dom4j/util/IndexedElement;
.super Lorg/dom4j/tree/DefaultElement;
.source "IndexedElement.java"


# instance fields
.field private attributeIndex:Ljava/util/Map;

.field private elementIndex:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;)V
    .registers 2
    .parameter "qname"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/QName;I)V
    .registers 3
    .parameter "qname"
    .parameter "attributeCount"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/dom4j/tree/DefaultElement;-><init>(Lorg/dom4j/QName;I)V

    .line 50
    return-void
.end method


# virtual methods
.method protected addNode(Lorg/dom4j/Node;)V
    .registers 3
    .parameter "node"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lorg/dom4j/tree/DefaultElement;->addNode(Lorg/dom4j/Node;)V

    .line 127
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    if-eqz v0, :cond_11

    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_11

    .line 128
    check-cast p1, Lorg/dom4j/Element;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->addToElementIndex(Lorg/dom4j/Element;)V

    .line 132
    :cond_10
    :goto_10
    return-void

    .line 129
    .restart local p1
    :cond_11
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    if-eqz v0, :cond_10

    instance-of v0, p1, Lorg/dom4j/Attribute;

    if-eqz v0, :cond_10

    .line 130
    check-cast p1, Lorg/dom4j/Attribute;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->addToAttributeIndex(Lorg/dom4j/Attribute;)V

    goto :goto_10
.end method

.method protected addToAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 245
    iget-object v1, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 247
    .local v0, oldValue:Ljava/lang/Object;
    if-eqz v0, :cond_d

    .line 248
    iget-object v1, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_d
    return-void
.end method

.method protected addToAttributeIndex(Lorg/dom4j/Attribute;)V
    .registers 4
    .parameter "attribute"

    .prologue
    .line 238
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    .line 239
    .local v1, qName:Lorg/dom4j/QName;
    invoke-virtual {v1}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0, v1, p1}, Lorg/dom4j/util/IndexedElement;->addToAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V

    .line 241
    invoke-virtual {p0, v0, p1}, Lorg/dom4j/util/IndexedElement;->addToAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V

    .line 242
    return-void
.end method

.method protected addToElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 202
    iget-object v2, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 204
    .local v1, oldValue:Ljava/lang/Object;
    if-nez v1, :cond_e

    .line 205
    iget-object v2, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :goto_d
    return-void

    .line 207
    :cond_e
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_19

    move-object v0, v1

    .line 208
    check-cast v0, Ljava/util/List;

    .line 209
    .local v0, list:Ljava/util/List;
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 211
    .end local v0           #list:Ljava/util/List;
    :cond_19
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createList()Ljava/util/List;

    move-result-object v0

    .line 212
    .restart local v0       #list:Ljava/util/List;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v2, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method

.method protected addToElementIndex(Lorg/dom4j/Element;)V
    .registers 4
    .parameter "element"

    .prologue
    .line 195
    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    .line 196
    .local v1, qName:Lorg/dom4j/QName;
    invoke-virtual {v1}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0, v1, p1}, Lorg/dom4j/util/IndexedElement;->addToElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V

    .line 198
    invoke-virtual {p0, v0, p1}, Lorg/dom4j/util/IndexedElement;->addToElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V

    .line 199
    return-void
.end method

.method protected asElement(Ljava/lang/Object;)Lorg/dom4j/Element;
    .registers 5
    .parameter "object"

    .prologue
    .line 79
    instance-of v1, p1, Lorg/dom4j/Element;

    if-eqz v1, :cond_7

    .line 80
    check-cast p1, Lorg/dom4j/Element;

    .line 89
    .end local p1
    :goto_6
    return-object p1

    .line 81
    .restart local p1
    :cond_7
    if-eqz p1, :cond_1c

    move-object v0, p1

    .line 82
    check-cast v0, Ljava/util/List;

    .line 84
    .local v0, list:Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1c

    .line 85
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    move-object p1, v1

    goto :goto_6

    .line 89
    .end local v0           #list:Ljava/util/List;
    :cond_1c
    const/4 p1, 0x0

    goto :goto_6
.end method

.method protected asElementIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 3
    .parameter "object"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->asElementList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected asElementList(Ljava/lang/Object;)Ljava/util/List;
    .registers 7
    .parameter "object"

    .prologue
    .line 93
    instance-of v4, p1, Lorg/dom4j/Element;

    if-eqz v4, :cond_9

    .line 94
    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->createSingleResultList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 106
    :cond_8
    :goto_8
    return-object v0

    .line 95
    :cond_9
    if-eqz p1, :cond_23

    move-object v2, p1

    .line 96
    check-cast v2, Ljava/util/List;

    .line 97
    .local v2, list:Ljava/util/List;
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createResultList()Lorg/dom4j/tree/BackedList;

    move-result-object v0

    .line 99
    .local v0, answer:Lorg/dom4j/tree/BackedList;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, size:I
    :goto_17
    if-ge v1, v3, :cond_8

    .line 100
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/dom4j/tree/BackedList;->addLocal(Ljava/lang/Object;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 106
    .end local v0           #answer:Lorg/dom4j/tree/BackedList;
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;
    .end local v3           #size:I
    :cond_23
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createEmptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8
.end method

.method public attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;
    .registers 3
    .parameter "name"

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->attributeIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    return-object v0
.end method

.method public attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;
    .registers 3
    .parameter "qName"

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->attributeIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Attribute;

    return-object v0
.end method

.method protected attributeIndex()Ljava/util/Map;
    .registers 3

    .prologue
    .line 149
    iget-object v1, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    if-nez v1, :cond_14

    .line 150
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createAttributeIndex()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    .line 152
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->attributeIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    .line 157
    .end local v0           #iter:Ljava/util/Iterator;
    :cond_14
    iget-object v1, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    return-object v1

    .line 153
    .restart local v0       #iter:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, v1}, Lorg/dom4j/util/IndexedElement;->addToAttributeIndex(Lorg/dom4j/Attribute;)V

    goto :goto_e
.end method

.method protected createAttributeIndex()Ljava/util/Map;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createIndex()Ljava/util/Map;

    move-result-object v0

    .line 180
    .local v0, answer:Ljava/util/Map;
    return-object v0
.end method

.method protected createElementIndex()Ljava/util/Map;
    .registers 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createIndex()Ljava/util/Map;

    move-result-object v0

    .line 191
    .local v0, answer:Ljava/util/Map;
    return-object v0
.end method

.method protected createIndex()Ljava/util/Map;
    .registers 2

    .prologue
    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected createList()Ljava/util/List;
    .registers 2

    .prologue
    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public element(Ljava/lang/String;)Lorg/dom4j/Element;
    .registers 3
    .parameter "name"

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/util/IndexedElement;->asElement(Ljava/lang/Object;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .registers 3
    .parameter "qName"

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/util/IndexedElement;->asElement(Ljava/lang/Object;)Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method protected elementIndex()Ljava/util/Map;
    .registers 3

    .prologue
    .line 161
    iget-object v1, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    if-nez v1, :cond_14

    .line 162
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->createElementIndex()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    .line 164
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    .line 169
    .end local v0           #iter:Ljava/util/Iterator;
    :cond_14
    iget-object v1, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    return-object v1

    .line 165
    .restart local v0       #iter:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    invoke-virtual {p0, v1}, Lorg/dom4j/util/IndexedElement;->addToElementIndex(Lorg/dom4j/Element;)V

    goto :goto_e
.end method

.method public elements(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .parameter "name"

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/util/IndexedElement;->asElementList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public elements(Lorg/dom4j/QName;)Ljava/util/List;
    .registers 3
    .parameter "qName"

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/dom4j/util/IndexedElement;->elementIndex()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/util/IndexedElement;->asElementList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected removeFromAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 260
    iget-object v1, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, oldValue:Ljava/lang/Object;
    if-eqz v0, :cond_13

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 263
    iget-object v1, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_13
    return-void
.end method

.method protected removeFromAttributeIndex(Lorg/dom4j/Attribute;)V
    .registers 4
    .parameter "attribute"

    .prologue
    .line 253
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    .line 254
    .local v1, qName:Lorg/dom4j/QName;
    invoke-virtual {v1}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0, v1, p1}, Lorg/dom4j/util/IndexedElement;->removeFromAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V

    .line 256
    invoke-virtual {p0, v0, p1}, Lorg/dom4j/util/IndexedElement;->removeFromAttributeIndex(Ljava/lang/Object;Lorg/dom4j/Attribute;)V

    .line 257
    return-void
.end method

.method protected removeFromElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 227
    iget-object v2, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 229
    .local v1, oldValue:Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_11

    move-object v0, v1

    .line 230
    check-cast v0, Ljava/util/List;

    .line 231
    .local v0, list:Ljava/util/List;
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 235
    .end local v0           #list:Ljava/util/List;
    :goto_10
    return-void

    .line 233
    :cond_11
    iget-object v2, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method protected removeFromElementIndex(Lorg/dom4j/Element;)V
    .registers 4
    .parameter "element"

    .prologue
    .line 220
    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    .line 221
    .local v1, qName:Lorg/dom4j/QName;
    invoke-virtual {v1}, Lorg/dom4j/QName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0, v1, p1}, Lorg/dom4j/util/IndexedElement;->removeFromElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V

    .line 223
    invoke-virtual {p0, v0, p1}, Lorg/dom4j/util/IndexedElement;->removeFromElementIndex(Ljava/lang/Object;Lorg/dom4j/Element;)V

    .line 224
    return-void
.end method

.method protected removeNode(Lorg/dom4j/Node;)Z
    .registers 3
    .parameter "node"

    .prologue
    .line 135
    invoke-super {p0, p1}, Lorg/dom4j/tree/DefaultElement;->removeNode(Lorg/dom4j/Node;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 136
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->elementIndex:Ljava/util/Map;

    if-eqz v0, :cond_15

    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_15

    .line 137
    check-cast p1, Lorg/dom4j/Element;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->removeFromElementIndex(Lorg/dom4j/Element;)V

    .line 142
    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 145
    :goto_14
    return v0

    .line 138
    .restart local p1
    :cond_15
    iget-object v0, p0, Lorg/dom4j/util/IndexedElement;->attributeIndex:Ljava/util/Map;

    if-eqz v0, :cond_13

    instance-of v0, p1, Lorg/dom4j/Attribute;

    if-eqz v0, :cond_13

    .line 139
    check-cast p1, Lorg/dom4j/Attribute;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/dom4j/util/IndexedElement;->removeFromAttributeIndex(Lorg/dom4j/Attribute;)V

    goto :goto_13

    .line 145
    .restart local p1
    :cond_23
    const/4 v0, 0x0

    goto :goto_14
.end method
