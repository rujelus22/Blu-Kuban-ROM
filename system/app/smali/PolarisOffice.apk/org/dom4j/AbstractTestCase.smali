.class public Lorg/dom4j/AbstractTestCase;
.super Ljunit/framework/TestCase;
.source "AbstractTestCase.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field static class$1:Ljava/lang/Class;


# instance fields
.field protected document:Lorg/dom4j/Document;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    .line 31
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public assertDocumentsEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V
    .registers 9
    .parameter "doc1"
    .parameter "doc2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 61
    :try_start_2
    const-string v5, "Doc1 not null"

    if-eqz p1, :cond_2c

    move v4, v2

    :goto_7
    invoke-static {v5, v4}, Lorg/dom4j/AbstractTestCase;->assertTrue(Ljava/lang/String;Z)V

    .line 62
    const-string v5, "Doc2 not null"

    if-eqz p2, :cond_2e

    move v4, v2

    :goto_f
    invoke-static {v5, v4}, Lorg/dom4j/AbstractTestCase;->assertTrue(Ljava/lang/String;Z)V

    .line 64
    invoke-interface {p1}, Lorg/dom4j/Document;->normalize()V

    .line 65
    invoke-interface {p2}, Lorg/dom4j/Document;->normalize()V

    .line 67
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V

    .line 69
    new-instance v0, Lorg/dom4j/util/NodeComparator;

    invoke-direct {v0}, Lorg/dom4j/util/NodeComparator;-><init>()V

    .line 70
    .local v0, comparator:Lorg/dom4j/util/NodeComparator;
    const-string v4, "Documents are equal"

    .line 71
    invoke-virtual {v0, p1, p2}, Lorg/dom4j/util/NodeComparator;->compare(Lorg/dom4j/Document;Lorg/dom4j/Document;)I

    move-result v5

    if-nez v5, :cond_30

    .line 70
    :goto_28
    invoke-static {v4, v2}, Lorg/dom4j/AbstractTestCase;->assertTrue(Ljava/lang/String;Z)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_32

    .line 76
    return-void

    .end local v0           #comparator:Lorg/dom4j/util/NodeComparator;
    :cond_2c
    move v4, v3

    .line 61
    goto :goto_7

    :cond_2e
    move v4, v3

    .line 62
    goto :goto_f

    .restart local v0       #comparator:Lorg/dom4j/util/NodeComparator;
    :cond_30
    move v2, v3

    .line 71
    goto :goto_28

    .line 72
    .end local v0           #comparator:Lorg/dom4j/util/NodeComparator;
    :catch_32
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Failed during comparison of: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " and: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/AbstractTestCase;->log(Ljava/lang/String;)V

    .line 74
    throw v1
.end method

.method public assertNodesEqual(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)V
    .registers 6
    .parameter "n1"
    .parameter "n2"

    .prologue
    .line 103
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/QName;Lorg/dom4j/QName;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Attribute values for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-interface {p1}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v0, v1, v2}, Lorg/dom4j/AbstractTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public assertNodesEqual(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)V
    .registers 6
    .parameter "t1"
    .parameter "t2"

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Text equal for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-interface {p2}, Lorg/dom4j/CharacterData;->getText()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v0, v1, v2}, Lorg/dom4j/AbstractTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public assertNodesEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V
    .registers 5
    .parameter "n1"
    .parameter "n2"

    .prologue
    .line 80
    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    invoke-interface {p2}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)V

    .line 81
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/AbstractTestCase;->assertNodesEqualContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)V

    .line 82
    return-void
.end method

