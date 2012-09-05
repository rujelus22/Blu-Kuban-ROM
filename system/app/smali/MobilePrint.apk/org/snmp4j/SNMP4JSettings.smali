.class public final Lorg/snmp4j/SNMP4JSettings;
.super Ljava/lang/Object;
.source "SNMP4JSettings.java"


# static fields
.field private static extensibilityEnabled:Z

.field private static volatile forwardRuntimeExceptions:Z

.field private static oidTextFormat:Lorg/snmp4j/util/OIDTextFormat;

.field private static threadFactory:Lorg/snmp4j/util/ThreadFactory;

.field private static threadJoinTimeout:J

.field private static timerFactory:Lorg/snmp4j/util/TimerFactory;

.field private static variableTextFormat:Lorg/snmp4j/util/VariableTextFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Lorg/snmp4j/SNMP4JSettings;->extensibilityEnabled:Z

    .line 59
    sput-boolean v0, Lorg/snmp4j/SNMP4JSettings;->forwardRuntimeExceptions:Z

    .line 68
    new-instance v0, Lorg/snmp4j/util/DefaultThreadFactory;

    invoke-direct {v0}, Lorg/snmp4j/util/DefaultThreadFactory;-><init>()V

    sput-object v0, Lorg/snmp4j/SNMP4JSettings;->threadFactory:Lorg/snmp4j/util/ThreadFactory;

    .line 77
    new-instance v0, Lorg/snmp4j/util/DefaultTimerFactory;

    invoke-direct {v0}, Lorg/snmp4j/util/DefaultTimerFactory;-><init>()V

    sput-object v0, Lorg/snmp4j/SNMP4JSettings;->timerFactory:Lorg/snmp4j/util/TimerFactory;

    .line 85
    new-instance v0, Lorg/snmp4j/util/SimpleOIDTextFormat;

    invoke-direct {v0}, Lorg/snmp4j/util/SimpleOIDTextFormat;-><init>()V

    sput-object v0, Lorg/snmp4j/SNMP4JSettings;->oidTextFormat:Lorg/snmp4j/util/OIDTextFormat;

    .line 93
    new-instance v0, Lorg/snmp4j/util/SimpleVariableTextFormat;

    invoke-direct {v0}, Lorg/snmp4j/util/SimpleVariableTextFormat;-><init>()V

    sput-object v0, Lorg/snmp4j/SNMP4JSettings;->variableTextFormat:Lorg/snmp4j/util/VariableTextFormat;

    .line 103
    const-wide/32 v0, 0xea60

    sput-wide v0, Lorg/snmp4j/SNMP4JSettings;->threadJoinTimeout:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getOIDTextFormat()Lorg/snmp4j/util/OIDTextFormat;
    .registers 1

    .prologue
    .line 213
    sget-object v0, Lorg/snmp4j/SNMP4JSettings;->oidTextFormat:Lorg/snmp4j/util/OIDTextFormat;

    return-object v0
.end method

.method public static final getThreadFactory()Lorg/snmp4j/util/ThreadFactory;
    .registers 1

    .prologue
    .line 167
    sget-object v0, Lorg/snmp4j/SNMP4JSettings;->threadFactory:Lorg/snmp4j/util/ThreadFactory;

    return-object v0
.end method

.method public static getThreadJoinTimeout()J
    .registers 2

    .prologue
    .line 262
    sget-wide v0, Lorg/snmp4j/SNMP4JSettings;->threadJoinTimeout:J

    return-wide v0
.end method

.method public static final getTimerFactory()Lorg/snmp4j/util/TimerFactory;
    .registers 1

    .prologue
    .line 190
    sget-object v0, Lorg/snmp4j/SNMP4JSettings;->timerFactory:Lorg/snmp4j/util/TimerFactory;

    return-object v0
.end method

.method public static final getVariableTextFormat()Lorg/snmp4j/util/VariableTextFormat;
    .registers 1

    .prologue
    .line 237
    sget-object v0, Lorg/snmp4j/SNMP4JSettings;->variableTextFormat:Lorg/snmp4j/util/VariableTextFormat;

    return-object v0
.end method

.method public static final isExtensibilityEnabled()Z
    .registers 1

    .prologue
    .line 133
    sget-boolean v0, Lorg/snmp4j/SNMP4JSettings;->extensibilityEnabled:Z

    return v0
.end method

.method public static final isFowardRuntimeExceptions()Z
    .registers 1

    .prologue
    .line 157
    sget-boolean v0, Lorg/snmp4j/SNMP4JSettings;->forwardRuntimeExceptions:Z

    return v0
.end method

.method public static setExtensibilityEnabled(Z)V
    .registers 1
    .parameter "enable"

    .prologue
    .line 121
    sput-boolean p0, Lorg/snmp4j/SNMP4JSettings;->extensibilityEnabled:Z

    .line 122
    return-void
.end method

.method public static setForwardRuntimeExceptions(Z)V
    .registers 1
    .parameter "forwardExceptions"

    .prologue
    .line 145
    sput-boolean p0, Lorg/snmp4j/SNMP4JSettings;->forwardRuntimeExceptions:Z

    .line 146
    return-void
.end method

.method public static final setOIDTextFormat(Lorg/snmp4j/util/OIDTextFormat;)V
    .registers 2
    .parameter "newOidTextFormat"

    .prologue
    .line 223
    if-nez p0, :cond_8

    .line 224
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 226
    :cond_8
    sput-object p0, Lorg/snmp4j/SNMP4JSettings;->oidTextFormat:Lorg/snmp4j/util/OIDTextFormat;

    .line 227
    return-void
.end method

.method public static final setThreadFactory(Lorg/snmp4j/util/ThreadFactory;)V
    .registers 2
    .parameter "newThreadFactory"

    .prologue
    .line 177
    if-nez p0, :cond_8

    .line 178
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 180
    :cond_8
    sput-object p0, Lorg/snmp4j/SNMP4JSettings;->threadFactory:Lorg/snmp4j/util/ThreadFactory;

    .line 181
    return-void
.end method

.method public static setThreadJoinTimeout(J)V
    .registers 2
    .parameter "millis"

    .prologue
    .line 274
    sput-wide p0, Lorg/snmp4j/SNMP4JSettings;->threadJoinTimeout:J

    .line 275
    return-void
.end method

.method public static final setTimerFactory(Lorg/snmp4j/util/TimerFactory;)V
    .registers 2
    .parameter "newTimerFactory"

    .prologue
    .line 200
    if-nez p0, :cond_8

    .line 201
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 203
    :cond_8
    sput-object p0, Lorg/snmp4j/SNMP4JSettings;->timerFactory:Lorg/snmp4j/util/TimerFactory;

    .line 204
    return-void
.end method

.method public static final setVariableTextFormat(Lorg/snmp4j/util/VariableTextFormat;)V
    .registers 2
    .parameter "newVariableTextFormat"

    .prologue
    .line 248
    if-nez p0, :cond_8

    .line 249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 251
    :cond_8
    sput-object p0, Lorg/snmp4j/SNMP4JSettings;->variableTextFormat:Lorg/snmp4j/util/VariableTextFormat;

    .line 252
    return-void
.end method
