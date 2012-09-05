.class public Lorg/dom4j/xpath/SelectSingleNodeTest;
.super Lorg/dom4j/AbstractTestCase;
.source "SelectSingleNodeTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 25
    sget-object v0, Lorg/dom4j/xpath/SelectSingleNodeTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.xpath.SelectSingleNodeTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/SelectSingleNodeTest;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 26
    return-void

    .line 25
    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testSelectSingleNode()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 31
    const-string v5, "/xml/test/jimBrain.xml"

    invoke-virtual {p0, v5}, Lorg/dom4j/xpath/SelectSingleNodeTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    .line 32
    .local v1, document:Lorg/dom4j/Document;
    const-string v5, "/properties/client/threadsafe"

    invoke-interface {v1, v5}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v2

    .line 33
    .local v2, node:Lorg/dom4j/Node;
    const-string v8, "Found a valid node"

    if-eqz v2, :cond_5a

    move v5, v6

    :goto_13
    invoke-static {v8, v5}, Lorg/dom4j/xpath/SelectSingleNodeTest;->assertTrue(Ljava/lang/String;Z)V

    .line 36
    const-string v5, "/properties/server"

    invoke-interface {v1, v5}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v4

    .line 35
    check-cast v4, Lorg/dom4j/Element;

    .line 37
    .local v4, server:Lorg/dom4j/Element;
    const-string v8, "Found a valid server"

    if-eqz v4, :cond_5c

    move v5, v6

    :goto_23
    invoke-static {v8, v5}, Lorg/dom4j/xpath/SelectSingleNodeTest;->assertTrue(Ljava/lang/String;Z)V

    .line 39
    invoke-interface {v1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    .line 40
    .local v3, root:Lorg/dom4j/Element;
    const-string v5, "/properties/server"

    invoke-interface {v3, v5}, Lorg/dom4j/Element;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v4

    .end local v4           #server:Lorg/dom4j/Element;
    check-cast v4, Lorg/dom4j/Element;

    .line 41
    .restart local v4       #server:Lorg/dom4j/Element;
    const-string v8, "Found a valid server"

    if-eqz v4, :cond_5e

    move v5, v6

    :goto_37
    invoke-static {v8, v5}, Lorg/dom4j/xpath/SelectSingleNodeTest;->assertTrue(Ljava/lang/String;Z)V

    .line 44
    const-string v5, "properties/server"

    invoke-interface {v1, v5}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v4

    .end local v4           #server:Lorg/dom4j/Element;
    check-cast v4, Lorg/dom4j/Element;

    .line 45
    .restart local v4       #server:Lorg/dom4j/Element;
    const-string v8, "Found a valid server"

    if-eqz v4, :cond_60

    move v5, v6

    :goto_47
    invoke-static {v8, v5}, Lorg/dom4j/xpath/SelectSingleNodeTest;->assertTrue(Ljava/lang/String;Z)V

    .line 48
    const-string v5, "db/connection"

    invoke-interface {v4, v5}, Lorg/dom4j/Element;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 49
    .local v0, connection:Lorg/dom4j/Element;
    const-string v5, "Found a valid connection"

    if-eqz v0, :cond_62

    :goto_56
    invoke-static {v5, v6}, Lorg/dom4j/xpath/SelectSingleNodeTest;->assertTrue(Ljava/lang/String;Z)V

    .line 50
    return-void

    .end local v0           #connection:Lorg/dom4j/Element;
    .end local v3           #root:Lorg/dom4j/Element;
    .end local v4           #server:Lorg/dom4j/Element;
    :cond_5a
    move v5, v7

    .line 33
    goto :goto_13

    .restart local v4       #server:Lorg/dom4j/Element;
    :cond_5c
    move v5, v7

    .line 37
    goto :goto_23

    .restart local v3       #root:Lorg/dom4j/Element;
    :cond_5e
    move v5, v7

    .line 41
    goto :goto_37

    :cond_60
    move v5, v7

    .line 45
    goto :goto_47

    .restart local v0       #connection:Lorg/dom4j/Element;
    :cond_62
    move v6, v7

    .line 49
    goto :goto_56
.end method

.method public testSteensBug()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    const-string v3, "/xml/schema/personal.xsd"

    invoke-virtual {p0, v3}, Lorg/dom4j/xpath/SelectSingleNodeTest;->getDocument(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 61
    .local v0, document:Lorg/dom4j/Document;
    const-string v2, "/xs:schema/xs:element[@name=\'person\']"

    .line 62
    .local v2, xpath:Ljava/lang/String;
    const-string v3, "element is null"

    invoke-interface {v0, v2}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/dom4j/xpath/SelectSingleNodeTest;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 66
    .local v1, root:Lorg/dom4j/Element;
    const-string v3, "element is null"

    invoke-interface {v1, v2}, Lorg/dom4j/Element;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/dom4j/xpath/SelectSingleNodeTest;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    return-void
.end method
