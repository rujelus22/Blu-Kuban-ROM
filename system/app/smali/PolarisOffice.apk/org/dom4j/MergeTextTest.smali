.class public Lorg/dom4j/MergeTextTest;
.super Lorg/dom4j/AbstractTestCase;
.source "MergeTextTest.java"


# static fields
.field private static final INPUT_XML_FILE:Ljava/lang/String; = "/xml/test/mergetext.xml"

.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method private checkNoAdjacent(Lorg/dom4j/Element;)V
    .registers 7
    .parameter "parent"

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, prev:Lorg/dom4j/Node;
    invoke-interface {p1}, Lorg/dom4j/Element;->nodeIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 52
    .local v0, iter:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_c

    .line 64
    return-void

    .line 53
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Node;

    .line 55
    .local v1, n:Lorg/dom4j/Node;
    instance-of v3, v1, Lorg/dom4j/Text;

    if-eqz v3, :cond_40

    if-eqz v2, :cond_40

    instance-of v3, v2, Lorg/dom4j/Text;

    if-eqz v3, :cond_40

    .line 56
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Node: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " is text and so is its "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 57
    const-string v4, "preceding sibling: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/dom4j/MergeTextTest;->fail(Ljava/lang/String;)V

    .line 62
    :cond_3e
    :goto_3e
    move-object v2, v1

    goto :goto_5

    .line 58
    :cond_40
    instance-of v3, v1, Lorg/dom4j/Element;

    if-eqz v3, :cond_3e

    move-object v3, v1

    .line 59
    check-cast v3, Lorg/dom4j/Element;

    invoke-direct {p0, v3}, Lorg/dom4j/MergeTextTest;->checkNoAdjacent(Lorg/dom4j/Element;)V

    goto :goto_3e
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 27
    sget-object v0, Lorg/dom4j/MergeTextTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.MergeTextTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/MergeTextTest;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 28
    return-void

    .line 27
    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testNoAdjacentText()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Lorg/dom4j/io/SAXReader;

    invoke-direct {v1}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 37
    .local v1, reader:Lorg/dom4j/io/SAXReader;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/dom4j/io/SAXReader;->setMergeAdjacentText(Z)V

    .line 39
    const-string v2, "/xml/test/mergetext.xml"

    invoke-virtual {p0, v2, v1}, Lorg/dom4j/MergeTextTest;->getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 41
    .local v0, document:Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/dom4j/MergeTextTest;->checkNoAdjacent(Lorg/dom4j/Element;)V

    .line 42
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "No adjacent Text nodes in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/dom4j/MergeTextTest;->log(Ljava/lang/String;)V

    .line 43
    return-void
.end method
