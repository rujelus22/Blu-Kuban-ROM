.class public Lorg/dom4j/ParseTextTest;
.super Lorg/dom4j/AbstractTestCase;
.source "ParseTextTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# instance fields
.field protected xmlText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 20
    const-string v0, "<root><author name=\'James\'><location>Paris</location></author></root>"

    iput-object v0, p0, Lorg/dom4j/ParseTextTest;->xmlText:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 23
    sget-object v0, Lorg/dom4j/ParseTextTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.ParseTextTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/ParseTextTest;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 24
    return-void

    .line 23
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
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    invoke-super {p0}, Lorg/dom4j/AbstractTestCase;->setUp()V

    .line 52
    iget-object v0, p0, Lorg/dom4j/ParseTextTest;->xmlText:Ljava/lang/String;

    invoke-static {v0}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/ParseTextTest;->document:Lorg/dom4j/Document;

    .line 53
    return-void
.end method

.method public testDocument()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 29
    const-string v7, "Document is not null"

    iget-object v4, p0, Lorg/dom4j/ParseTextTest;->document:Lorg/dom4j/Document;

    if-eqz v4, :cond_44

    move v4, v5

    :goto_9
    invoke-static {v7, v4}, Lorg/dom4j/ParseTextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 31
    iget-object v4, p0, Lorg/dom4j/ParseTextTest;->document:Lorg/dom4j/Document;

    invoke-interface {v4}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v3

    .line 33
    .local v3, root:Lorg/dom4j/Element;
    const-string v7, "Root element is not null"

    if-eqz v3, :cond_46

    move v4, v5

    :goto_17
    invoke-static {v7, v4}, Lorg/dom4j/ParseTextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 35
    const-string v4, "author"

    invoke-interface {v3, v4}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 37
    .local v0, author:Lorg/dom4j/Element;
    const-string v4, "Author element is not null"

    if-eqz v0, :cond_48

    :goto_24
    invoke-static {v4, v5}, Lorg/dom4j/ParseTextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 39
    const-string v4, "name"

    invoke-interface {v0, v4}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, name:Ljava/lang/String;
    const-string v4, "Name attribute matches"

    const-string v5, "James"

    invoke-static {v4, v2, v5}, Lorg/dom4j/ParseTextTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v4, p0, Lorg/dom4j/ParseTextTest;->document:Lorg/dom4j/Document;

    const-string v5, "/root/author/location"

    invoke-interface {v4, v5}, Lorg/dom4j/Document;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, location:Ljava/lang/String;
    const-string v4, "Location element matches"

    const-string v5, "Paris"

    invoke-static {v4, v1, v5}, Lorg/dom4j/ParseTextTest;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void

    .end local v0           #author:Lorg/dom4j/Element;
    .end local v1           #location:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #root:Lorg/dom4j/Element;
    :cond_44
    move v4, v6

    .line 29
    goto :goto_9

    .restart local v3       #root:Lorg/dom4j/Element;
    :cond_46
    move v4, v6

    .line 33
    goto :goto_17

    .restart local v0       #author:Lorg/dom4j/Element;
    :cond_48
    move v5, v6

    .line 37
    goto :goto_24
.end method