.method public assertNodesEqual(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)V
    .registers 6
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v2, 0x0

    .line 123
    if-eq p1, p2, :cond_17

    .line 124
    if-nez p1, :cond_18

    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Missing DocType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/dom4j/AbstractTestCase;->assertTrue(Ljava/lang/String;Z)V

    .line 136
    :cond_17
    :goto_17
    return-void

    .line 126
    :cond_18
    if-nez p2, :cond_2d

    .line 127
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Missing DocType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/dom4j/AbstractTestCase;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_17

    .line 129
    :cond_2d
    const-string v0, "DocType name equal"

    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/dom4j/AbstractTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "DocType publicID equal"

    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v0, v1, v2}, Lorg/dom4j/AbstractTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "DocType systemID equal"

    invoke-interface {p1}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-interface {p2}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v0, v1, v2}, Lorg/dom4j/AbstractTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public assertNodesEqual(Lorg/dom4j/Element;Lorg/dom4j/Element;)V
    .registers 10
    .parameter "n1"
    .parameter "n2"

    .prologue
    .line 85
    invoke-interface {p1}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v5

    invoke-interface {p2}, Lorg/dom4j/Element;->getQName()Lorg/dom4j/QName;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/QName;Lorg/dom4j/QName;)V

    .line 87
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeCount()I

    move-result v2

    .line 88
    .local v2, c1:I
    invoke-interface {p2}, Lorg/dom4j/Element;->attributeCount()I

    move-result v3

    .line 90
    .local v3, c2:I
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Elements have same number of attributes ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 91
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v3}, Lorg/dom4j/AbstractTestCase;->assertEquals(Ljava/lang/String;II)V

    .line 93
    const/4 v4, 0x0

    .local v4, i:I
    :goto_44
    if-lt v4, v2, :cond_4a

    .line 99
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/AbstractTestCase;->assertNodesEqualContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)V

    .line 100
    return-void

    .line 94
    :cond_4a
    invoke-interface {p1, v4}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 95
    .local v0, a1:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQName()Lorg/dom4j/QName;

    move-result-object v5

    invoke-interface {p2, v5}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v1

    .line 96
    .local v1, a2:Lorg/dom4j/Attribute;
    invoke-virtual {p0, v0, v1}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)V

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_44
.end method

.method public assertNodesEqual(Lorg/dom4j/Entity;Lorg/dom4j/Entity;)V
    .registers 6
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 139
    const-string v0, "Entity names equal"

    invoke-interface {p1}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/dom4j/AbstractTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "Entity values equal"

    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/dom4j/AbstractTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public assertNodesEqual(Lorg/dom4j/Namespace;Lorg/dom4j/Namespace;)V
    .registers 6
    .parameter "n1"
    .parameter "n2"

    .prologue
    .line 150
    const-string v0, "Namespace prefixes not equal"

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {v0, v1, v2}, Lorg/dom4j/AbstractTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "Namespace URIs not equal"

    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/dom4j/AbstractTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public assertNodesEqual(Lorg/dom4j/Node;Lorg/dom4j/Node;)V
    .registers 8
    .parameter "n1"
    .parameter "n2"

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    .line 178
    .local v0, nodeType1:I
    invoke-interface {p2}, Lorg/dom4j/Node;->getNodeType()S

    move-result v1

    .line 179
    .local v1, nodeType2:I
    const-string v4, "Nodes are of same type: "

    if-ne v0, v1, :cond_31

    const/4 v2, 0x1

    :goto_e
    invoke-static {v4, v2}, Lorg/dom4j/AbstractTestCase;->assertTrue(Ljava/lang/String;Z)V

    .line 181
    packed-switch v0, :pswitch_data_84

    .line 234
    :pswitch_14
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "Invalid node types. node1: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " and node2: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 235
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 234
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/dom4j/AbstractTestCase;->assertTrue(Ljava/lang/String;Z)V

    .line 237
    .end local p1
    .end local p2
    :goto_30
    return-void

    .restart local p1
    .restart local p2
    :cond_31
    move v2, v3

    .line 179
    goto :goto_e

    .line 183
    :pswitch_33
    check-cast p1, Lorg/dom4j/Element;

    .end local p1
    check-cast p2, Lorg/dom4j/Element;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/Element;Lorg/dom4j/Element;)V

    goto :goto_30

    .line 188
    .restart local p1
    .restart local p2
    :pswitch_3b
    check-cast p1, Lorg/dom4j/Document;

    .end local p1
    check-cast p2, Lorg/dom4j/Document;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/Document;Lorg/dom4j/Document;)V

    goto :goto_30

    .line 193
    .restart local p1
    .restart local p2
    :pswitch_43
    check-cast p1, Lorg/dom4j/Attribute;

    .end local p1
    check-cast p2, Lorg/dom4j/Attribute;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/Attribute;Lorg/dom4j/Attribute;)V

    goto :goto_30

    .line 198
    .restart local p1
    .restart local p2
    :pswitch_4b
    check-cast p1, Lorg/dom4j/Text;

    .end local p1
    check-cast p2, Lorg/dom4j/Text;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)V

    goto :goto_30

    .line 203
    .restart local p1
    .restart local p2
    :pswitch_53
    check-cast p1, Lorg/dom4j/CDATA;

    .end local p1
    check-cast p2, Lorg/dom4j/CDATA;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)V

    goto :goto_30

    .line 208
    .restart local p1
    .restart local p2
    :pswitch_5b
    check-cast p1, Lorg/dom4j/Entity;

    .end local p1
    check-cast p2, Lorg/dom4j/Entity;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/Entity;Lorg/dom4j/Entity;)V

    goto :goto_30

    .line 213
    .restart local p1
    .restart local p2
    :pswitch_63
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    .line 214
    .end local p1
    check-cast p2, Lorg/dom4j/ProcessingInstruction;

    .line 213
    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/ProcessingInstruction;Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_30

    .line 219
    .restart local p1
    .restart local p2
    :pswitch_6b
    check-cast p1, Lorg/dom4j/Comment;

    .end local p1
    check-cast p2, Lorg/dom4j/Comment;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/CharacterData;Lorg/dom4j/CharacterData;)V

    goto :goto_30

    .line 224
    .restart local p1
    .restart local p2
    :pswitch_73
    check-cast p1, Lorg/dom4j/DocumentType;

    .end local p1
    check-cast p2, Lorg/dom4j/DocumentType;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/DocumentType;Lorg/dom4j/DocumentType;)V

    goto :goto_30

    .line 229
    .restart local p1
    .restart local p2
    :pswitch_7b
    check-cast p1, Lorg/dom4j/Namespace;

    .end local p1
    check-cast p2, Lorg/dom4j/Namespace;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/Namespace;Lorg/dom4j/Namespace;)V

    goto :goto_30

    .line 181
    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_33
        :pswitch_43
        :pswitch_4b
        :pswitch_53
        :pswitch_5b
        :pswitch_14
        :pswitch_63
        :pswitch_6b
        :pswitch_3b
        :pswitch_73
        :pswitch_14
        :pswitch_14
        :pswitch_7b
    .end packed-switch
