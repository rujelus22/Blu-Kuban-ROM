.class public Lorg/snmp4j/log/JavaLogAdapter;
.super Ljava/lang/Object;
.source "JavaLogAdapter.java"

# interfaces
.implements Lorg/snmp4j/log/LogAdapter;


# instance fields
.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Ljava/util/logging/Logger;)V
    .registers 2
    .parameter "logger"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/snmp4j/log/JavaLogAdapter;->logger:Ljava/util/logging/Logger;

    .line 45
    return-void
.end method

.method private static fromJavaToSnmp4jLevel(Ljava/util/logging/Level;)Lorg/snmp4j/log/LogLevel;
    .registers 4
    .parameter "level"

    .prologue
    .line 174
    if-nez p0, :cond_5

    .line 175
    sget-object v0, Lorg/snmp4j/log/LogLevel;->NONE:Lorg/snmp4j/log/LogLevel;

    .line 202
    :goto_4
    return-object v0

    .line 177
    :cond_5
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, p0}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 178
    sget-object v0, Lorg/snmp4j/log/LogLevel;->ALL:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 180
    :cond_10
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, p0}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 181
    sget-object v0, Lorg/snmp4j/log/LogLevel;->FATAL:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 183
    :cond_1b
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, p0}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 184
    sget-object v0, Lorg/snmp4j/log/LogLevel;->WARN:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 186
    :cond_26
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, p0}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 187
    sget-object v0, Lorg/snmp4j/log/LogLevel;->INFO:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 189
    :cond_31
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, p0}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 190
    sget-object v0, Lorg/snmp4j/log/LogLevel;->DEBUG:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 192
    :cond_3c
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, p0}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 193
    sget-object v0, Lorg/snmp4j/log/LogLevel;->DEBUG:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 195
    :cond_47
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, p0}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 196
    sget-object v0, Lorg/snmp4j/log/LogLevel;->TRACE:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 198
    :cond_52
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, p0}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 199
    sget-object v0, Lorg/snmp4j/log/LogLevel;->TRACE:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 201
    :cond_5d
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0, p0}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 202
    sget-object v0, Lorg/snmp4j/log/LogLevel;->DEBUG:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 205
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Mapping not defined from Java level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " to SNMP4J logging level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fromSnmp4jToJdk(Lorg/snmp4j/log/LogLevel;)Ljava/util/logging/Level;
    .registers 4
    .parameter "logLevel"

    .prologue
    .line 134
    if-nez p0, :cond_4

    .line 135
    const/4 v0, 0x0

    .line 155
    :goto_3
    return-object v0

    .line 137
    :cond_4
    invoke-virtual {p0}, Lorg/snmp4j/log/LogLevel;->getLevel()I

    move-result v0

    packed-switch v0, :pswitch_data_46

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Mapping not defined from SNMP4J level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " to Java logging level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :pswitch_2a
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    goto :goto_3

    .line 141
    :pswitch_2d
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_3

    .line 143
    :pswitch_30
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    goto :goto_3

    .line 145
    :pswitch_33
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_3

    .line 147
    :pswitch_36
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_3

    .line 149
    :pswitch_39
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    goto :goto_3

    .line 151
    :pswitch_3c
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    goto :goto_3

    .line 153
    :pswitch_3f
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    goto :goto_3

    .line 155
    :pswitch_42
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    goto :goto_3

    .line 137
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_42
        :pswitch_3f
        :pswitch_2a
        :pswitch_30
        :pswitch_2d
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
    .end packed-switch
.end method

