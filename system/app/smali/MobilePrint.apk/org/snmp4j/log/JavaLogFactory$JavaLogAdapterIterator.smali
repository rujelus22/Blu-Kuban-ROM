.class public Lorg/snmp4j/log/JavaLogFactory$JavaLogAdapterIterator;
.super Ljava/lang/Object;
.source "JavaLogFactory.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/log/JavaLogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavaLogAdapterIterator"
.end annotation


# instance fields
.field private loggerNames:Ljava/util/Enumeration;

.field private final this$0:Lorg/snmp4j/log/JavaLogFactory;


# direct methods
.method protected constructor <init>(Lorg/snmp4j/log/JavaLogFactory;Ljava/util/Enumeration;)V
    .registers 3
    .parameter
    .parameter "loggerNames"

    .prologue
    .line 62
    iput-object p1, p0, Lorg/snmp4j/log/JavaLogFactory$JavaLogAdapterIterator;->this$0:Lorg/snmp4j/log/JavaLogFactory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lorg/snmp4j/log/JavaLogFactory$JavaLogAdapterIterator;->loggerNames:Ljava/util/Enumeration;

    .line 64
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/snmp4j/log/JavaLogFactory$JavaLogAdapterIterator;->loggerNames:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 75
    iget-object v2, p0, Lorg/snmp4j/log/JavaLogFactory$JavaLogAdapterIterator;->loggerNames:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, loggerName:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 77
    .local v0, logger:Ljava/util/logging/Logger;
    new-instance v2, Lorg/snmp4j/log/JavaLogAdapter;

    invoke-direct {v2, v0}, Lorg/snmp4j/log/JavaLogAdapter;-><init>(Ljava/util/logging/Logger;)V

    return-object v2
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
