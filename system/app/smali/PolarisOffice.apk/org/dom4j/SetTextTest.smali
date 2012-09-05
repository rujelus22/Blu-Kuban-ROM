.class public Lorg/dom4j/SetTextTest;
.super Lorg/dom4j/AbstractTestCase;
.source "SetTextTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 19
    sget-object v0, Lorg/dom4j/SetTextTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.SetTextTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/SetTextTest;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 20
    return-void

    .line 19
    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testSetText1()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    const-string v0, "newURL"

    .line 32
    .local v0, newURL:Ljava/lang/String;
    iget-object v3, p0, Lorg/dom4j/SetTextTest;->document:Lorg/dom4j/Document;

    const-string v4, "//root/author[1]/url"

    invoke-interface {v3, v4}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v2

    .line 33
    .local v2, urlNode:Lorg/dom4j/Node;
    invoke-interface {v2, v0}, Lorg/dom4j/Node;->setText(Ljava/lang/String;)V

    .line 35
    invoke-interface {v2}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/dom4j/SetTextTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    instance-of v3, v2, Lorg/dom4j/Element;

    invoke-static {v3}, Lorg/dom4j/SetTextTest;->assertTrue(Z)V

    move-object v1, v2

    .line 38
    check-cast v1, Lorg/dom4j/Element;

    .line 39
    .local v1, urlElement:Lorg/dom4j/Element;
    const/4 v3, 0x0

    invoke-interface {v1}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lorg/dom4j/SetTextTest;->assertEquals(II)V

    .line 40
    return-void
.end method

.method public testSetText2()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    const-string v1, "Strachem James"

    .line 45
    .local v1, newName:Ljava/lang/String;
    iget-object v3, p0, Lorg/dom4j/SetTextTest;->document:Lorg/dom4j/Document;

    const-string v4, "//root/author[1]"

    invoke-interface {v3, v4}, Lorg/dom4j/Document;->selectSingleNode(Ljava/lang/String;)Lorg/dom4j/Node;

    move-result-object v0

    .line 46
    .local v0, authorNode:Lorg/dom4j/Node;
    invoke-interface {v0, v1}, Lorg/dom4j/Node;->setText(Ljava/lang/String;)V

    .line 48
    invoke-interface {v0}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/dom4j/SetTextTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    instance-of v3, v0, Lorg/dom4j/Element;

    invoke-static {v3}, Lorg/dom4j/SetTextTest;->assertTrue(Z)V

    move-object v2, v0

    .line 51
    check-cast v2, Lorg/dom4j/Element;

    .line 52
    .local v2, urlElement:Lorg/dom4j/Element;
    const/4 v3, 0x1

    invoke-interface {v2}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lorg/dom4j/SetTextTest;->assertEquals(II)V

    .line 53
    return-void
.end method
