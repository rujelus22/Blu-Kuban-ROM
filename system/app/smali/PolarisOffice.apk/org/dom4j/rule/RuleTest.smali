.class public Lorg/dom4j/rule/RuleTest;
.super Lorg/dom4j/AbstractTestCase;
.source "RuleTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# instance fields
.field protected factory:Lorg/dom4j/DocumentFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 27
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    iput-object v0, p0, Lorg/dom4j/rule/RuleTest;->factory:Lorg/dom4j/DocumentFactory;

    .line 26
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 30
    sget-object v0, Lorg/dom4j/rule/RuleTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.rule.RuleTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/rule/RuleTest;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 31
    return-void

    .line 30
    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected createRule(Ljava/lang/String;)Lorg/dom4j/rule/Rule;
    .registers 4
    .parameter "expr"

    .prologue
    .line 110
    iget-object v1, p0, Lorg/dom4j/rule/RuleTest;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v1, p1}, Lorg/dom4j/DocumentFactory;->createPattern(Ljava/lang/String;)Lorg/dom4j/rule/Pattern;

    move-result-object v0

    .line 112
    .local v0, pattern:Lorg/dom4j/rule/Pattern;
    new-instance v1, Lorg/dom4j/rule/Rule;

    invoke-direct {v1, v0}, Lorg/dom4j/rule/Rule;-><init>(Lorg/dom4j/rule/Pattern;)V

    return-object v1
.end method

.method public testDocument()V
    .registers 5

    .prologue
    .line 93
    const-string v2, "/"

    invoke-virtual {p0, v2}, Lorg/dom4j/rule/RuleTest;->createRule(Ljava/lang/String;)Lorg/dom4j/rule/Rule;

    move-result-object v1

    .line 94
    .local v1, rule:Lorg/dom4j/rule/Rule;
    iget-object v2, p0, Lorg/dom4j/rule/RuleTest;->factory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {v2}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 95
    .local v0, document:Lorg/dom4j/Document;
    const-string v2, "foo"

    invoke-interface {v0, v2}, Lorg/dom4j/Document;->addElement(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 97
    const-string v2, "/ matches document"

    invoke-virtual {v1, v0}, Lorg/dom4j/rule/Rule;->matches(Lorg/dom4j/Node;)Z

    move-result v3

    invoke-static {v2, v3}, Lorg/dom4j/rule/RuleTest;->assertTrue(Ljava/lang/String;Z)V

    .line 98
    const-string v3, "/ does not match root element"

    .line 99
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/dom4j/rule/Rule;->matches(Lorg/dom4j/Node;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    .line 98
    :goto_27
    invoke-static {v3, v2}, Lorg/dom4j/rule/RuleTest;->assertTrue(Ljava/lang/String;Z)V

    .line 100
    return-void

    .line 99
    :cond_2b
    const/4 v2, 0x1

    goto :goto_27
.end method

.method protected testGreater(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "expr1"
    .parameter "expr2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 38
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "parsing: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lorg/dom4j/rule/RuleTest;->createRule(Ljava/lang/String;)Lorg/dom4j/rule/Rule;

    move-result-object v1

    .line 41
    .local v1, r1:Lorg/dom4j/rule/Rule;
    invoke-virtual {p0, p2}, Lorg/dom4j/rule/RuleTest;->createRule(Ljava/lang/String;)Lorg/dom4j/rule/Rule;

    move-result-object v2

    .line 43
    .local v2, r2:Lorg/dom4j/rule/Rule;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "rule1: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " rule2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v2}, Lorg/dom4j/rule/Rule;->compareTo(Lorg/dom4j/rule/Rule;)I

    move-result v3

    .line 47
    .local v3, value:I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Comparison: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    const-string v7, "r1 > r2"

    if-lez v3, :cond_b2

    move v4, v5

    :goto_63
    invoke-static {v7, v4}, Lorg/dom4j/rule/RuleTest;->assertTrue(Ljava/lang/String;Z)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, list:Ljava/util/ArrayList;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 57
    const-string v7, "r2 should be first"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_b4

    move v4, v5

    :goto_7d
    invoke-static {v7, v4}, Lorg/dom4j/rule/RuleTest;->assertTrue(Ljava/lang/String;Z)V

    .line 58
    const-string v7, "r1 should be next"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_b6

    move v4, v5

    :goto_89
    invoke-static {v7, v4}, Lorg/dom4j/rule/RuleTest;->assertTrue(Ljava/lang/String;Z)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .restart local v0       #list:Ljava/util/ArrayList;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 66
    const-string v7, "r2 should be first"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_b8

    move v4, v5

    :goto_a3
    invoke-static {v7, v4}, Lorg/dom4j/rule/RuleTest;->assertTrue(Ljava/lang/String;Z)V

    .line 67
    const-string v4, "r1 should be next"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_ba

    :goto_ae
    invoke-static {v4, v5}, Lorg/dom4j/rule/RuleTest;->assertTrue(Ljava/lang/String;Z)V

    .line 90
    return-void

    .end local v0           #list:Ljava/util/ArrayList;
    :cond_b2
    move v4, v6

    .line 49
    goto :goto_63

    .restart local v0       #list:Ljava/util/ArrayList;
    :cond_b4
    move v4, v6

    .line 57
    goto :goto_7d

    :cond_b6
    move v4, v6

    .line 58
    goto :goto_89

    :cond_b8
    move v4, v6

    .line 66
    goto :goto_a3

    :cond_ba
    move v5, v6

    .line 67
    goto :goto_ae
.end method

.method public testOrder()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    const-string v0, "foo"

    const-string v1, "*"

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/rule/RuleTest;->testGreater(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public testTextMatchesCDATA()V
    .registers 5

    .prologue
    .line 103
    iget-object v2, p0, Lorg/dom4j/rule/RuleTest;->factory:Lorg/dom4j/DocumentFactory;

    const-string v3, "<>&"

    invoke-virtual {v2, v3}, Lorg/dom4j/DocumentFactory;->createCDATA(Ljava/lang/String;)Lorg/dom4j/CDATA;

    move-result-object v0

    .line 104
    .local v0, cdata:Lorg/dom4j/CDATA;
    const-string v2, "text()"

    invoke-virtual {p0, v2}, Lorg/dom4j/rule/RuleTest;->createRule(Ljava/lang/String;)Lorg/dom4j/rule/Rule;

    move-result-object v1

    .line 106
    .local v1, rule:Lorg/dom4j/rule/Rule;
    const-string v2, "text() matches CDATA"

    invoke-virtual {v1, v0}, Lorg/dom4j/rule/Rule;->matches(Lorg/dom4j/Node;)Z

    move-result v3

    invoke-static {v2, v3}, Lorg/dom4j/rule/RuleTest;->assertTrue(Ljava/lang/String;Z)V

    .line 107
    return-void
.end method
