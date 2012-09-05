.class public Lorg/dom4j/IndexedElementTest;
.super Lorg/dom4j/AbstractTestCase;
.source "IndexedElementTest.java"


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
    sget-object v0, Lorg/dom4j/IndexedElementTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.IndexedElementTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/IndexedElementTest;->class$0:Ljava/lang/Class;

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
.method protected createDocument()Lorg/dom4j/Document;
    .registers 2

    .prologue
    .line 71
    invoke-static {}, Lorg/dom4j/util/IndexedDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method protected testXPath(Ljava/lang/String;)V
    .registers 10
    .parameter "xpath"

    .prologue
    .line 36
    iget-object v6, p0, Lorg/dom4j/IndexedElementTest;->document:Lorg/dom4j/Document;

    invoke-interface {v6, p1}, Lorg/dom4j/Document;->selectNodes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 38
    .local v1, list:Ljava/util/List;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Searched path: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    .line 39
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Found        : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " result(s)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    .line 41
    const-string v6, "Results"

    invoke-virtual {p0, v6}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    .line 43
    if-nez v1, :cond_52

    .line 44
    const-string v6, "null"

    invoke-virtual {p0, v6}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    .line 65
    :goto_40
    const-string v6, "..........................................."

    invoke-virtual {p0, v6}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    .line 67
    const-string v7, "Found some results"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_91

    const/4 v6, 0x1

    :goto_4e
    invoke-static {v7, v6}, Lorg/dom4j/IndexedElementTest;->assertTrue(Ljava/lang/String;Z)V

    .line 68
    return-void

    .line 46
    :cond_52
    const-string v6, "["

    invoke-virtual {p0, v6}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, size:I
    :goto_5c
    if-lt v0, v4, :cond_64

    .line 62
    const-string v6, "]"

    invoke-virtual {p0, v6}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    goto :goto_40

    .line 49
    :cond_64
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 50
    .local v3, object:Ljava/lang/Object;
    const-string v5, "null"

    .line 52
    .local v5, text:Ljava/lang/String;
    instance-of v6, v3, Lorg/dom4j/Node;

    if-eqz v6, :cond_8a

    move-object v2, v3

    .line 53
    check-cast v2, Lorg/dom4j/Node;

    .line 54
    .local v2, node:Lorg/dom4j/Node;
    invoke-interface {v2}, Lorg/dom4j/Node;->asXML()Ljava/lang/String;

    move-result-object v5

    .line 59
    .end local v2           #node:Lorg/dom4j/Node;
    :cond_75
    :goto_75
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "    "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/dom4j/IndexedElementTest;->log(Ljava/lang/String;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 55
    :cond_8a
    if-eqz v3, :cond_75

    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_75

    .line 67
    .end local v0           #i:I
    .end local v3           #object:Ljava/lang/Object;
    .end local v4           #size:I
    .end local v5           #text:Ljava/lang/String;
    :cond_91
    const/4 v6, 0x0

    goto :goto_4e
.end method

.method public testXPaths()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    const-string v0, "//author"

    invoke-virtual {p0, v0}, Lorg/dom4j/IndexedElementTest;->testXPath(Ljava/lang/String;)V

    .line 31
    return-void
.end method