.end method

.method public assertNodesEqual(Lorg/dom4j/ProcessingInstruction;Lorg/dom4j/ProcessingInstruction;)V
    .registers 6
    .parameter "n1"
    .parameter "n2"

    .prologue
    .line 145
    const-string v0, "PI targets equal"

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/dom4j/AbstractTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "PI text equal"

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/dom4j/AbstractTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public assertNodesEqual(Lorg/dom4j/QName;Lorg/dom4j/QName;)V
    .registers 6
    .parameter "n1"
    .parameter "n2"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "URIs equal for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 111
    invoke-virtual {p2}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p1}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {p2}, Lorg/dom4j/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v0, v1, v2}, Lorg/dom4j/AbstractTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "qualified names equal"

    invoke-virtual {p1}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-virtual {p2}, Lorg/dom4j/QName;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v0, v1, v2}, Lorg/dom4j/AbstractTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public assertNodesEqualContent(Lorg/dom4j/Branch;Lorg/dom4j/Branch;)V
    .registers 10
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 156
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v0

    .line 157
    .local v0, c1:I
    invoke-interface {p2}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v1

    .line 159
    .local v1, c2:I
    if-eq v0, v1, :cond_5a

    .line 160
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Content of: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/AbstractTestCase;->log(Ljava/lang/String;)V

    .line 161
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/dom4j/Branch;->content()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/AbstractTestCase;->log(Ljava/lang/String;)V

    .line 162
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Content of: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/AbstractTestCase;->log(Ljava/lang/String;)V

    .line 163
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/dom4j/Branch;->content()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/AbstractTestCase;->log(Ljava/lang/String;)V

    .line 166
    :cond_5a
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Branches have same number of children ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 167
    const-string v6, " for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 166
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lorg/dom4j/AbstractTestCase;->assertEquals(Ljava/lang/String;II)V

    .line 169
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8b
    if-lt v2, v0, :cond_8e

    .line 174
    return-void

    .line 170
    :cond_8e
    invoke-interface {p1, v2}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v3

    .line 171
    .local v3, n1:Lorg/dom4j/Node;
    invoke-interface {p2, v2}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v4

    .line 172
    .local v4, n2:Lorg/dom4j/Node;
    invoke-virtual {p0, v3, v4}, Lorg/dom4j/AbstractTestCase;->assertNodesEqual(Lorg/dom4j/Node;Lorg/dom4j/Node;)V

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_8b
.end method

