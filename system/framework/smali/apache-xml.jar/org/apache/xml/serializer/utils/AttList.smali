.class public final Lorg/apache/xml/serializer/utils/AttList;
.super Ljava/lang/Object;
.source "AttList.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field m_attrs:Lorg/w3c/dom/NamedNodeMap;

.field m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

.field m_lastIndex:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/NamedNodeMap;Lorg/apache/xml/serializer/utils/DOM2Helper;)V
    .registers 4
    .parameter "attrs"
    .parameter "dh"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    .line 82
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_lastIndex:I

    .line 83
    iput-object p2, p0, Lorg/apache/xml/serializer/utils/AttList;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    .line 84
    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .registers 5
    .parameter "qName"

    .prologue
    .line 255
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_8
    if-ltz v1, :cond_1e

    .line 257
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v2, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 258
    .local v0, a:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 261
    .end local v0           #a:Lorg/w3c/dom/Node;
    .end local v1           #i:I
    :goto_1a
    return v1

    .line 255
    .restart local v0       #a:Lorg/w3c/dom/Node;
    .restart local v1       #i:I
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 261
    .end local v0           #a:Lorg/w3c/dom/Node;
    :cond_1e
    const/4 v1, -0x1

    goto :goto_1a
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "localPart"

    .prologue
    .line 234
    iget-object v3, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_8
    if-ltz v1, :cond_2c

    .line 236
    iget-object v3, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v3, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 237
    .local v0, a:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, u:Ljava/lang/String;
    if-nez v2, :cond_23

    if-nez p1, :cond_29

    :cond_18
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 243
    .end local v0           #a:Lorg/w3c/dom/Node;
    .end local v1           #i:I
    .end local v2           #u:Ljava/lang/String;
    :goto_22
    return v1

    .line 238
    .restart local v0       #a:Lorg/w3c/dom/Node;
    .restart local v1       #i:I
    .restart local v2       #u:Ljava/lang/String;
    :cond_23
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 234
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 243
    .end local v0           #a:Lorg/w3c/dom/Node;
    .end local v2           #u:Ljava/lang/String;
    :cond_2c
    const/4 v1, -0x1

    goto :goto_22
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 123
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/AttList;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    iget-object v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-virtual {v1, v0}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 149
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 175
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 190
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getURI(I)Ljava/lang/String;
    .registers 5
    .parameter "index"

    .prologue
    .line 107
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/AttList;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    iget-object v1, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Attr;

    invoke-virtual {v2, v1}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, ns:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 109
    const-string v0, ""

    .line 110
    :cond_12
    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 203
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 204
    .local v0, attr:Lorg/w3c/dom/Attr;
    if-eqz v0, :cond_f

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 219
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 220
    .local v0, a:Lorg/w3c/dom/Node;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method
