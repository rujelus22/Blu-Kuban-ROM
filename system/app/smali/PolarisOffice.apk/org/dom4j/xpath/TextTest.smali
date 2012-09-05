.class public Lorg/dom4j/xpath/TextTest;
.super Lorg/dom4j/AbstractTestCase;
.source "TextTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field protected static paths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text()"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "//author/text()"

    aput-object v2, v0, v1

    sput-object v0, Lorg/dom4j/xpath/TextTest;->paths:[Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 28
    sget-object v0, Lorg/dom4j/xpath/TextTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.xpath.TextTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/xpath/TextTest;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 29
    return-void

    .line 28
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
    .registers 10
    .parameter "xpath"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 44
    iget-object v4, p0, Lorg/dom4j/xpath/TextTest;->document:Lorg/dom4j/Document;

    invoke-interface {v4, p1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 46
    .local v1, list:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_13

    .line 63
    return-void

    .line 47
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 49
    .local v2, object:Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v7, "Found Result: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/dom4j/xpath/TextTest;->log(Ljava/lang/String;)V

    .line 51
    const-string v4, "Results not Text objects"

    instance-of v7, v2, Lorg/dom4j/Text;

    invoke-static {v4, v7}, Lorg/dom4j/xpath/TextTest;->assertTrue(Ljava/lang/String;Z)V

    move-object v3, v2

    .line 53
    check-cast v3, Lorg/dom4j/Text;

    .line 55
    .local v3, text:Lorg/dom4j/Text;
    const-string v4, "Results should support the parent relationship"

    .line 56
    invoke-interface {v3}, Lorg/dom4j/Text;->supportsParent()Z

    move-result v7

    .line 55
    invoke-static {v4, v7}, Lorg/dom4j/xpath/TextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 58
    const-string v7, "Results should contain reference to the parent element"

    .line 59
    invoke-interface {v3}, Lorg/dom4j/Text;->getParent()Lorg/dom4j/Element;

    move-result-object v4

    if-eqz v4, :cond_55

    move v4, v5

    .line 57
    :goto_45
    invoke-static {v7, v4}, Lorg/dom4j/xpath/TextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 60
    const-string v7, "Results should not reference to the owning document"

    .line 61
    invoke-interface {v3}, Lorg/dom4j/Text;->getDocument()Lorg/dom4j/Document;

    move-result-object v4

    if-eqz v4, :cond_57

    move v4, v5

    .line 60
    :goto_51
    invoke-static {v7, v4}, Lorg/dom4j/xpath/TextTest;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_c

    :cond_55
    move v4, v6

    .line 59
    goto :goto_45

    :cond_57
    move v4, v6

    .line 61
    goto :goto_51
.end method

.method public testXPaths()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    sget-object v2, Lorg/dom4j/xpath/TextTest;->paths:[Ljava/lang/String;

    array-length v1, v2

    .line 36
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-lt v0, v1, :cond_7

    .line 39
    return-void

    .line 37
    :cond_7
    sget-object v2, Lorg/dom4j/xpath/TextTest;->paths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/TextTest;->testXPath(Ljava/lang/String;)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method
