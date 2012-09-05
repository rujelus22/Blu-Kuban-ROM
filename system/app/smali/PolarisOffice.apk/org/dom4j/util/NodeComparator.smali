.class public Lorg/dom4j/util/NodeComparator;
.super Ljava/lang/Object;
.source "NodeComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 9
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 79
    if-ne p1, p2, :cond_6

    .line 80
    const/4 v3, 0x0

    .line 108
    .end local p1
    .end local p2
    :cond_5
    :goto_5
    return v3

    .line 81
    .restart local p1
    .restart local p2
    :cond_6
    if-eqz p1, :cond_5

    .line 84
    if-nez p2, :cond_c

    move v3, v4

    .line 85
    goto :goto_5

    .line 88
    :cond_c
    instance-of v5, p1, Lorg/dom4j/Node;

    if-eqz v5, :cond_1f

    .line 89
    instance-of v3, p2, Lorg/dom4j/Node;

    if-eqz v3, :cond_1d

    .line 90
    check-cast p1, Lorg/dom4j/Node;

    .end local p1
    check-cast p2, Lorg/dom4j/Node;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I

    move-result v3

    goto :goto_5

    .restart local p1
    .restart local p2
    :cond_1d
    move v3, v4

    .line 93
    goto :goto_5

    .line 96
    :cond_1f
    instance-of v4, p2, Lorg/dom4j/Node;

    if-nez v4, :cond_5

    .line 100
    instance-of v3, p1, Ljava/lang/Comparable;

    if-eqz v3, :cond_2f

    move-object v0, p1

    .line 101
    check-cast v0, Ljava/lang/Comparable;

    .line 103
    .local v0, c1:Ljava/lang/Comparable;
    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    goto :goto_5

    .line 105
    .end local v0           #c1:Ljava/lang/Comparable;
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, name1:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, name2:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_5
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 296
    if-ne p1, p2, :cond_4

    .line 297
    const/4 v0, 0x0

    .line 305
    :goto_3
    return v0

    .line 298
    :cond_4
    if-nez p1, :cond_8

    .line 300
    const/4 v0, -0x1

    goto :goto_3

    .line 301
    :cond_8
    if-nez p2, :cond_c

    .line 302
    const/4 v0, 0x1

    goto :goto_3

    .line 305
    :cond_c
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public compare(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)I
    .registers 6
    .parameter "n1"
    .parameter "n2"

    .prologue
    .line 199
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/QName;Lorg/dom4j/QName;)I

    move-result v0

    .line 201
    .local v0, answer:I
    if-nez v0, :cond_1a

    .line 202
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 205
    :cond_1a
    return v0
.end method

.method public compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I
    .registers 5
    .parameter "t1"
    .parameter "t2"

    .prologue
    .line 229
    invoke-interface {p1}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/dom4j/Document;Lorg/dom4j/Document;)I
    .registers 6
    .parameter "n1"
    .parameter "n2"

    .prologue
    .line 162
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)I

    move-result v0

    .line 164
    .local v0, answer:I
    if-nez v0, :cond_12

    .line 165
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compareContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)I

    move-result v0

    .line 168
    :cond_12
    return v0
.end method

