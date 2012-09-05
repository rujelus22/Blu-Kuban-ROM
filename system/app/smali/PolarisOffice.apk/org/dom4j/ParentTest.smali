.class public Lorg/dom4j/ParentTest;
.super Lorg/dom4j/AbstractTestCase;
.source "ParentTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 24
    sget-object v0, Lorg/dom4j/ParentTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.ParentTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/ParentTest;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 25
    return-void

    .line 24
    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lorg/dom4j/ParentTest;->document:Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/ParentTest;->testParentRelationship(Lorg/dom4j/Element;)V

    .line 31
    return-void
.end method

.method public testFragment()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    .line 35
    .local v0, factory:Lorg/dom4j/DocumentFactory;
    const-string v4, "root"

    invoke-virtual {v0, v4}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 36
    .local v2, root:Lorg/dom4j/Element;
    const-string v4, "child"

    invoke-interface {v2, v4}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 37
    .local v1, first:Lorg/dom4j/Element;
    const-string v4, "child"

    invoke-interface {v2, v4}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 39
    .local v3, second:Lorg/dom4j/Element;
    invoke-virtual {p0, v2, v1}, Lorg/dom4j/ParentTest;->testXPathNode(Lorg/dom4j/Element;Lorg/dom4j/Node;)V

    .line 40
    invoke-virtual {p0, v2, v3}, Lorg/dom4j/ParentTest;->testXPathNode(Lorg/dom4j/Element;Lorg/dom4j/Node;)V

    .line 41
    return-void
.end method

.method protected testParentRelationship(Lorg/dom4j/Element;)V
    .registers 3
    .parameter "element"

    .prologue
    .line 58
    invoke-interface {p1}, Lorg/dom4j/Element;->attributes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/ParentTest;->testParentRelationship(Lorg/dom4j/Element;Ljava/util/List;)V

    .line 59
    invoke-interface {p1}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/ParentTest;->testParentRelationship(Lorg/dom4j/Element;Ljava/util/List;)V

    .line 60
    return-void
.end method

.method protected testParentRelationship(Lorg/dom4j/Element;Ljava/util/List;)V
    .registers 6
    .parameter "parent"
    .parameter "content"

    .prologue
    .line 46
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 55
    return-void

    .line 47
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 49
    .local v1, object:Ljava/lang/Object;
    instance-of v2, v1, Lorg/dom4j/Element;

    if-eqz v2, :cond_19

    move-object v2, v1

    .line 50
    check-cast v2, Lorg/dom4j/Element;

    invoke-virtual {p0, v2}, Lorg/dom4j/ParentTest;->testParentRelationship(Lorg/dom4j/Element;)V

    .line 53
    :cond_19
    check-cast v1, Lorg/dom4j/Node;

    .end local v1           #object:Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Lorg/dom4j/ParentTest;->testXPathNode(Lorg/dom4j/Element;Lorg/dom4j/Node;)V

    goto :goto_4
.end method

.method protected testXPathNode(Lorg/dom4j/Element;Lorg/dom4j/Node;)V
    .registers 8
    .parameter "parent"
    .parameter "node"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-interface {p2}, Lorg/dom4j/Node;->supportsParent()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 64
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Node: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/ParentTest;->log(Ljava/lang/String;)V

    .line 65
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Parent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/ParentTest;->log(Ljava/lang/String;)V

    .line 66
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "getParent(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/ParentTest;->log(Ljava/lang/String;)V

    .line 68
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "getParent() returns parent for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-interface {p2}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v4

    .line 68
    if-ne v4, p1, :cond_5b

    :goto_57
    invoke-static {v3, v1}, Lorg/dom4j/ParentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 78
    :goto_5a
    return-void

    :cond_5b
    move v1, v2

    .line 68
    goto :goto_57

    .line 72
    :cond_5d
    invoke-interface {p2, p1}, Lorg/dom4j/Node;->asXPathResult(Lorg/dom4j/Element;)Lorg/dom4j/Node;

    move-result-object v0

    .line 73
    .local v0, xpathNode:Lorg/dom4j/Node;
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "XPath Node supports parent for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-interface {v0}, Lorg/dom4j/Node;->supportsParent()Z

    move-result v4

    .line 73
    invoke-static {v3, v4}, Lorg/dom4j/ParentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 75
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "getParent() returns parent for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-interface {v0}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v4

    if-ne v4, p1, :cond_90

    .line 75
    :goto_8c
    invoke-static {v3, v1}, Lorg/dom4j/ParentTest;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_5a

    :cond_90
    move v1, v2

    .line 76
    goto :goto_8c
.end method
