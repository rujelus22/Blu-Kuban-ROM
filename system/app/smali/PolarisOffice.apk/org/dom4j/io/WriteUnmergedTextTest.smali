.class public Lorg/dom4j/io/WriteUnmergedTextTest;
.super Lorg/dom4j/AbstractTestCase;
.source "WriteUnmergedTextTest.java"


# static fields
.field protected static final VERBOSE:Z = true

.field static class$0:Ljava/lang/Class;


# instance fields
.field private inputText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    .line 27
    const-string v0, "<?xml version = \"1.0\"?><TestEscapedEntities><TEXT>Test using &lt; &amp; &gt;</TEXT></TestEscapedEntities>"

    iput-object v0, p0, Lorg/dom4j/io/WriteUnmergedTextTest;->inputText:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 32
    sget-object v0, Lorg/dom4j/io/WriteUnmergedTextTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.io.WriteUnmergedTextTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/io/WriteUnmergedTextTest;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 33
    return-void

    .line 32
    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public readwriteText(Lorg/dom4j/io/OutputFormat;Z)Ljava/lang/String;
    .registers 10
    .parameter "outFormat"
    .parameter "mergeAdjacentText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 40
    .local v2, out:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/StringReader;

    iget-object v6, p0, Lorg/dom4j/io/WriteUnmergedTextTest;->inputText:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, in:Ljava/io/StringReader;
    new-instance v4, Lorg/dom4j/io/SAXReader;

    invoke-direct {v4}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 44
    .local v4, reader:Lorg/dom4j/io/SAXReader;
    invoke-virtual {v4, p2}, Lorg/dom4j/io/SAXReader;->setMergeAdjacentText(Z)V

    .line 46
    invoke-virtual {v4, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 48
    .local v0, document:Lorg/dom4j/Document;
    if-nez p1, :cond_2a

    new-instance v5, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v5, v2}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;)V

    .line 50
    .local v5, writer:Lorg/dom4j/io/XMLWriter;
    :goto_1f
    invoke-virtual {v5, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 51
    invoke-virtual {v5}, Lorg/dom4j/io/XMLWriter;->close()V

    .line 53
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, outText:Ljava/lang/String;
    return-object v3

    .line 49
    .end local v3           #outText:Ljava/lang/String;
    .end local v5           #writer:Lorg/dom4j/io/XMLWriter;
    :cond_2a
    new-instance v5, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v5, v2, p1}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;Lorg/dom4j/io/OutputFormat;)V

    goto :goto_1f
.end method