.method public compare(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)I
    .registers 6
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 233
    if-ne p1, p2, :cond_4

    .line 234
    const/4 v0, 0x0

    .line 252
    :cond_3
    :goto_3
    return v0

    .line 235
    :cond_4
    if-nez p1, :cond_8

    .line 237
    const/4 v0, -0x1

    goto :goto_3

    .line 238
    :cond_8
    if-nez p2, :cond_c

    .line 239
    const/4 v0, 0x1

    goto :goto_3

    .line 242
    :cond_c
    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, answer:I
    if-nez v0, :cond_3

    .line 245
    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 247
    if-nez v0, :cond_3

    .line 248
    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public compare(Lorg/dom4j/Element;Lorg/dom4j/Element;)I
    .registers 12
    .parameter "n1"
    .parameter "n2"

    .prologue
    .line 172
    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v7

    invoke-interface {p2}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/QName;Lorg/dom4j/QName;)I

    move-result v2

    .line 174
    .local v2, answer:I
    if-nez v2, :cond_21

    .line 176
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v4

    .line 177
    .local v4, c1:I
    invoke-interface {p2}, Lorg/dom4j/Element;->attributeCount()I

    move-result v5

    .line 178
    .local v5, c2:I
    sub-int v2, v4, v5

    .line 180
    if-nez v2, :cond_21

    .line 181
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1b
    if-lt v6, v4, :cond_23

    .line 191
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compareContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)I

    move-result v2

    .end local v4           #c1:I
    .end local v5           #c2:I
    .end local v6           #i:I
    :cond_21
    move v3, v2

    .line 195
    .end local v2           #answer:I
    .local v3, answer:I
    :goto_22
    return v3

    .line 182
    .end local v3           #answer:I
    .restart local v2       #answer:I
    .restart local v4       #c1:I
    .restart local v5       #c2:I
    .restart local v6       #i:I
    :cond_23
    invoke-interface {p1, v6}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 183
    .local v0, a1:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v7

    invoke-interface {p2, v7}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 184
    .local v1, a2:Lorg/dom4j/Attribute;
    invoke-virtual {p0, v0, v1}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)I

    move-result v2

    .line 186
    if-eqz v2, :cond_37

    move v3, v2

    .line 187
    .end local v2           #answer:I
    .restart local v3       #answer:I
    goto :goto_22

    .line 181
    .end local v3           #answer:I
    .restart local v2       #answer:I
    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b
.end method

.method public compare(Lorg/dom4j/Entity;Lorg/dom4j/Entity;)I
    .registers 6
    .parameter "n1"
    .parameter "n2"

    .prologue
    .line 256
    invoke-interface {p1}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 258
    .local v0, answer:I
    if-nez v0, :cond_1a

    .line 259
    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 262
    :cond_1a
    return v0
.end method

.method public compare(Lorg/dom4j/Namespace;Lorg/dom4j/Namespace;)I
    .registers 6
    .parameter "n1"
    .parameter "n2"

    .prologue
    .line 219
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, answer:I
    if-nez v0, :cond_1a

    .line 222
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 225
    :cond_1a
    return v0
.end method

