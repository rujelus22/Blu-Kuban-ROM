.class public Lorg/dom4j/xpath/NamespaceTest;
.super Lorg/dom4j/AbstractTestCase;
.source "NamespaceTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field protected static paths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "namespace::*"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 30
    const-string v2, "/Template/Application1/namespace::*"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 31
    const-string v2, "/Template/Application1/namespace::xplt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "//namespace::*"

    aput-object v2, v0, v1

    .line 29
    sput-object v0, Lorg/dom4j/xpath/NamespaceTest;->paths:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 34
    sget-object v0, Lorg/dom4j/xpath/NamespaceTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.xpath.NamespaceTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/NamespaceTest;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 35
    return-void

    .line 34
    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected setUp()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 80
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "xml/testNamespaces.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/NamespaceTest;->document:Lorg/dom4j/Document;

    .line 81
    return-void
.end method

.method protected testXPath(Ljava/lang/String;)V
    .registers 11
    .parameter "xpathText"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 50
    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v4

    .line 51
    .local v4, xpath:Lorg/dom4j/XPath;
    iget-object v5, p0, Lorg/dom4j/xpath/NamespaceTest;->document:Lorg/dom4j/Document;

    invoke-interface {v4, v5}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 53
    .local v1, list:Ljava/util/List;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, "Searched path: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v8, " found: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 54
    const-string v8, " result(s)"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-virtual {p0, v5}, Lorg/dom4j/xpath/NamespaceTest;->log(Ljava/lang/String;)V

    .line 56
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3d

    .line 76
    return-void

    .line 57
    :cond_3d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 59
    .local v3, object:Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, "Found Result: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/xpath/NamespaceTest;->log(Ljava/lang/String;)V

    .line 61
    const-string v5, "Results should be Namespace objects"

    .line 62
    instance-of v8, v3, Lorg/dom4j/Namespace;

    .line 61
    invoke-static {v5, v8}, Lorg/dom4j/xpath/NamespaceTest;->assertTrue(Ljava/lang/String;Z)V

    move-object v2, v3

    .line 64
    check-cast v2, Lorg/dom4j/Namespace;

    .line 66
    .local v2, namespace:Lorg/dom4j/Namespace;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, "Parent node: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/dom4j/Namespace;->getParent()Lorg/dom4j/Element;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/dom4j/xpath/NamespaceTest;->log(Ljava/lang/String;)V

    .line 68
    const-string v5, "Results should support the parent relationship"

    .line 69
    invoke-virtual {v2}, Lorg/dom4j/Namespace;->supportsParent()Z

    move-result v8

    .line 68
    invoke-static {v5, v8}, Lorg/dom4j/xpath/NamespaceTest;->assertTrue(Ljava/lang/String;Z)V

    .line 71
    const-string v8, "Results should contain reference to the parent element"

    .line 72
    invoke-virtual {v2}, Lorg/dom4j/Namespace;->getParent()Lorg/dom4j/Element;

    move-result-object v5

    if-eqz v5, :cond_95

    move v5, v6

    .line 70
    :goto_85
    invoke-static {v8, v5}, Lorg/dom4j/xpath/NamespaceTest;->assertTrue(Ljava/lang/String;Z)V

    .line 73
    const-string v8, "Results should contain reference to the document"

    .line 74
    invoke-virtual {v2}, Lorg/dom4j/Namespace;->getDocument()Lorg/dom4j/Document;

    move-result-object v5

    if-eqz v5, :cond_97

    move v5, v6

    .line 73
    :goto_91
    invoke-static {v8, v5}, Lorg/dom4j/xpath/NamespaceTest;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_36

    :cond_95
    move v5, v7

    .line 72
    goto :goto_85

    :cond_97
    move v5, v7

    .line 74
    goto :goto_91
.end method

.method public testXPaths()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    sget-object v2, Lorg/dom4j/xpath/NamespaceTest;->paths:[Ljava/lang/String;

    array-length v1, v2

    .line 42
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-lt v0, v1, :cond_7

    .line 45
    return-void

    .line 43
    :cond_7
    sget-object v2, Lorg/dom4j/xpath/NamespaceTest;->paths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/NamespaceTest;->testXPath(Ljava/lang/String;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method
