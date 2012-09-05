.class public Lorg/snmp4j/log/ConsoleLogAdapter;
.super Ljava/lang/Object;
.source "ConsoleLogAdapter.java"

# interfaces
.implements Lorg/snmp4j/log/LogAdapter;


# static fields
.field private static debugEnabled:Z

.field private static infoEnabled:Z

.field private static warnEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lorg/snmp4j/log/ConsoleLogAdapter;->debugEnabled:Z

    .line 36
    sput-boolean v1, Lorg/snmp4j/log/ConsoleLogAdapter;->infoEnabled:Z

    .line 37
    sput-boolean v1, Lorg/snmp4j/log/ConsoleLogAdapter;->warnEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static setDebugEnabled(Z)V
    .registers 1
    .parameter "isDebugEnabled"

    .prologue
    .line 144
    sput-boolean p0, Lorg/snmp4j/log/ConsoleLogAdapter;->debugEnabled:Z

    .line 145
    return-void
.end method

.method public static setInfoEnabled(Z)V
    .registers 1
    .parameter "isInfoEnabled"

    .prologue
    .line 152
    sput-boolean p0, Lorg/snmp4j/log/ConsoleLogAdapter;->infoEnabled:Z

    .line 153
    return-void
.end method

.method public static setWarnEnabled(Z)V
    .registers 1
    .parameter "isWarnEnabled"

    .prologue
    .line 148
    sput-boolean p0, Lorg/snmp4j/log/ConsoleLogAdapter;->warnEnabled:Z

    .line 149
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 48
    sget-boolean v0, Lorg/snmp4j/log/ConsoleLogAdapter;->debugEnabled:Z

    if-eqz v0, :cond_d

    .line 49
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    :cond_d
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 59
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 69
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 78
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 88
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public getEffectiveLogLevel()Lorg/snmp4j/log/LogLevel;
    .registers 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/snmp4j/log/ConsoleLogAdapter;->getLogLevel()Lorg/snmp4j/log/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public getLogHandler()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 201
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLogLevel()Lorg/snmp4j/log/LogLevel;
    .registers 2

    .prologue
    .line 184
    sget-boolean v0, Lorg/snmp4j/log/ConsoleLogAdapter;->debugEnabled:Z

    if-eqz v0, :cond_7

    .line 185
    sget-object v0, Lorg/snmp4j/log/LogLevel;->DEBUG:Lorg/snmp4j/log/LogLevel;

    .line 193
    :goto_6
    return-object v0

    .line 187
    :cond_7
    sget-boolean v0, Lorg/snmp4j/log/ConsoleLogAdapter;->infoEnabled:Z

    if-eqz v0, :cond_e

    .line 188
    sget-object v0, Lorg/snmp4j/log/LogLevel;->INFO:Lorg/snmp4j/log/LogLevel;

    goto :goto_6

    .line 190
    :cond_e
    sget-boolean v0, Lorg/snmp4j/log/ConsoleLogAdapter;->warnEnabled:Z

    if-eqz v0, :cond_15

    .line 191
    sget-object v0, Lorg/snmp4j/log/LogLevel;->WARN:Lorg/snmp4j/log/LogLevel;

    goto :goto_6

    .line 193
    :cond_15
    sget-object v0, Lorg/snmp4j/log/LogLevel;->OFF:Lorg/snmp4j/log/LogLevel;

    goto :goto_6
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    const-string v0, ""

    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 97
    sget-boolean v0, Lorg/snmp4j/log/ConsoleLogAdapter;->infoEnabled:Z

    if-eqz v0, :cond_d

    .line 98
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    :cond_d
    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    .prologue
    .line 109
    sget-boolean v0, Lorg/snmp4j/log/ConsoleLogAdapter;->debugEnabled:Z

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 2

    .prologue
    .line 119
    sget-boolean v0, Lorg/snmp4j/log/ConsoleLogAdapter;->infoEnabled:Z

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 2

    .prologue
    .line 129
    sget-boolean v0, Lorg/snmp4j/log/ConsoleLogAdapter;->warnEnabled:Z

    return v0
.end method

.method public setLogLevel(Lorg/snmp4j/log/LogLevel;)V
    .registers 4
    .parameter "level"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 156
    sput-boolean v0, Lorg/snmp4j/log/ConsoleLogAdapter;->debugEnabled:Z

    .line 157
    sput-boolean v0, Lorg/snmp4j/log/ConsoleLogAdapter;->warnEnabled:Z

    .line 158
    sput-boolean v0, Lorg/snmp4j/log/ConsoleLogAdapter;->infoEnabled:Z

    .line 159
    invoke-virtual {p1}, Lorg/snmp4j/log/LogLevel;->getLevel()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 177
    :goto_f
    return-void

    .line 161
    :pswitch_10
    sput-boolean v1, Lorg/snmp4j/log/ConsoleLogAdapter;->debugEnabled:Z

    .line 162
    sput-boolean v1, Lorg/snmp4j/log/ConsoleLogAdapter;->warnEnabled:Z

    .line 163
    sput-boolean v1, Lorg/snmp4j/log/ConsoleLogAdapter;->infoEnabled:Z

    goto :goto_f

    .line 167
    :pswitch_17
    sput-boolean v1, Lorg/snmp4j/log/ConsoleLogAdapter;->debugEnabled:Z

    goto :goto_f

    .line 170
    :pswitch_1a
    sput-boolean v1, Lorg/snmp4j/log/ConsoleLogAdapter;->infoEnabled:Z

    goto :goto_f

    .line 173
    :pswitch_1d
    sput-boolean v1, Lorg/snmp4j/log/ConsoleLogAdapter;->warnEnabled:Z

    goto :goto_f

    .line 159
    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_10
        :pswitch_17
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public warn(Ljava/lang/Object;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 138
    sget-boolean v0, Lorg/snmp4j/log/ConsoleLogAdapter;->warnEnabled:Z

    if-eqz v0, :cond_d

    .line 139
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    :cond_d
    return-void
.end method
