.class public Lorg/snmp4j/log/Log4jLogAdapter;
.super Ljava/lang/Object;
.source "Log4jLogAdapter.java"

# interfaces
.implements Lorg/snmp4j/log/LogAdapter;
.implements Ljava/lang/Comparable;


# static fields
.field private static final FQCN:Ljava/lang/String;

.field static class$org$snmp4j$log$Log4jLogAdapter:Ljava/lang/Class;


# instance fields
.field private final logger:Lorg/apache/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lorg/snmp4j/log/Log4jLogAdapter;->class$org$snmp4j$log$Log4jLogAdapter:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.log.Log4jLogAdapter"

    invoke-static {v0}, Lorg/snmp4j/log/Log4jLogAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/log/Log4jLogAdapter;->class$org$snmp4j$log$Log4jLogAdapter:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/log/Log4jLogAdapter;->FQCN:Ljava/lang/String;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/log/Log4jLogAdapter;->class$org$snmp4j$log$Log4jLogAdapter:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/apache/log4j/Logger;)V
    .registers 2
    .parameter "logger"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    .line 47
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 37
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private toLogLevel(Lorg/apache/log4j/Level;)Lorg/snmp4j/log/LogLevel;
    .registers 3
    .parameter "l"

    .prologue
    .line 180
    if-nez p1, :cond_5

    .line 181
    sget-object v0, Lorg/snmp4j/log/LogLevel;->NONE:Lorg/snmp4j/log/LogLevel;

    .line 199
    :goto_4
    return-object v0

    .line 183
    :cond_5
    invoke-virtual {p1}, Lorg/apache/log4j/Level;->toInt()I

    move-result v0

    sparse-switch v0, :sswitch_data_24

    .line 199
    sget-object v0, Lorg/snmp4j/log/LogLevel;->DEBUG:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 185
    :sswitch_f
    sget-object v0, Lorg/snmp4j/log/LogLevel;->OFF:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 187
    :sswitch_12
    sget-object v0, Lorg/snmp4j/log/LogLevel;->ALL:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 189
    :sswitch_15
    sget-object v0, Lorg/snmp4j/log/LogLevel;->DEBUG:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 191
    :sswitch_18
    sget-object v0, Lorg/snmp4j/log/LogLevel;->INFO:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 193
    :sswitch_1b
    sget-object v0, Lorg/snmp4j/log/LogLevel;->WARN:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 195
    :sswitch_1e
    sget-object v0, Lorg/snmp4j/log/LogLevel;->ERROR:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 197
    :sswitch_21
    sget-object v0, Lorg/snmp4j/log/LogLevel;->FATAL:Lorg/snmp4j/log/LogLevel;

    goto :goto_4

    .line 183
    :sswitch_data_24
    .sparse-switch
        -0x80000000 -> :sswitch_12
        0x2710 -> :sswitch_15
        0x4e20 -> :sswitch_18
        0x7530 -> :sswitch_1b
        0x9c40 -> :sswitch_1e
        0xc350 -> :sswitch_21
        0x7fffffff -> :sswitch_f
    .end sparse-switch
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 4
    .parameter "o"

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/snmp4j/log/Log4jLogAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/snmp4j/log/Log4jLogAdapter;

    .end local p1
    invoke-virtual {p1}, Lorg/snmp4j/log/Log4jLogAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public debug(Ljava/lang/Object;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 55
    iget-object v0, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/snmp4j/log/Log4jLogAdapter;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/snmp4j/log/Log4jLogAdapter;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 74
    iget-object v0, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/snmp4j/log/Log4jLogAdapter;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 126
    iget-object v0, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/snmp4j/log/Log4jLogAdapter;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 127
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 130
    iget-object v0, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/snmp4j/log/Log4jLogAdapter;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 131
    return-void
.end method

.method public getEffectiveLogLevel()Lorg/snmp4j/log/LogLevel;
    .registers 3

    .prologue
    .line 207
    iget-object v1, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v1}, Lorg/apache/log4j/Logger;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    .line 208
    .local v0, l:Lorg/apache/log4j/Level;
    invoke-direct {p0, v0}, Lorg/snmp4j/log/Log4jLogAdapter;->toLogLevel(Lorg/apache/log4j/Level;)Lorg/snmp4j/log/LogLevel;

    move-result-object v1

    return-object v1
