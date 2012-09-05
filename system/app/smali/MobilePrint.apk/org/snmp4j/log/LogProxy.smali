.class public Lorg/snmp4j/log/LogProxy;
.super Ljava/lang/Object;
.source "LogProxy.java"

# interfaces
.implements Lorg/snmp4j/log/LogAdapter;


# instance fields
.field private logger:Lorg/snmp4j/log/LogAdapter;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/snmp4j/log/LogProxy;->name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/log/LogAdapter;)V
    .registers 2
    .parameter "logger"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    .line 45
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 48
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    if-eqz v0, :cond_9

    .line 49
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0, p1}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 51
    :cond_9
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    if-eqz v0, :cond_9

    .line 55
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0, p1}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 57
    :cond_9
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 60
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    if-eqz v0, :cond_9

    .line 61
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0, p1, p2}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 63
    :cond_9
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 66
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    if-eqz v0, :cond_9

    .line 67
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0, p1}, Lorg/snmp4j/log/LogAdapter;->fatal(Ljava/lang/Object;)V

    .line 69
    :cond_9
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 72
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    if-eqz v0, :cond_9

    .line 73
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0, p1, p2}, Lorg/snmp4j/log/LogAdapter;->fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 75
    :cond_9
    return-void
.end method

.method public getEffectiveLogLevel()Lorg/snmp4j/log/LogLevel;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    if-eqz v0, :cond_b

    .line 79
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->getEffectiveLogLevel()Lorg/snmp4j/log/LogLevel;

    move-result-object v0

    .line 81
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lorg/snmp4j/log/LogLevel;->OFF:Lorg/snmp4j/log/LogLevel;

    goto :goto_a
.end method

.method public getLogHandler()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    if-eqz v0, :cond_b

    .line 86
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->getLogHandler()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_a
.end method

.method public getLogLevel()Lorg/snmp4j/log/LogLevel;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    if-eqz v0, :cond_b

    .line 93
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->getLogLevel()Lorg/snmp4j/log/LogLevel;

    move-result-object v0

    .line 95
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lorg/snmp4j/log/LogLevel;->OFF:Lorg/snmp4j/log/LogLevel;

    goto :goto_a
.end method

.method public getLogger()Lorg/snmp4j/log/LogAdapter;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    if-eqz v0, :cond_9

    .line 100
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->getName()Ljava/lang/String;

    .line 102
    :cond_9
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->name:Ljava/lang/String;

    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 106
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0, p1}, Lorg/snmp4j/log/LogAdapter;->info(Ljava/lang/Object;)V

    .line 109
    :cond_9
    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    if-eqz v0, :cond_b

    .line 113
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v0

    .line 115
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isInfoEnabled()Z
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    if-eqz v0, :cond_b

    .line 120
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isInfoEnabled()Z

    move-result v0

    .line 122
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isWarnEnabled()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    if-eqz v0, :cond_b

    .line 127
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0}, Lorg/snmp4j/log/LogAdapter;->isWarnEnabled()Z

    move-result v0

    .line 129
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setLogLevel(Lorg/snmp4j/log/LogLevel;)V
    .registers 3
    .parameter "level"

    .prologue
    .line 133
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    if-eqz v0, :cond_9

    .line 134
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0, p1}, Lorg/snmp4j/log/LogAdapter;->setLogLevel(Lorg/snmp4j/log/LogLevel;)V

    .line 136
    :cond_9
    return-void
.end method

.method public setLogger(Lorg/snmp4j/log/LogAdapter;)V
    .registers 2
    .parameter "logger"

    .prologue
    .line 159
    iput-object p1, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    .line 160
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 139
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    if-eqz v0, :cond_9

    .line 140
    iget-object v0, p0, Lorg/snmp4j/log/LogProxy;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v0, p1}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 142
    :cond_9
    return-void
.end method