.method private isLoggable(Lorg/snmp4j/log/LogLevel;)Z
    .registers 4
    .parameter "logLevel"

    .prologue
    .line 116
    iget-object v0, p0, Lorg/snmp4j/log/JavaLogAdapter;->logger:Ljava/util/logging/Logger;

    invoke-static {p1}, Lorg/snmp4j/log/JavaLogAdapter;->fromSnmp4jToJdk(Lorg/snmp4j/log/LogLevel;)Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method private log(Lorg/snmp4j/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "logLevel"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 120
    iget-object v0, p0, Lorg/snmp4j/log/JavaLogAdapter;->logger:Ljava/util/logging/Logger;

    invoke-static {p1}, Lorg/snmp4j/log/JavaLogAdapter;->fromSnmp4jToJdk(Lorg/snmp4j/log/LogLevel;)Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 64
    sget-object v0, Lorg/snmp4j/log/LogLevel;->DEBUG:Lorg/snmp4j/log/LogLevel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/snmp4j/log/JavaLogAdapter;->log(Lorg/snmp4j/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 76
    sget-object v0, Lorg/snmp4j/log/LogLevel;->ERROR:Lorg/snmp4j/log/LogLevel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/snmp4j/log/JavaLogAdapter;->log(Lorg/snmp4j/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "message"
    .parameter "t"

    .prologue
    .line 80
    sget-object v0, Lorg/snmp4j/log/LogLevel;->ERROR:Lorg/snmp4j/log/LogLevel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/snmp4j/log/JavaLogAdapter;->log(Lorg/snmp4j/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 84
    sget-object v0, Lorg/snmp4j/log/LogLevel;->FATAL:Lorg/snmp4j/log/LogLevel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/snmp4j/log/JavaLogAdapter;->log(Lorg/snmp4j/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "message"
    .parameter "t"

    .prologue
    .line 88
    sget-object v0, Lorg/snmp4j/log/LogLevel;->FATAL:Lorg/snmp4j/log/LogLevel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/snmp4j/log/JavaLogAdapter;->log(Lorg/snmp4j/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method public getEffectiveLogLevel()Lorg/snmp4j/log/LogLevel;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/snmp4j/log/JavaLogAdapter;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-static {v0}, Lorg/snmp4j/log/JavaLogAdapter;->fromJavaToSnmp4jLevel(Ljava/util/logging/Level;)Lorg/snmp4j/log/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public getLogHandler()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/snmp4j/log/JavaLogAdapter;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLogLevel()Lorg/snmp4j/log/LogLevel;
    .registers 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/snmp4j/log/JavaLogAdapter;->getEffectiveLogLevel()Lorg/snmp4j/log/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/snmp4j/log/JavaLogAdapter;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 68
    sget-object v0, Lorg/snmp4j/log/LogLevel;->INFO:Lorg/snmp4j/log/LogLevel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/snmp4j/log/JavaLogAdapter;->log(Lorg/snmp4j/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    .prologue
    .line 50
    sget-object v0, Lorg/snmp4j/log/LogLevel;->DEBUG:Lorg/snmp4j/log/LogLevel;

    invoke-direct {p0, v0}, Lorg/snmp4j/log/JavaLogAdapter;->isLoggable(Lorg/snmp4j/log/LogLevel;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lorg/snmp4j/log/LogLevel;->INFO:Lorg/snmp4j/log/LogLevel;

    invoke-direct {p0, v0}, Lorg/snmp4j/log/JavaLogAdapter;->isLoggable(Lorg/snmp4j/log/LogLevel;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 2

    .prologue
    .line 58
    sget-object v0, Lorg/snmp4j/log/LogLevel;->WARN:Lorg/snmp4j/log/LogLevel;

    invoke-direct {p0, v0}, Lorg/snmp4j/log/JavaLogAdapter;->isLoggable(Lorg/snmp4j/log/LogLevel;)Z

    move-result v0

    return v0
.end method

.method public setLogLevel(Lorg/snmp4j/log/LogLevel;)V
    .registers 4
    .parameter "logLevel"

    .prologue
    .line 110
    iget-object v0, p0, Lorg/snmp4j/log/JavaLogAdapter;->logger:Ljava/util/logging/Logger;

    invoke-static {p1}, Lorg/snmp4j/log/JavaLogAdapter;->fromSnmp4jToJdk(Lorg/snmp4j/log/LogLevel;)Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 111
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 72
    sget-object v0, Lorg/snmp4j/log/LogLevel;->WARN:Lorg/snmp4j/log/LogLevel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/snmp4j/log/JavaLogAdapter;->log(Lorg/snmp4j/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method
