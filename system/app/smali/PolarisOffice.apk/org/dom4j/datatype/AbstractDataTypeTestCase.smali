.class public Lorg/dom4j/datatype/AbstractDataTypeTestCase;
.super Lorg/dom4j/AbstractTestCase;
.source "AbstractDataTypeTestCase.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected testDataType(Lorg/dom4j/Node;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 6
    .parameter "node"
    .parameter "data"
    .parameter "type"

    .prologue
    .line 50
    const-string v1, "Data object is not null"

    if-eqz p2, :cond_39

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v0}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->assertTrue(Ljava/lang/String;Z)V

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Data object is of the correct type. Expected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " and found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 52
    invoke-static {v0, v1}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->assertTrue(Ljava/lang/String;Z)V

    .line 55
    return-void

    .line 50
    :cond_39
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected testNodes(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 11
    .parameter "xpath"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 29
    iget-object v5, p0, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->document:Lorg/dom4j/Document;

    invoke-interface {v5, p1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 31
    .local v3, list:Ljava/util/List;
    const-string v7, "Results are not empty"

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1e

    move v5, v6

    :goto_10
    invoke-static {v7, v5}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->assertTrue(Ljava/lang/String;Z)V

    .line 33
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_20

    .line 47
    return-void

    .line 31
    .end local v2           #iter:Ljava/util/Iterator;
    :cond_1e
    const/4 v5, 0x1

    goto :goto_10

    .line 34
    .restart local v2       #iter:Ljava/util/Iterator;
    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/dom4j/Node;

    .line 36
    .local v4, node:Lorg/dom4j/Node;
    instance-of v5, v4, Lorg/dom4j/Element;

    if-eqz v5, :cond_35

    move-object v1, v4

    .line 37
    check-cast v1, Lorg/dom4j/Element;

    .line 38
    .local v1, element:Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->getData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v1, v5, p2}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->testDataType(Lorg/dom4j/Node;Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_17

    .line 39
    .end local v1           #element:Lorg/dom4j/Element;
    :cond_35
    instance-of v5, v4, Lorg/dom4j/Attribute;

    if-eqz v5, :cond_44

    move-object v0, v4

    .line 40
    check-cast v0, Lorg/dom4j/Attribute;

    .line 41
    .local v0, attribute:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v0, v5, p2}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->testDataType(Lorg/dom4j/Node;Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_17

    .line 43
    .end local v0           #attribute:Lorg/dom4j/Attribute;
    :cond_44
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v7, "Did not find an attribute or element: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_17
.end method