.method public compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I
    .registers 9
    .parameter "n1"
    .parameter "n2"

    .prologue
    .line 115
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v1

    .line 116
    .local v1, nodeType1:I
    invoke-interface {p2}, Lorg/dom4j/Node;->getNodeType()S

    move-result v2

    .line 117
    .local v2, nodeType2:I
    sub-int v0, v1, v2

    .line 119
    .local v0, answer:I
    if-eqz v0, :cond_d

    .line 152
    .end local v0           #answer:I
    .end local p1
    .end local p2
    :goto_c
    return v0

    .line 122
    .restart local v0       #answer:I
    .restart local p1
    .restart local p2
    :cond_d
    packed-switch v1, :pswitch_data_8a

    .line 155
    :pswitch_10
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Invalid node types. node1: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " and node2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :pswitch_2f
    check-cast p1, Lorg/dom4j/Element;

    .end local p1
    check-cast p2, Lorg/dom4j/Element;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Element;Lorg/dom4j/Element;)I

    move-result v0

    goto :goto_c

    .line 127
    .restart local p1
    .restart local p2
    :pswitch_38
    check-cast p1, Lorg/dom4j/Document;

    .end local p1
    check-cast p2, Lorg/dom4j/Document;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Document;Lorg/dom4j/Document;)I

    move-result v0

    goto :goto_c

    .line 130
    .restart local p1
    .restart local p2
    :pswitch_41
    check-cast p1, Lorg/dom4j/Attribute;

    .end local p1
    check-cast p2, Lorg/dom4j/Attribute;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)I

    move-result v0

    goto :goto_c

    .line 133
    .restart local p1
    .restart local p2
    :pswitch_4a
    check-cast p1, Lorg/dom4j/Text;

    .end local p1
    check-cast p2, Lorg/dom4j/Text;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I

    move-result v0

    goto :goto_c

    .line 136
    .restart local p1
    .restart local p2
    :pswitch_53
    check-cast p1, Lorg/dom4j/CDATA;

    .end local p1
    check-cast p2, Lorg/dom4j/CDATA;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I

    move-result v0

    goto :goto_c

    .line 139
    .restart local p1
    .restart local p2
    :pswitch_5c
    check-cast p1, Lorg/dom4j/Entity;

    .end local p1
    check-cast p2, Lorg/dom4j/Entity;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Entity;Lorg/dom4j/Entity;)I

    move-result v0

    goto :goto_c

    .line 142
    .restart local p1
    .restart local p2
    :pswitch_65
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    .line 143
    .end local p1
    check-cast p2, Lorg/dom4j/ProcessingInstruction;

    .line 142
    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/ProcessingInstruction;Lorg/dom4j/ProcessingInstruction;)I

    move-result v0

    goto :goto_c

    .line 146
    .restart local p1
    .restart local p2
    :pswitch_6e
    check-cast p1, Lorg/dom4j/Comment;

    .end local p1
    check-cast p2, Lorg/dom4j/Comment;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)I

    move-result v0

    goto :goto_c

    .line 149
    .restart local p1
    .restart local p2
    :pswitch_77
    check-cast p1, Lorg/dom4j/DocumentType;

    .end local p1
    check-cast p2, Lorg/dom4j/DocumentType;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)I

    move-result v0

    goto :goto_c

    .line 152
    .restart local p1
    .restart local p2
    :pswitch_80
    check-cast p1, Lorg/dom4j/Namespace;

    .end local p1
    check-cast p2, Lorg/dom4j/Namespace;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Namespace;Lorg/dom4j/Namespace;)I

    move-result v0

    goto :goto_c

    .line 122
    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_41
        :pswitch_4a
        :pswitch_53
        :pswitch_5c
        :pswitch_10
        :pswitch_65
        :pswitch_6e
        :pswitch_38
        :pswitch_77
        :pswitch_10
        :pswitch_10
        :pswitch_80
    .end packed-switch
.end method

.method public compare(Lorg/dom4j/ProcessingInstruction;Lorg/dom4j/ProcessingInstruction;)I
    .registers 6
    .parameter "n1"
    .parameter "n2"

    .prologue
    .line 266
    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 268
    .local v0, answer:I
    if-nez v0, :cond_1a

    .line 269
    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 272
    :cond_1a
    return v0
.end method

.method public compare(Lorg/dom4j/QName;Lorg/dom4j/QName;)I
    .registers 6
    .parameter "n1"
    .parameter "n2"

    .prologue
    .line 209
    invoke-virtual {p1}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, answer:I
    if-nez v0, :cond_1a

    .line 212
    invoke-virtual {p1}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/util/NodeComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 215
    :cond_1a
    return v0
.end method

.method public compareContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)I
    .registers 9
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 276
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v1

    .line 277
    .local v1, c1:I
    invoke-interface {p2}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v2

    .line 278
    .local v2, c2:I
    sub-int v0, v1, v2

    .line 280
    .local v0, answer:I
    if-nez v0, :cond_f

    .line 281
    const/4 v3, 0x0

    .local v3, i:I
    :goto_d
    if-lt v3, v1, :cond_10

    .line 292
    .end local v3           #i:I
    :cond_f
    return v0

    .line 282
    .restart local v3       #i:I
    :cond_10
    invoke-interface {p1, v3}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v4

    .line 283
    .local v4, n1:Lorg/dom4j/Node;
    invoke-interface {p2, v3}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v5

    .line 284
    .local v5, n2:Lorg/dom4j/Node;
    invoke-virtual {p0, v4, v5}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Node;Lorg/dom4j/Node;)I

    move-result v0

    .line 286
    if-nez v0, :cond_f

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_d
.end method
