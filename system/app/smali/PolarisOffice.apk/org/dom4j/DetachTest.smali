.class public Lorg/dom4j/DetachTest;
.super Lorg/dom4j/AbstractTestCase;
.source "DetachTest.java"


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
    sget-object v0, Lorg/dom4j/DetachTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.DetachTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/DetachTest;->class$0:Ljava/lang/Class;

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
.method public testRoot()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 26
    iget-object v3, p0, Lorg/dom4j/DetachTest;->document:Lorg/dom4j/Document;

    const-string v6, "doc1"

    invoke-interface {v3, v6}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 28
    iget-object v3, p0, Lorg/dom4j/DetachTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    .line 29
    .local v2, root:Lorg/dom4j/Element;
    const-string v6, "Has root element"

    if-eqz v2, :cond_b5

    move v3, v4

    :goto_14
    invoke-static {v6, v3}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 30
    const-string v6, "Root has no parent"

    invoke-interface {v2}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v3

    if-nez v3, :cond_b8

    move v3, v4

    :goto_20
    invoke-static {v6, v3}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 32
    invoke-interface {v2}, Lorg/dom4j/Element;->detach()Lorg/dom4j/Node;

    .line 34
    const-string v6, "Detached root now has no document"

    .line 35
    invoke-interface {v2}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v3

    if-nez v3, :cond_bb

    move v3, v4

    .line 34
    :goto_2f
    invoke-static {v6, v3}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 36
    const-string v6, "Original doc now has no root element"

    .line 37
    iget-object v3, p0, Lorg/dom4j/DetachTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    .line 36
    if-nez v3, :cond_be

    move v3, v4

    :goto_3d
    invoke-static {v6, v3}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 39
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 40
    .local v0, doc2:Lorg/dom4j/Document;
    const-string v3, "doc2"

    invoke-interface {v0, v3}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 42
    const-string v6, "Doc2 has no root element"

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    if-nez v3, :cond_c1

    move v3, v4

    :goto_52
    invoke-static {v6, v3}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 44
    invoke-interface {v0, v2}, Lorg/dom4j/Document;->setRootElement(Lorg/dom4j/Element;)V

    .line 46
    const-string v6, "Doc2 has now has root element"

    .line 47
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    if-ne v3, v2, :cond_c3

    move v3, v4

    .line 46
    :goto_61
    invoke-static {v6, v3}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 48
    const-string v6, "Root element now has document"

    invoke-interface {v2}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v3

    if-ne v3, v0, :cond_c5

    move v3, v4

    :goto_6d
    invoke-static {v6, v3}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 50
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v1

    .line 51
    .local v1, doc3:Lorg/dom4j/Document;
    const-string v3, "doc3"

    invoke-interface {v1, v3}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 52
    const-string v3, "foo"

    invoke-interface {v1, v3}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 54
    const-string v6, "Doc3 has root element"

    invoke-interface {v1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    if-eqz v3, :cond_c7

    move v3, v4

    :goto_87
    invoke-static {v6, v3}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 56
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    .line 57
    invoke-interface {v2}, Lorg/dom4j/Element;->detach()Lorg/dom4j/Node;

    .line 58
    invoke-interface {v1, v2}, Lorg/dom4j/Document;->setRootElement(Lorg/dom4j/Element;)V

    .line 60
    const-string v6, "Doc3 now has root element"

    invoke-interface {v1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    if-ne v3, v2, :cond_c9

    move v3, v4

    :goto_9d
    invoke-static {v6, v3}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 61
    const-string v3, "Root element now has a document"

    invoke-interface {v2}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v6

    invoke-static {v3, v6, v1}, Lorg/dom4j/DetachTest;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    const-string v3, "Doc2 has no root element"

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v6

    if-nez v6, :cond_cb

    :goto_b1
    invoke-static {v3, v4}, Lorg/dom4j/DetachTest;->assertTrue(Ljava/lang/String;Z)V

    .line 63
    return-void

    .end local v0           #doc2:Lorg/dom4j/Document;
    .end local v1           #doc3:Lorg/dom4j/Document;
    :cond_b5
    move v3, v5

    .line 29
    goto/16 :goto_14

    :cond_b8
    move v3, v5

    .line 30
    goto/16 :goto_20

    :cond_bb
    move v3, v5

    .line 35
    goto/16 :goto_2f

    :cond_be
    move v3, v5

    .line 36
    goto/16 :goto_3d

    .restart local v0       #doc2:Lorg/dom4j/Document;
    :cond_c1
    move v3, v5

    .line 42
    goto :goto_52

    :cond_c3
    move v3, v5

    .line 47
    goto :goto_61

    :cond_c5
    move v3, v5

    .line 48
    goto :goto_6d

    .restart local v1       #doc3:Lorg/dom4j/Document;
    :cond_c7
    move v3, v5

    .line 54
    goto :goto_87

    :cond_c9
    move v3, v5

    .line 60
    goto :goto_9d

    :cond_cb
    move v4, v5

    .line 62
    goto :goto_b1
.end method
