.class public Lorg/dom4j/xpath/BooleanTest;
.super Lorg/dom4j/AbstractTestCase;
.source "BooleanTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field protected static paths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".[name()=\'author\']"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 28
    const-string v2, ".[.=\'James Strachan\']"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".[name()=\'XXXX\']"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".[.=\'XXXX\']"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 29
    const-string v2, "name()=\'author\'"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "name()=\'XXXX\'"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".=\'James Strachan\'"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 30
    const-string v2, ".=\'XXXX\'"

    aput-object v2, v0, v1

    .line 27
    sput-object v0, Lorg/dom4j/xpath/BooleanTest;->paths:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 33
    sget-object v0, Lorg/dom4j/xpath/BooleanTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.xpath.BooleanTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/BooleanTest;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 34
    return-void

    .line 33
    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected testXPath(Ljava/lang/String;)V
    .registers 8
    .parameter "xpathExpression"

    .prologue
    .line 49
    invoke-static {p1}, Lorg/dom4j/DocumentHelper;->createXPath(Ljava/lang/String;)Lorg/dom4j/XPath;

    move-result-object v3

    .line 50
    .local v3, xpath:Lorg/dom4j/XPath;
    const-string v5, "No xpath object was created"

    if-eqz v3, :cond_31

    const/4 v4, 0x1

    :goto_9
    invoke-static {v5, v4}, Lorg/dom4j/xpath/BooleanTest;->assertTrue(Ljava/lang/String;Z)V

    .line 52
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Evaluating xpath: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/xpath/BooleanTest;->log(Ljava/lang/String;)V

    .line 54
    iget-object v4, p0, Lorg/dom4j/xpath/BooleanTest;->document:Lorg/dom4j/Document;

    const-string v5, "//author"

    invoke-interface {v4, v5}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, list:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_33

    .line 60
    return-void

    .line 50
    .end local v0           #iter:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/List;
    :cond_31
    const/4 v4, 0x0

    goto :goto_9

    .line 57
    .restart local v0       #iter:Ljava/util/Iterator;
    .restart local v1       #list:Ljava/util/List;
    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Node;

    .line 58
    .local v2, node:Lorg/dom4j/Node;
    invoke-virtual {p0, v2, v3}, Lorg/dom4j/xpath/BooleanTest;->testXPath(Lorg/dom4j/Node;Lorg/dom4j/XPath;)V

    goto :goto_2a
.end method

.method protected testXPath(Lorg/dom4j/Node;Lorg/dom4j/XPath;)V
    .registers 4
    .parameter "node"
    .parameter "xpath"

    .prologue
    .line 63
    invoke-interface {p2, p1}, Lorg/dom4j/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, list:Ljava/util/List;
    return-void
.end method

.method public testXPaths()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    sget-object v2, Lorg/dom4j/xpath/BooleanTest;->paths:[Ljava/lang/String;

    array-length v1, v2

    .line 41
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-lt v0, v1, :cond_7

    .line 44
    return-void

    .line 42
    :cond_7
    sget-object v2, Lorg/dom4j/xpath/BooleanTest;->paths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/BooleanTest;->testXPath(Ljava/lang/String;)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method