.end method

.method public getLogHandler()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 212
    new-instance v0, Lorg/snmp4j/util/EnumerationIterator;

    iget-object v1, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v1}, Lorg/apache/log4j/Logger;->getAllAppenders()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/snmp4j/util/EnumerationIterator;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public getLogLevel()Lorg/snmp4j/log/LogLevel;
    .registers 3

    .prologue
    .line 175
    iget-object v1, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v1}, Lorg/apache/log4j/Logger;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    .line 176
    .local v0, l:Lorg/apache/log4j/Level;
    invoke-direct {p0, v0}, Lorg/snmp4j/log/Log4jLogAdapter;->toLogLevel(Lorg/apache/log4j/Level;)Lorg/snmp4j/log/LogLevel;

    move-result-object v1

    return-object v1
.end method

.method public getLogger()Lorg/apache/log4j/Logger;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 83
    iget-object v0, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/snmp4j/log/Log4jLogAdapter;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public setLogLevel(Lorg/snmp4j/log/LogLevel;)V
    .registers 4
    .parameter "level"

    .prologue
    .line 135
    invoke-virtual {p1}, Lorg/snmp4j/log/LogLevel;->getLevel()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 161
    const/4 v0, 0x0

    .line 163
    .local v0, l:Lorg/apache/log4j/Level;
    :goto_8
    iget-object v1, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    .line 164
    return-void

    .line 137
    .end local v0           #l:Lorg/apache/log4j/Level;
    :pswitch_e
    sget-object v0, Lorg/apache/log4j/Level;->OFF:Lorg/apache/log4j/Level;

    .line 138
    .restart local v0       #l:Lorg/apache/log4j/Level;
    goto :goto_8

    .line 140
    .end local v0           #l:Lorg/apache/log4j/Level;
    :pswitch_11
    sget-object v0, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    .line 141
    .restart local v0       #l:Lorg/apache/log4j/Level;
    goto :goto_8

    .line 143
    .end local v0           #l:Lorg/apache/log4j/Level;
    :pswitch_14
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    .line 144
    .restart local v0       #l:Lorg/apache/log4j/Level;
    goto :goto_8

    .line 146
    .end local v0           #l:Lorg/apache/log4j/Level;
    :pswitch_17
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    .line 147
    .restart local v0       #l:Lorg/apache/log4j/Level;
    goto :goto_8

    .line 149
    .end local v0           #l:Lorg/apache/log4j/Level;
    :pswitch_1a
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    .line 150
    .restart local v0       #l:Lorg/apache/log4j/Level;
    goto :goto_8

    .line 152
    .end local v0           #l:Lorg/apache/log4j/Level;
    :pswitch_1d
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    .line 153
    .restart local v0       #l:Lorg/apache/log4j/Level;
    goto :goto_8

    .line 155
    .end local v0           #l:Lorg/apache/log4j/Level;
    :pswitch_20
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    .line 156
    .restart local v0       #l:Lorg/apache/log4j/Level;
    goto :goto_8

    .line 158
    .end local v0           #l:Lorg/apache/log4j/Level;
    :pswitch_23
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    .line 159
    .restart local v0       #l:Lorg/apache/log4j/Level;
    goto :goto_8

    .line 135
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 122
    iget-object v0, p0, Lorg/snmp4j/log/Log4jLogAdapter;->logger:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/snmp4j/log/Log4jLogAdapter;->FQCN:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 123
    return-void
.end method