.method protected getDocument()Lorg/dom4j/Document;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/dom4j/AbstractTestCase;->document:Lorg/dom4j/Document;

    return-object v0
.end method

.method protected getDocument(Ljava/lang/String;)Lorg/dom4j/Document;
    .registers 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/AbstractTestCase;->getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method protected getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;
    .registers 4
    .parameter "path"
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lorg/dom4j/AbstractTestCase;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method protected getFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .parameter "path"

    .prologue
    .line 55
    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getRootElement()Lorg/dom4j/Element;
    .registers 4

    .prologue
    .line 270
    iget-object v1, p0, Lorg/dom4j/AbstractTestCase;->document:Lorg/dom4j/Document;

    invoke-interface {v1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    .line 271
    .local v0, root:Lorg/dom4j/Element;
    const-string v2, "Document has root element"

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :goto_b
    invoke-static {v2, v1}, Lorg/dom4j/AbstractTestCase;->assertTrue(Ljava/lang/String;Z)V

    .line 273
    return-object v0

    .line 271
    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method protected setUp()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 242
    const-string v6, "javax.xml.parsers.SAXParserFactory"

    .line 243
    sget-object v5, Lorg/dom4j/AbstractTestCase;->class$0:Ljava/lang/Class;

    if-nez v5, :cond_e

    :try_start_6
    const-string v5, "org.apache.xerces.jaxp.SAXParserFactoryImpl"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_87

    move-result-object v5

    sput-object v5, Lorg/dom4j/AbstractTestCase;->class$0:Ljava/lang/Class;

    :cond_e
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 242
    invoke-static {v6, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    const-string v6, "javax.xml.transform.TransformerFactory"

    .line 245
    sget-object v5, Lorg/dom4j/AbstractTestCase;->class$1:Ljava/lang/Class;

    if-nez v5, :cond_23

    :try_start_1b
    const-string v5, "org.apache.xalan.processor.TransformerFactoryImpl"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_20} :catch_92

    move-result-object v5

    sput-object v5, Lorg/dom4j/AbstractTestCase;->class$1:Ljava/lang/Class;

    :cond_23
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-static {v6, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v5

    iput-object v5, p0, Lorg/dom4j/AbstractTestCase;->document:Lorg/dom4j/Document;

    .line 248
    iget-object v5, p0, Lorg/dom4j/AbstractTestCase;->document:Lorg/dom4j/Document;

    const-string v6, "root"

    invoke-interface {v5, v6}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 250
    .local v2, root:Lorg/dom4j/Element;
    const-string v5, "author"

    invoke-interface {v2, v5}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    const-string v6, "name"

    .line 251
    const-string v7, "James"

    .line 250
    invoke-interface {v5, v6, v7}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 251
    const-string v6, "location"

    const-string v7, "UK"

    invoke-interface {v5, v6, v7}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 252
    const-string v6, "James Strachan"

    .line 251
    invoke-interface {v5, v6}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 254
    .local v0, author1:Lorg/dom4j/Element;
    const-string v5, "url"

    invoke-interface {v0, v5}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 255
    .local v3, url1:Lorg/dom4j/Element;
    const-string v5, "http://sourceforge.net/users/jstrachan/"

    invoke-interface {v3, v5}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 257
    const-string v5, "author"

    invoke-interface {v2, v5}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    const-string v6, "name"

    const-string v7, "Bob"

    invoke-interface {v5, v6, v7}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 258
    const-string v6, "location"

    const-string v7, "Canada"

    invoke-interface {v5, v6, v7}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    const-string v6, "Bob McWhirter"

    invoke-interface {v5, v6}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 260
    .local v1, author2:Lorg/dom4j/Element;
    const-string v5, "url"

    invoke-interface {v1, v5}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 261
    .local v4, url2:Lorg/dom4j/Element;
    const-string v5, "http://sourceforge.net/users/werken/"

    invoke-interface {v4, v5}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 262
    return-void

    .line 243
    .end local v0           #author1:Lorg/dom4j/Element;
    .end local v1           #author2:Lorg/dom4j/Element;
    .end local v2           #root:Lorg/dom4j/Element;
    .end local v3           #url1:Lorg/dom4j/Element;
    .end local v4           #url2:Lorg/dom4j/Element;
    :catch_87
    move-exception v5

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 245
    :catch_92
    move-exception v5

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6
.end method
