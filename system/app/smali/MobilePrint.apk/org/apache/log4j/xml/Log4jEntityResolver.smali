.class public Lorg/apache/log4j/xml/Log4jEntityResolver;
.super Ljava/lang/Object;
.source "Log4jEntityResolver.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 8
    .parameter "publicId"
    .parameter "systemId"

    .prologue
    const/4 v2, 0x0

    .line 39
    const-string v3, "log4j.dtd"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 41
    .local v0, clazz:Ljava/lang/Class;
    const-string v3, "/org/apache/log4j/xml/log4j.dtd"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 42
    .local v1, in:Ljava/io/InputStream;
    if-nez v1, :cond_36

    .line 43
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not find [log4j.dtd]. Used ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] class loader in the search."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 50
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v1           #in:Ljava/io/InputStream;
    :cond_35
    :goto_35
    return-object v2

    .line 47
    .restart local v0       #clazz:Ljava/lang/Class;
    .restart local v1       #in:Ljava/io/InputStream;
    :cond_36
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    goto :goto_35
.end method
