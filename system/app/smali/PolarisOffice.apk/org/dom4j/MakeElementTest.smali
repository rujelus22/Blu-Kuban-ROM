.class public Lorg/dom4j/MakeElementTest;
.super Lorg/dom4j/AbstractTestCase;
.source "MakeElementTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 20
    sget-object v0, Lorg/dom4j/MakeElementTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.MakeElementTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/MakeElementTest;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 21
    return-void

    .line 20
    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testMakeElement()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 26
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v3

    .line 28
    .local v3, doc:Lorg/dom4j/Document;
    const-string v7, "a/b/c"

    invoke-static {v3, v7}, Lorg/dom4j/DocumentHelper;->makeElement(Lorg/dom4j/Branch;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 29
    .local v1, c:Lorg/dom4j/Element;
    const-string v10, "Should return a valid element"

    if-eqz v1, :cond_66

    move v7, v8

    :goto_11
    invoke-static {v10, v7}, Lorg/dom4j/MakeElementTest;->assertTrue(Ljava/lang/String;Z)V

    .line 31
    const-string v7, "a/b/c"

    invoke-static {v3, v7}, Lorg/dom4j/DocumentHelper;->makeElement(Lorg/dom4j/Branch;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 33
    .local v2, c2:Lorg/dom4j/Element;
    const-string v10, "Found same element again"

    if-ne v1, v2, :cond_68

    move v7, v8

    :goto_1f
    invoke-static {v10, v7}, Lorg/dom4j/MakeElementTest;->assertTrue(Ljava/lang/String;Z)V

    .line 35
    const-string v7, "x"

    const-string v10, "123"

    invoke-interface {v1, v7, v10}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 37
    const-string v7, "/a/b/c[@x=\'123\']"

    invoke-interface {v3, v7}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v6

    .line 39
    .local v6, found:Lorg/dom4j/Node;
    const-string v7, "Found same node via XPath"

    invoke-static {v7, v1, v6}, Lorg/dom4j/MakeElementTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    invoke-interface {v1}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 43
    .local v0, b:Lorg/dom4j/Element;
    const-string v7, "c/d/e"

    invoke-static {v0, v7}, Lorg/dom4j/DocumentHelper;->makeElement(Lorg/dom4j/Branch;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 45
    .local v4, e:Lorg/dom4j/Element;
    const-string v10, "Should return a valid element"

    if-eqz v4, :cond_6a

    move v7, v8

    :goto_43
    invoke-static {v10, v7}, Lorg/dom4j/MakeElementTest;->assertTrue(Ljava/lang/String;Z)V

    .line 47
    const-string v7, "c/d/e"

    invoke-static {v0, v7}, Lorg/dom4j/DocumentHelper;->makeElement(Lorg/dom4j/Branch;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 49
    .local v5, e2:Lorg/dom4j/Element;
    const-string v7, "Found same element again"

    if-ne v4, v5, :cond_6c

    :goto_50
    invoke-static {v7, v8}, Lorg/dom4j/MakeElementTest;->assertTrue(Ljava/lang/String;Z)V

    .line 51
    const-string v7, "y"

    const-string v8, "456"

    invoke-interface {v4, v7, v8}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 53
    const-string v7, "c/d/e[@y=\'456\']"

    invoke-interface {v0, v7}, Lorg/dom4j/Element;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v6

    .line 55
    const-string v7, "Found same node via XPath"

    invoke-static {v7, v4, v6}, Lorg/dom4j/MakeElementTest;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    return-void

    .end local v0           #b:Lorg/dom4j/Element;
    .end local v2           #c2:Lorg/dom4j/Element;
    .end local v4           #e:Lorg/dom4j/Element;
    .end local v5           #e2:Lorg/dom4j/Element;
    .end local v6           #found:Lorg/dom4j/Node;
    :cond_66
    move v7, v9

    .line 29
    goto :goto_11

    .restart local v2       #c2:Lorg/dom4j/Element;
    :cond_68
    move v7, v9

    .line 33
    goto :goto_1f

    .restart local v0       #b:Lorg/dom4j/Element;
    .restart local v4       #e:Lorg/dom4j/Element;
    .restart local v6       #found:Lorg/dom4j/Node;
    :cond_6a
    move v7, v9

    .line 45
    goto :goto_43

    .restart local v5       #e2:Lorg/dom4j/Element;
    :cond_6c
    move v8, v9

    .line 49
    goto :goto_50
.end method

.method public testMakeQualifiedElement()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 59
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v3

    .line 60
    .local v3, doc:Lorg/dom4j/Document;
    const-string v5, "root"

    invoke-interface {v3, v5}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 61
    .local v4, root:Lorg/dom4j/Element;
    const-string v5, ""

    const-string v8, "defaultURI"

    invoke-interface {v4, v5, v8}, Lorg/dom4j/Element;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 62
    const-string v5, "foo"

    const-string v8, "fooURI"

    invoke-interface {v4, v5, v8}, Lorg/dom4j/Element;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 63
    const-string v5, "bar"

    const-string v8, "barURI"

    invoke-interface {v4, v5, v8}, Lorg/dom4j/Element;->addNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 65
    const-string v5, "root/foo:b/bar:c"

    invoke-static {v3, v5}, Lorg/dom4j/DocumentHelper;->makeElement(Lorg/dom4j/Branch;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 66
    .local v1, c:Lorg/dom4j/Element;
    const-string v8, "Should return a valid element"

    if-eqz v1, :cond_69

    move v5, v6

    :goto_2c
    invoke-static {v8, v5}, Lorg/dom4j/MakeElementTest;->assertTrue(Ljava/lang/String;Z)V

    .line 68
    const-string v5, "c has a valid namespace"

    const-string v8, "barURI"

    invoke-interface {v1}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lorg/dom4j/MakeElementTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-interface {v1}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    .line 72
    .local v0, b:Lorg/dom4j/Element;
    const-string v5, "b has a valid namespace"

    const-string v8, "fooURI"

    invoke-interface {v0}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lorg/dom4j/MakeElementTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, "Created: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/MakeElementTest;->log(Ljava/lang/String;)V

    .line 76
    const-string v5, "root/foo:b/bar:c"

    invoke-static {v3, v5}, Lorg/dom4j/DocumentHelper;->makeElement(Lorg/dom4j/Branch;Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 77
    .local v2, c2:Lorg/dom4j/Element;
    const-string v5, "Found same element again"

    if-ne v1, v2, :cond_6b

    :goto_65
    invoke-static {v5, v6}, Lorg/dom4j/MakeElementTest;->assertTrue(Ljava/lang/String;Z)V

    .line 78
    return-void

    .end local v0           #b:Lorg/dom4j/Element;
    .end local v2           #c2:Lorg/dom4j/Element;
    :cond_69
    move v5, v7

    .line 66
    goto :goto_2c

    .restart local v0       #b:Lorg/dom4j/Element;
    .restart local v2       #c2:Lorg/dom4j/Element;
    :cond_6b
    move v6, v7

    .line 77
    goto :goto_65
.end method
