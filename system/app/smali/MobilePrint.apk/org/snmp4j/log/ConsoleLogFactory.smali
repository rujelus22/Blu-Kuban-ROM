.class public Lorg/snmp4j/log/ConsoleLogFactory;
.super Lorg/snmp4j/log/LogFactory;
.source "ConsoleLogFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/snmp4j/log/LogFactory;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method protected createLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;
    .registers 3
    .parameter "c"

    .prologue
    .line 41
    new-instance v0, Lorg/snmp4j/log/ConsoleLogAdapter;

    invoke-direct {v0}, Lorg/snmp4j/log/ConsoleLogAdapter;-><init>()V

    return-object v0
.end method

.method protected createLogger(Ljava/lang/String;)Lorg/snmp4j/log/LogAdapter;
    .registers 3
    .parameter "className"

    .prologue
    .line 45
    new-instance v0, Lorg/snmp4j/log/ConsoleLogAdapter;

    invoke-direct {v0}, Lorg/snmp4j/log/ConsoleLogAdapter;-><init>()V

    return-object v0
.end method
