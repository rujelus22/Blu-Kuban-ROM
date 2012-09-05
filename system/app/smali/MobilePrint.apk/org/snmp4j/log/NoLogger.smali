.class public Lorg/snmp4j/log/NoLogger;
.super Ljava/lang/Object;
.source "NoLogger.java"

# interfaces
.implements Lorg/snmp4j/log/LogAdapter;


# static fields
.field static final instance:Lorg/snmp4j/log/NoLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lorg/snmp4j/log/NoLogger;

    invoke-direct {v0}, Lorg/snmp4j/log/NoLogger;-><init>()V

    sput-object v0, Lorg/snmp4j/log/NoLogger;->instance:Lorg/snmp4j/log/NoLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 42
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 45
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "t"

    .prologue
    .line 48
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 69
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 72
    return-void
.end method

.method public getEffectiveLogLevel()Lorg/snmp4j/log/LogLevel;
    .registers 2

    .prologue
    .line 86
    sget-object v0, Lorg/snmp4j/log/LogLevel;->OFF:Lorg/snmp4j/log/LogLevel;

    return-object v0
.end method

.method public getLogHandler()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 90
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLogLevel()Lorg/snmp4j/log/LogLevel;
    .registers 2

    .prologue
    .line 82
    sget-object v0, Lorg/snmp4j/log/LogLevel;->OFF:Lorg/snmp4j/log/LogLevel;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    const-string v0, ""

    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 51
    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public setLogLevel(Lorg/snmp4j/log/LogLevel;)V
    .registers 2
    .parameter "level"

    .prologue
    .line 75
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 66
    return-void
.end method
