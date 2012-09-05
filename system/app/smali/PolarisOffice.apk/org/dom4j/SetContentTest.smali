.class public Lorg/dom4j/SetContentTest;
.super Lorg/dom4j/AbstractTestCase;
.source "SetContentTest.java"


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
    sget-object v0, Lorg/dom4j/SetContentTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.SetContentTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/SetContentTest;->class$0:Ljava/lang/Class;

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
.method public testDocument()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 26
    iget-object v3, p0, Lorg/dom4j/SetContentTest;->document:Lorg/dom4j/Document;

    const-string v6, "doc1"

    invoke-interface {v3, v6}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 28
    iget-object v3, p0, Lorg/dom4j/SetContentTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    .line 30
    .local v2, oldRoot:Lorg/dom4j/Element;
    const-string v6, "Current root has document"

    .line 31
    invoke-interface {v2}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v3

    iget-object v7, p0, Lorg/dom4j/SetContentTest;->document:Lorg/dom4j/Document;

    if-ne v3, v7, :cond_8e

    move v3, v4

    .line 30
    :goto_1a
    invoke-static {v6, v3}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 33
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 34
    .local v0, doc2:Lorg/dom4j/Document;
    const-string v3, "doc2"

    invoke-interface {v0, v3}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 36
    const-string v6, "Doc2 has no root element"

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    if-nez v3, :cond_90

    move v3, v4

    :goto_2f
    invoke-static {v6, v3}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 38
    iget-object v3, p0, Lorg/dom4j/SetContentTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3}, Lorg/dom4j/Document;->content()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/dom4j/Document;->setContent(Ljava/util/List;)V

    .line 40
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 42
    .local v1, newRoot:Lorg/dom4j/Element;
    const-string v6, "Current root has document"

    .line 43
    invoke-interface {v2}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v3

    iget-object v7, p0, Lorg/dom4j/SetContentTest;->document:Lorg/dom4j/Document;

    if-ne v3, v7, :cond_92

    move v3, v4

    .line 42
    :goto_4a
    invoke-static {v6, v3}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 45
    const-string v6, "Doc2 has now has root element"

    if-eqz v1, :cond_94

    move v3, v4

    :goto_52
    invoke-static {v6, v3}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 46
    const-string v6, "Doc2 has different root element"

    if-eq v1, v2, :cond_96

    move v3, v4

    :goto_5a
    invoke-static {v6, v3}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 47
    const-string v6, "Root element now has document"

    .line 48
    invoke-interface {v1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v3

    if-ne v3, v0, :cond_98

    move v3, v4

    .line 47
    :goto_66
    invoke-static {v6, v3}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 50
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/dom4j/SetContentTest;->testParent(Lorg/dom4j/Branch;)V

    .line 51
    invoke-virtual {p0, v0, v0}, Lorg/dom4j/SetContentTest;->testDocument(Lorg/dom4j/Branch;Lorg/dom4j/Document;)V

    .line 53
    invoke-interface {v0}, Lorg/dom4j/Document;->clearContent()V

    .line 55
    const-string v6, "New Doc has no root"

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    if-nez v3, :cond_9a

    move v3, v4

    :goto_7f
    invoke-static {v6, v3}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 56
    const-string v3, "New root has no document"

    invoke-interface {v1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v6

    if-nez v6, :cond_9c

    :goto_8a
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 57
    return-void

    .end local v0           #doc2:Lorg/dom4j/Document;
    .end local v1           #newRoot:Lorg/dom4j/Element;
    :cond_8e
    move v3, v5

    .line 31
    goto :goto_1a

    .restart local v0       #doc2:Lorg/dom4j/Document;
    :cond_90
    move v3, v5

    .line 36
    goto :goto_2f

    .restart local v1       #newRoot:Lorg/dom4j/Element;
    :cond_92
    move v3, v5

    .line 43
    goto :goto_4a

    :cond_94
    move v3, v5

    .line 45
    goto :goto_52

    :cond_96
    move v3, v5

    .line 46
    goto :goto_5a

    :cond_98
    move v3, v5

    .line 48
    goto :goto_66

    :cond_9a
    move v3, v5

    .line 55
    goto :goto_7f

    :cond_9c
    move v4, v5

    .line 56
    goto :goto_8a
.end method

.method protected testDocument(Lorg/dom4j/Branch;Lorg/dom4j/Document;)V
    .registers 8
    .parameter "branch"
    .parameter "doc"

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v2

    .local v2, size:I
    :goto_5
    if-lt v0, v2, :cond_8

    .line 107
    return-void

    .line 104
    :cond_8
    invoke-interface {p1, v0}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v1

    .line 105
    .local v1, node:Lorg/dom4j/Node;
    const-string v4, "Node has correct document"

    invoke-interface {v1}, Lorg/dom4j/Node;->getDocument()Lorg/dom4j/Document;

    move-result-object v3

    if-ne v3, p2, :cond_1b

    const/4 v3, 0x1

    :goto_15
    invoke-static {v4, v3}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 105
    :cond_1b
    const/4 v3, 0x0

    goto :goto_15
.end method

.method protected testParent(Lorg/dom4j/Branch;)V
    .registers 7
    .parameter "parent"

    .prologue
    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeCount()I

    move-result v2

    .local v2, size:I
    :goto_5
    if-lt v0, v2, :cond_8

    .line 92
    return-void

    .line 88
    :cond_8
    invoke-interface {p1, v0}, Lorg/dom4j/Branch;->node(I)Lorg/dom4j/Node;

    move-result-object v1

    .line 89
    .local v1, node:Lorg/dom4j/Node;
    const-string v4, "Child node of root has parent of root"

    .line 90
    invoke-interface {v1}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v3

    .line 89
    if-ne v3, p1, :cond_1b

    const/4 v3, 0x1

    :goto_15
    invoke-static {v4, v3}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 89
    :cond_1b
    const/4 v3, 0x0

    goto :goto_15
.end method

.method public testRootElement()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 61
    .local v0, doc3:Lorg/dom4j/Document;
    const-string v3, "doc3"

    invoke-interface {v0, v3}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 63
    const-string v3, "root"

    invoke-interface {v0, v3}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 64
    .local v2, root:Lorg/dom4j/Element;
    const-string v3, "old"

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 66
    .local v1, oldElement:Lorg/dom4j/Element;
    const-string v6, "Doc3 has root element"

    if-eqz v2, :cond_56

    move v3, v4

    :goto_1c
    invoke-static {v6, v3}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 68
    iget-object v3, p0, Lorg/dom4j/SetContentTest;->document:Lorg/dom4j/Document;

    invoke-interface {v3}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/dom4j/Element;->setContent(Ljava/util/List;)V

    .line 70
    const-string v6, "Doc3\'s root now has content"

    invoke-interface {v2}, Lorg/dom4j/Element;->nodeCount()I

    move-result v3

    if-lez v3, :cond_58

    move v3, v4

    :goto_35
    invoke-static {v6, v3}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 71
    const-string v6, "Old element has no parent now"

    .line 72
    invoke-interface {v1}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v3

    if-nez v3, :cond_5a

    move v3, v4

    .line 71
    :goto_41
    invoke-static {v6, v3}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 73
    const-string v3, "Old element has no document now"

    .line 74
    invoke-interface {v1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v6

    if-nez v6, :cond_5c

    .line 73
    :goto_4c
    invoke-static {v3, v4}, Lorg/dom4j/SetContentTest;->assertTrue(Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {p0, v2}, Lorg/dom4j/SetContentTest;->testParent(Lorg/dom4j/Branch;)V

    .line 77
    invoke-virtual {p0, v2, v0}, Lorg/dom4j/SetContentTest;->testDocument(Lorg/dom4j/Branch;Lorg/dom4j/Document;)V

    .line 78
    return-void

    :cond_56
    move v3, v5

    .line 66
    goto :goto_1c

    :cond_58
    move v3, v5

    .line 70
    goto :goto_35

    :cond_5a
    move v3, v5

    .line 72
    goto :goto_41

    :cond_5c
    move v4, v5

    .line 74
    goto :goto_4c
.end method
