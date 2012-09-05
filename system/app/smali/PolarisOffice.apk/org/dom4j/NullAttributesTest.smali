.class public Lorg/dom4j/NullAttributesTest;
.super Lorg/dom4j/AbstractTestCase;
.source "NullAttributesTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# instance fields
.field protected document:Lorg/dom4j/Document;

.field protected element:Lorg/dom4j/Element;

.field protected factory:Lorg/dom4j/DocumentFactory;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 19
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/NullAttributesTest;->factory:Lorg/dom4j/DocumentFactory;

    .line 21
    iget-object v0, p0, Lorg/dom4j/NullAttributesTest;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v0}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/NullAttributesTest;->document:Lorg/dom4j/Document;

    .line 23
    iget-object v0, p0, Lorg/dom4j/NullAttributesTest;->document:Lorg/dom4j/Document;

    const-string v1, "root"

    invoke-interface {v0, v1}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    .line 18
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 26
    sget-object v0, Lorg/dom4j/NullAttributesTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.NullAttributesTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/NullAttributesTest;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 27
    return-void

    .line 26
    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testAttributes()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 64
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->factory:Lorg/dom4j/DocumentFactory;

    iget-object v4, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v5, "v"

    invoke-virtual {v1, v4, v5, v7}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 66
    .local v0, attribute:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_70

    move v1, v2

    :goto_14
    invoke-static {v1}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 67
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_72

    move v1, v2

    :goto_1e
    invoke-static {v1}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 69
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v1, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Attribute;)V

    .line 70
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v4, "v"

    invoke-interface {v1, v4}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 71
    if-nez v0, :cond_74

    move v1, v2

    :goto_31
    invoke-static {v1}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 73
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->factory:Lorg/dom4j/DocumentFactory;

    iget-object v4, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v5, "v"

    const-string v6, "123"

    invoke-virtual {v1, v4, v5, v6}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v1, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Attribute;)V

    .line 75
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v4, "v"

    invoke-interface {v1, v4}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_76

    move v1, v2

    :goto_50
    invoke-static {v1}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 78
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->factory:Lorg/dom4j/DocumentFactory;

    iget-object v4, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v5, "v"

    invoke-virtual {v1, v4, v5, v7}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v1, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Attribute;)V

    .line 80
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v4, "v"

    invoke-interface {v1, v4}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 81
    if-nez v0, :cond_78

    :goto_6c
    invoke-static {v2}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 82
    return-void

    :cond_70
    move v1, v3

    .line 66
    goto :goto_14

    :cond_72
    move v1, v3

    .line 67
    goto :goto_1e

    :cond_74
    move v1, v3

    .line 71
    goto :goto_31

    :cond_76
    move v1, v3

    .line 76
    goto :goto_50

    :cond_78
    move v2, v3

    .line 81
    goto :goto_6c
.end method

.method public testQNames()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 47
    const-string v2, "bar"

    invoke-static {v2}, Lorg/dom4j/QName;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v1

    .line 49
    .local v1, bar:Lorg/dom4j/QName;
    iget-object v2, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v2, v1, v6}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 51
    iget-object v2, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v2, v1}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 52
    .local v0, attribute:Lorg/dom4j/Attribute;
    if-nez v0, :cond_3e

    move v2, v3

    :goto_17
    invoke-static {v2}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 54
    iget-object v2, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v5, "123"

    invoke-interface {v2, v1, v5}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 55
    iget-object v2, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v2, v1}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_40

    move v2, v3

    :goto_2a
    invoke-static {v2}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 58
    iget-object v2, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v2, v1, v6}, Lorg/dom4j/Element;->addAttribute(Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 59
    iget-object v2, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    invoke-interface {v2, v1}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 60
    if-nez v0, :cond_42

    :goto_3a
    invoke-static {v3}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 61
    return-void

    :cond_3e
    move v2, v4

    .line 52
    goto :goto_17

    :cond_40
    move v2, v4

    .line 56
    goto :goto_2a

    :cond_42
    move v3, v4

    .line 60
    goto :goto_3a
.end method

.method public testStringNames()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 32
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v4, "foo"

    invoke-interface {v1, v4, v6}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 34
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v4, "foo"

    invoke-interface {v1, v4}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 35
    .local v0, attribute:Lorg/dom4j/Attribute;
    if-nez v0, :cond_44

    move v1, v2

    :goto_15
    invoke-static {v1}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 37
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v4, "foo"

    const-string v5, "123"

    invoke-interface {v1, v4, v5}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 38
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v4, "foo"

    invoke-interface {v1, v4}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_46

    move v1, v2

    :goto_2c
    invoke-static {v1}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 41
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v4, "foo"

    invoke-interface {v1, v4, v6}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 42
    iget-object v1, p0, Lorg/dom4j/NullAttributesTest;->element:Lorg/dom4j/Element;

    const-string v4, "foo"

    invoke-interface {v1, v4}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 43
    if-nez v0, :cond_48

    :goto_40
    invoke-static {v2}, Lorg/dom4j/NullAttributesTest;->assertTrue(Z)V

    .line 44
    return-void

    :cond_44
    move v1, v3

    .line 35
    goto :goto_15

    :cond_46
    move v1, v3

    .line 39
    goto :goto_2c

    :cond_48
    move v2, v3

    .line 43
    goto :goto_40
.end method
