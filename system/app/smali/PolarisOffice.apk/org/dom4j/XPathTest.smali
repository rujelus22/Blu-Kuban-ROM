.class public Lorg/dom4j/XPathTest;
.super Lorg/dom4j/AbstractTestCase;
.source "XPathTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field protected static paths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 24
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    const-string v2, "."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 26
    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 27
    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 28
    const-string v2, "/."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 29
    const-string v2, "/*"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 30
    const-string v2, "/node()"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 31
    const-string v2, "/child::node()"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 32
    const-string v2, "/self::node()"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 33
    const-string v2, "root"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 34
    const-string v2, "/root"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 35
    const-string v2, "/root/author"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 36
    const-string v2, "text()"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 37
    const-string v2, "//author"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 38
    const-string v2, "//author/text()"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 39
    const-string v2, "//@location"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 40
    const-string v2, "//attribute::*"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 41
    const-string v2, "//namespace::*"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 42
    const-string v2, "normalize-space(/root)"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 43
    const-string v2, "//author[@location]"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 44
    const-string v2, "//author[@location=\'UK\']"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 45
    const-string v2, "root|author"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 46
    const-string v2, "//*[.=\'James Strachan\']"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 47
    const-string v2, "//root/author[1]"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 48
    const-string v2, "normalize-space(/root/author)"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 49
    const-string v2, "normalize-space(\' a  b  c  d \')"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 50
    const-string v2, "//root|//author[1]|//author[2]"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 51
    const-string v2, "//root/author[2]"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 52
    const-string v2, "//root/author[3]"

    aput-object v2, v0, v1

    .line 24
    sput-object v0, Lorg/dom4j/XPathTest;->paths:[Ljava/lang/String;

    .line 23
    return-void
.end method

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
    .line 55
    sget-object v0, Lorg/dom4j/XPathTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.XPathTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/XPathTest;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 56
    return-void

    .line 55
    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testBooleanValueOf()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    const-string v2, "<root><foo>blah</foo></root>"

    invoke-static {v2}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 99
    .local v0, doc:Lorg/dom4j/Document;
    new-instance v1, Lorg/dom4j/xpath/DefaultXPath;

    const-string v2, "//root"

    invoke-direct {v1, v2}, Lorg/dom4j/xpath/DefaultXPath;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, path:Lorg/dom4j/XPath;
    invoke-interface {v1, v0}, Lorg/dom4j/XPath;->booleanValueOf(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/dom4j/XPathTest;->assertTrue(Z)V

    .line 102
    new-instance v1, Lorg/dom4j/xpath/DefaultXPath;

    .end local v1           #path:Lorg/dom4j/XPath;
    const-string v2, "//root2"

    invoke-direct {v1, v2}, Lorg/dom4j/xpath/DefaultXPath;-><init>(Ljava/lang/String;)V

    .line 103
    .restart local v1       #path:Lorg/dom4j/XPath;
    invoke-interface {v1, v0}, Lorg/dom4j/XPath;->booleanValueOf(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/dom4j/XPathTest;->assertFalse(Z)V

    .line 104
    return-void
.end method

.method public testBug1116471()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    const-string v5, "<a><b>Water T &amp; D-46816</b></a>"

    .line 62
    .local v5, xml:Ljava/lang/String;
    const-string v1, "Water T & D-46816"

    .line 64
    .local v1, expected:Ljava/lang/String;
    invoke-static {v5}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 65
    .local v0, doc:Lorg/dom4j/Document;
    const-string v6, "string(a/b[1])"

    invoke-interface {v0, v6}, Lorg/dom4j/Document;->selectObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 67
    .local v3, result:Ljava/lang/String;
    const-string v6, "xpath result not correct"

    invoke-static {v6, v1, v3}, Lorg/dom4j/XPathTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v6, "a/b"

    invoke-interface {v0, v6}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v2

    .line 70
    .local v2, node:Lorg/dom4j/Node;
    invoke-interface {v2}, Lorg/dom4j/Node;->getStringValue()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, result2:Ljava/lang/String;
    const-string v6, "xpath result not correct"

    invoke-static {v6, v1, v4}, Lorg/dom4j/XPathTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public testBug857704()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    const-string v1, "<foo xmlns:bar=\'http://blort\'/>"

    invoke-static {v1}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    .line 93
    .local v0, doc:Lorg/dom4j/Document;
    const-string v1, "//*[preceding-sibling::*]"

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    .line 94
    return-void
.end method

.method public testCreateXPathBug()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lorg/dom4j/tree/DefaultElement;

    const-string v2, "foo"

    invoke-direct {v0, v2}, Lorg/dom4j/tree/DefaultElement;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, element:Lorg/dom4j/Element;
    const-string v2, "//bar"

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v1

    .line 87
    .local v1, xpath:Lorg/dom4j/XPath;
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "created a valid XPath: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    :goto_1f
    invoke-static {v2}, Lorg/dom4j/XPathTest;->assertTrue(Z)V

    .line 88
    return-void

    .line 87
    :cond_23
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method protected testXPath(Ljava/lang/String;)V
    .registers 11
    .parameter "xpathExpression"

    .prologue
    .line 109
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Searched path: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/dom4j/XPathTest;->log(Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v6

    .line 113
    .local v6, xpath:Lorg/dom4j/XPath;
    iget-object v7, p0, Lorg/dom4j/XPathTest;->document:Lorg/dom4j/Document;

    invoke-interface {v6, v7}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, list:Ljava/util/List;
    if-nez v1, :cond_29

    .line 116
    const-string v7, "null"

    invoke-virtual {p0, v7}, Lorg/dom4j/XPathTest;->log(Ljava/lang/String;)V

    .line 139
    :goto_23
    const-string v7, "..........................................."

    invoke-virtual {p0, v7}, Lorg/dom4j/XPathTest;->log(Ljava/lang/String;)V

    .line 140
    return-void

    .line 118
    :cond_29
    const-string v7, "["

    invoke-virtual {p0, v7}, Lorg/dom4j/XPathTest;->log(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, size:I
    :goto_33
    if-lt v0, v4, :cond_3b

    .line 136
    const-string v7, "]"

    invoke-virtual {p0, v7}, Lorg/dom4j/XPathTest;->log(Ljava/lang/String;)V

    goto :goto_23

    .line 121
    :cond_3b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 123
    .local v3, object:Ljava/lang/Object;
    const-string v5, "null"

    .line 125
    .local v5, text:Ljava/lang/String;
    instance-of v7, v3, Lorg/dom4j/Node;

    if-eqz v7, :cond_61

    move-object v2, v3

    .line 126
    check-cast v2, Lorg/dom4j/Node;

    .line 128
    .local v2, node:Lorg/dom4j/Node;
    invoke-interface {v2}, Lorg/dom4j/Node;->asXML()Ljava/lang/String;

    move-result-object v5

    .line 133
    .end local v2           #node:Lorg/dom4j/Node;
    :cond_4c
    :goto_4c
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "    "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/dom4j/XPathTest;->log(Ljava/lang/String;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 129
    :cond_61
    if-eqz v3, :cond_4c

    .line 130
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4c
.end method

.method public testXPaths()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v2, Lorg/dom4j/XPathTest;->paths:[Ljava/lang/String;

    array-length v1, v2

    .line 78
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-lt v0, v1, :cond_7

    .line 81
    return-void

    .line 79
    :cond_7
    sget-object v2, Lorg/dom4j/XPathTest;->paths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/XPathTest;->testXPath(Ljava/lang/String;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method
