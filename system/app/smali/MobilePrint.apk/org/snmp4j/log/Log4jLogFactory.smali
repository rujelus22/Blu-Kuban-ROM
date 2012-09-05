.class public Lorg/snmp4j/log/Log4jLogFactory;
.super Lorg/snmp4j/log/LogFactory;
.source "Log4jLogFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/snmp4j/log/LogFactory;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method protected createLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;
    .registers 4
    .parameter "c"

    .prologue
    .line 44
    new-instance v0, Lorg/snmp4j/log/Log4jLogAdapter;

    invoke-static {p1}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/snmp4j/log/Log4jLogAdapter;-><init>(Lorg/apache/log4j/Logger;)V

    return-object v0
.end method

.method protected createLogger(Ljava/lang/String;)Lorg/snmp4j/log/LogAdapter;
    .registers 4
    .parameter "className"

    .prologue
    .line 48
    new-instance v0, Lorg/snmp4j/log/Log4jLogAdapter;

    invoke-static {p1}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/snmp4j/log/Log4jLogAdapter;-><init>(Lorg/apache/log4j/Logger;)V

    return-object v0
.end method

.method public getRootLogger()Lorg/snmp4j/log/LogAdapter;
    .registers 3

    .prologue
    .line 52
    new-instance v0, Lorg/snmp4j/log/Log4jLogAdapter;

    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/snmp4j/log/Log4jLogAdapter;-><init>(Lorg/apache/log4j/Logger;)V

    return-object v0
.end method

.method public loggers()Ljava/util/Iterator;
    .registers 5

    .prologue
    .line 56
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/log4j/Logger;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/log4j/spi/LoggerRepository;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 59
    .local v1, l:Ljava/util/ArrayList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_28

    .line 60
    new-instance v3, Lorg/snmp4j/log/Log4jLogAdapter;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/Logger;

    invoke-direct {v3, v2}, Lorg/snmp4j/log/Log4jLogAdapter;-><init>(Lorg/apache/log4j/Logger;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 62
    :cond_28
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    return-object v2
.end method