.method public testWithCompactFormatMerged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 124
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createCompactFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/io/WriteUnmergedTextTest;->readwriteText(Lorg/dom4j/io/OutputFormat;Z)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, out:Ljava/lang/String;
    const-string v1, "Text output is ["

    invoke-virtual {p0, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, v0}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 129
    const-string v1, "]. Done"

    invoke-virtual {p0, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 133
    const-string v4, "Output text contains \"&amp;\""

    .line 134
    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_33

    move v1, v2

    .line 133
    :goto_22
    invoke-static {v4, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 135
    const-string v1, "Output text contains \"&lt;\""

    .line 136
    const-string v4, "&lt;"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_35

    .line 135
    :goto_2f
    invoke-static {v1, v2}, Lorg/dom4j/io/WriteUnmergedTextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 137
    return-void

    :cond_33
    move v1, v3

    .line 133
    goto :goto_22

    :cond_35
    move v2, v3

    .line 136
    goto :goto_2f
.end method

.method public testWithCompactFormatNonMerged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createCompactFormat()Lorg/dom4j/io/OutputFormat;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/dom4j/io/WriteUnmergedTextTest;->readwriteText(Lorg/dom4j/io/OutputFormat;Z)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, outText:Ljava/lang/String;
    const-string v1, "Text output is ["

    invoke-virtual {p0, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v0}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 81
    const-string v1, "]. Done"

    invoke-virtual {p0, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 85
    const-string v4, "Output text contains \"&amp;\""

    .line 86
    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_33

    move v1, v2

    .line 85
    :goto_22
    invoke-static {v4, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 87
    const-string v1, "Output text contains \"&lt;\""

    .line 88
    const-string v4, "&lt;"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_35

    .line 87
    :goto_2f
    invoke-static {v1, v2}, Lorg/dom4j/io/WriteUnmergedTextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 89
    return-void

    :cond_33
    move v1, v3

    .line 85
    goto :goto_22

    :cond_35
    move v2, v3

    .line 88
    goto :goto_2f
.end method

.method public testWithPrettyPrintFormatMerged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 140
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/io/WriteUnmergedTextTest;->readwriteText(Lorg/dom4j/io/OutputFormat;Z)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, outText:Ljava/lang/String;
    const-string v1, "Text output is ["

    invoke-virtual {p0, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, v0}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 145
    const-string v1, "]. Done"

    invoke-virtual {p0, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 149
    const-string v4, "Output text contains \"&amp;\""

    .line 150
    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_33

    move v1, v2

    .line 149
    :goto_22
    invoke-static {v4, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 151
    const-string v1, "Output text contains \"&lt;\""

    .line 152
    const-string v4, "&lt;"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_35

    .line 151
    :goto_2f
    invoke-static {v1, v2}, Lorg/dom4j/io/WriteUnmergedTextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 153
    return-void

    :cond_33
    move v1, v3

    .line 149
    goto :goto_22

    :cond_35
    move v2, v3

    .line 152
    goto :goto_2f
.end method

.method public testWithPrettyPrintFormatNonMerged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    invoke-static {}, Lorg/dom4j/io/OutputFormat;->createPrettyPrint()Lorg/dom4j/io/OutputFormat;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/dom4j/io/WriteUnmergedTextTest;->readwriteText(Lorg/dom4j/io/OutputFormat;Z)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, outText:Ljava/lang/String;
    const-string v1, "Text output is ["

    invoke-virtual {p0, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v0}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 97
    const-string v1, "]. Done"

    invoke-virtual {p0, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 101
    const-string v4, "Output text contains \"&amp;\""

    .line 102
    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_33

    move v1, v2

    .line 101
    :goto_22
    invoke-static {v4, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 103
    const-string v1, "Output text contains \"&lt;\""

    .line 104
    const-string v4, "&lt;"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_35

    .line 103
    :goto_2f
    invoke-static {v1, v2}, Lorg/dom4j/io/WriteUnmergedTextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 105
    return-void

    :cond_33
    move v1, v3

    .line 101
    goto :goto_22

    :cond_35
    move v2, v3

    .line 104
    goto :goto_2f
.end method

.method public testWithoutFormatMerged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 108
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/dom4j/io/WriteUnmergedTextTest;->readwriteText(Lorg/dom4j/io/OutputFormat;Z)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, outText:Ljava/lang/String;
    const-string v1, "Text output is ["

    invoke-virtual {p0, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v0}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 113
    const-string v1, "]. Done"

    invoke-virtual {p0, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 117
    const-string v4, "Output text contains \"&amp;\""

    .line 118
    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_30

    move v1, v2

    .line 117
    :goto_1f
    invoke-static {v4, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 119
    const-string v1, "Output text contains \"&lt;\""

    .line 120
    const-string v4, "&lt;"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_32

    .line 119
    :goto_2c
    invoke-static {v1, v2}, Lorg/dom4j/io/WriteUnmergedTextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 121
    return-void

    :cond_30
    move v1, v3

    .line 117
    goto :goto_1f

    :cond_32
    move v2, v3

    .line 120
    goto :goto_2c
.end method

.method public testWithoutFormatNonMerged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/dom4j/io/WriteUnmergedTextTest;->readwriteText(Lorg/dom4j/io/OutputFormat;Z)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, outText:Ljava/lang/String;
    const-string v1, "Text output is ["

    invoke-virtual {p0, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v0}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 64
    const-string v1, "]. Done"

    invoke-virtual {p0, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->log(Ljava/lang/String;)V

    .line 68
    const-string v4, "Output text contains \"&amp;\""

    .line 69
    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_30

    move v1, v2

    .line 68
    :goto_1f
    invoke-static {v4, v1}, Lorg/dom4j/io/WriteUnmergedTextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 70
    const-string v1, "Output text contains \"&lt;\""

    .line 71
    const-string v4, "&lt;"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_32

    .line 70
    :goto_2c
    invoke-static {v1, v2}, Lorg/dom4j/io/WriteUnmergedTextTest;->assertTrue(Ljava/lang/String;Z)V

    .line 72
    return-void

    :cond_30
    move v1, v3

    .line 68
    goto :goto_1f

    :cond_32
    move v2, v3

    .line 71
    goto :goto_2c
.end method
