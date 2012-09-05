.class public Lorg/dom4j/ValidationTest;
.super Lorg/dom4j/AbstractTestCase;
.source "ValidationTest.java"


# static fields
.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/dom4j/AbstractTestCase;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .parameter "args"

    .prologue
    .line 22
    sget-object v0, Lorg/dom4j/ValidationTest;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.dom4j.ValidationTest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_10

    move-result-object v0

    sput-object v0, Lorg/dom4j/ValidationTest;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 23
    return-void

    .line 22
    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public testValidation()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Lorg/dom4j/io/SAXReader;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXReader;-><init>(Z)V

    .line 30
    .local v0, reader:Lorg/dom4j/io/SAXReader;
    const-string v1, "test"

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/lang/String;)Lorg/dom4j/Document;

    .line 31
    invoke-static {}, Lorg/dom4j/ValidationTest;->fail()V
    :try_end_e
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_e} :catch_f

    .line 35
    .end local v0           #reader:Lorg/dom4j/io/SAXReader;
    :goto_e
    return-void

    .line 32
    :catch_f
    move-exception v1

    goto :goto_e
.end method
