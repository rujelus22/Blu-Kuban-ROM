.class public Lorg/dom4j/datatype/DataTypesTest;
.super Lorg/dom4j/datatype/AbstractDataTypeTestCase;
.source "DataTypesTest.java"


# static fields
.field static class$0:Ljava/lang/Class;

.field static class$1:Ljava/lang/Class;

.field static class$10:Ljava/lang/Class;

.field static class$11:Ljava/lang/Class;

.field static class$2:Ljava/lang/Class;

.field static class$3:Ljava/lang/Class;

.field static class$4:Ljava/lang/Class;

.field static class$5:Ljava/lang/Class;

.field static class$6:Ljava/lang/Class;

.field static class$7:Ljava/lang/Class;

.field static class$8:Ljava/lang/Class;

.field static class$9:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 28
    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.datatype.DataTypesTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$0:Ljava/lang/Class;

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
.method protected setUp()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    invoke-super {p0}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;->setUp()V

    .line 147
    invoke-static {}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    .line 148
    .local v0, factory:Lorg/dom4j/DocumentFactory;
    new-instance v1, Lorg/dom4j/io/SAXReader;

    invoke-direct {v1, v0}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/dom4j/DocumentFactory;)V

    .line 149
    .local v1, reader:Lorg/dom4j/io/SAXReader;
    const-string v2, "/xml/test/schema/test.xml"

    invoke-virtual {p0, v2, v1}, Lorg/dom4j/datatype/DataTypesTest;->getDocument(Ljava/lang/String;Lorg/dom4j/io/SAXReader;)Lorg/dom4j/Document;

    move-result-object v2

    iput-object v2, p0, Lorg/dom4j/datatype/DataTypesTest;->document:Lorg/dom4j/Document;

    .line 150
    return-void
.end method

.method public testBase64Binary()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    const-string v1, "//base64BinaryTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$3:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "[B"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$3:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 71
    return-void

    .line 70
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testBoolean()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    const-string v1, "//booleanTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$2:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$2:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 67
    return-void

    .line 66
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testByte()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    const-string v1, "//byteTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$11:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$11:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 116
    return-void

    .line 115
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testDate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    const-string v1, "//dateTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.util.Calendar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 47
    return-void

    .line 46
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testDateTime()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    const-string v1, "//dateTimeTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.util.Calendar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    return-void

    .line 54
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testDecimal()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    const-string v1, "//decimalTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$6:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.math.BigDecimal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$6:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 88
    return-void

    .line 87
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testDouble()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    const-string v1, "//doubleTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$5:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.lang.Double"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$5:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 84
    return-void

    .line 83
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testFloat()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    const-string v1, "//floatTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$4:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.lang.Float"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$4:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 80
    return-void

    .line 79
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testHexBinary()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    const-string v1, "//hexBinaryTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$3:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "[B"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$3:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 75
    return-void

    .line 74
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testInt()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    const-string v1, "//intTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$9:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$9:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 108
    return-void

    .line 107
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testInteger()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    const-string v1, "//integerTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$7:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$7:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 92
    return-void

    .line 91
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testLong()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    const-string v1, "//longTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$8:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.lang.Long"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$8:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 104
    return-void

    .line 103
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testNegativeInteger()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    const-string v1, "//negativeIntegerTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$7:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$7:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 100
    return-void

    .line 99
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testNonNegativeInteger()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    const-string v1, "//nonNegativeIntegerTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$7:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$7:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 120
    return-void

    .line 119
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testNonPositiveInteger()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    const-string v1, "//nonPositiveIntegerTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$7:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$7:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 96
    return-void

    .line 95
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testPositiveInteger()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    const-string v1, "//positiveIntegerTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$7:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$7:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 140
    return-void

    .line 139
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testShort()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    const-string v1, "//shortTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$10:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.lang.Short"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$10:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 112
    return-void

    .line 111
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testTime()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    const-string v1, "//timeTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.util.Calendar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 51
    return-void

    .line 50
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testUnsignedByte()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    const-string v1, "//unsignedByteTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$10:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.lang.Short"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$10:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 136
    return-void

    .line 135
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testUnsignedInt()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    const-string v1, "//unsignedIntTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$8:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.lang.Long"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$8:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 128
    return-void

    .line 127
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testUnsignedLong()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    const-string v1, "//unsignedLongTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$7:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$7:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 124
    return-void

    .line 123
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testUnsignedShort()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    const-string v1, "//unsignedShortTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$9:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$9:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 132
    return-void

    .line 131
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testgDay()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    const-string v1, "//gDayTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.util.Calendar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 39
    return-void

    .line 38
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testgMonth()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    const-string v1, "//gMonthTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.util.Calendar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 43
    return-void

    .line 42
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testgMonthDay()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    const-string v1, "//gMonthDayTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.util.Calendar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 35
    return-void

    .line 34
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testgYear()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    const-string v1, "//gYearTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.util.Calendar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 63
    return-void

    .line 62
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public testgYearMonth()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    const-string v1, "//gYearMonthTag"

    sget-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    if-nez v0, :cond_e

    :try_start_6
    const-string v0, "java.util.Calendar"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_12

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DataTypesTest;->class$1:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v1, v0}, Lorg/dom4j/datatype/DataTypesTest;->testNodes(Ljava/lang/String;Ljava/lang/Class;)V

    .line 59
    return-void

    .line 58
    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
