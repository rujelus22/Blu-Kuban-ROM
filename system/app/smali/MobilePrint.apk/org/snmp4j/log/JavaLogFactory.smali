.class public Lorg/snmp4j/log/JavaLogFactory;
.super Lorg/snmp4j/log/LogFactory;
.source "JavaLogFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/log/JavaLogFactory$JavaLogAdapterIterator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/snmp4j/log/LogFactory;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method protected createLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;
    .registers 4
    .parameter "c"

    .prologue
    .line 43
    new-instance v0, Lorg/snmp4j/log/JavaLogAdapter;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/snmp4j/log/JavaLogAdapter;-><init>(Ljava/util/logging/Logger;)V

    return-object v0
.end method

.method protected createLogger(Ljava/lang/String;)Lorg/snmp4j/log/LogAdapter;
    .registers 4
    .parameter "className"

    .prologue
    .line 47
    new-instance v0, Lorg/snmp4j/log/JavaLogAdapter;

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/snmp4j/log/JavaLogAdapter;-><init>(Ljava/util/logging/Logger;)V

    return-object v0
.end method

.method public getRootLogger()Lorg/snmp4j/log/LogAdapter;
    .registers 3

    .prologue
    .line 51
    new-instance v0, Lorg/snmp4j/log/JavaLogAdapter;

    const-string v1, ""

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/snmp4j/log/JavaLogAdapter;-><init>(Ljava/util/logging/Logger;)V

    return-object v0
.end method

.method public loggers()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 55
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/LogManager;->getLoggerNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 56
    .local v0, loggerNames:Ljava/util/Enumeration;
    new-instance v1, Lorg/snmp4j/log/JavaLogFactory$JavaLogAdapterIterator;

    invoke-direct {v1, p0, v0}, Lorg/snmp4j/log/JavaLogFactory$JavaLogAdapterIterator;-><init>(Lorg/snmp4j/log/JavaLogFactory;Ljava/util/Enumeration;)V

    return-object v1
.end method
