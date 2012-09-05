.class public Lorg/snmp4j/log/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# static fields
.field public static final SNMP4J_LOG_FACTORY_SYSTEM_PROPERTY:Ljava/lang/String; = "snmp4j.LogFactory"

.field private static configChecked:Z

.field private static snmp4jLogFactory:Lorg/snmp4j/log/LogFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lorg/snmp4j/log/LogFactory;->snmp4jLogFactory:Lorg/snmp4j/log/LogFactory;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lorg/snmp4j/log/LogFactory;->configChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkConfig()V
    .registers 1

    .prologue
    .line 62
    sget-boolean v0, Lorg/snmp4j/log/LogFactory;->configChecked:Z

    if-nez v0, :cond_a

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lorg/snmp4j/log/LogFactory;->configChecked:Z

    .line 64
    invoke-static {}, Lorg/snmp4j/log/LogFactory;->getFactoryFromSystemProperty()V

    .line 66
    :cond_a
    return-void
.end method

.method private static declared-synchronized getFactoryFromSystemProperty()V
    .registers 5

    .prologue
    .line 70
    const-class v3, Lorg/snmp4j/log/LogFactory;

    monitor-enter v3

    :try_start_3
    const-string v2, "snmp4j.LogFactory"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_9} :catch_1d

    move-result-object v1

    .line 72
    .local v1, factory:Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 74
    :try_start_c
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, c:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/log/LogFactory;

    sput-object v2, Lorg/snmp4j/log/LogFactory;->snmp4jLogFactory:Lorg/snmp4j/log/LogFactory;
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_18} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_18} :catch_21
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_18} :catch_1f
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_18} :catch_1d

    .line 87
    .end local v0           #c:Ljava/lang/Class;
    :cond_18
    :goto_18
    monitor-exit v3

    return-void

    .line 70
    :catchall_1a
    move-exception v2

    monitor-exit v3

    throw v2

    .line 85
    :catch_1d
    move-exception v2

    goto :goto_18

    .line 81
    :catch_1f
    move-exception v2

    goto :goto_18

    .line 79
    :catch_21
    move-exception v2

    goto :goto_18

    .line 77
    :catch_23
    move-exception v2

    goto :goto_18
.end method

.method public static getLogFactory()Lorg/snmp4j/log/LogFactory;
    .registers 1

    .prologue
    .line 172
    sget-object v0, Lorg/snmp4j/log/LogFactory;->snmp4jLogFactory:Lorg/snmp4j/log/LogFactory;

    if-nez v0, :cond_a

    .line 173
    new-instance v0, Lorg/snmp4j/log/LogFactory;

    invoke-direct {v0}, Lorg/snmp4j/log/LogFactory;-><init>()V

    .line 175
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lorg/snmp4j/log/LogFactory;->snmp4jLogFactory:Lorg/snmp4j/log/LogFactory;

    goto :goto_9
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;
    .registers 3
    .parameter "c"

    .prologue
    .line 52
    invoke-static {}, Lorg/snmp4j/log/LogFactory;->checkConfig()V

    .line 53
    sget-object v0, Lorg/snmp4j/log/LogFactory;->snmp4jLogFactory:Lorg/snmp4j/log/LogFactory;

    if-nez v0, :cond_a

    .line 54
    sget-object v0, Lorg/snmp4j/log/NoLogger;->instance:Lorg/snmp4j/log/NoLogger;

    .line 57
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lorg/snmp4j/log/LogFactory;->snmp4jLogFactory:Lorg/snmp4j/log/LogFactory;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/snmp4j/log/LogFactory;->createLogger(Ljava/lang/String;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    goto :goto_9
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/snmp4j/log/LogAdapter;
    .registers 2
    .parameter "className"

    .prologue
    .line 109
    invoke-static {}, Lorg/snmp4j/log/LogFactory;->checkConfig()V

    .line 110
    sget-object v0, Lorg/snmp4j/log/LogFactory;->snmp4jLogFactory:Lorg/snmp4j/log/LogFactory;

    if-nez v0, :cond_a

    .line 111
    sget-object v0, Lorg/snmp4j/log/NoLogger;->instance:Lorg/snmp4j/log/NoLogger;

    .line 114
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lorg/snmp4j/log/LogFactory;->snmp4jLogFactory:Lorg/snmp4j/log/LogFactory;

    invoke-virtual {v0, p0}, Lorg/snmp4j/log/LogFactory;->createLogger(Ljava/lang/String;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    goto :goto_9
.end method

.method public static setLogFactory(Lorg/snmp4j/log/LogFactory;)V
    .registers 2
    .parameter "factory"

    .prologue
    .line 158
    const/4 v0, 0x1

    sput-boolean v0, Lorg/snmp4j/log/LogFactory;->configChecked:Z

    .line 159
    sput-object p0, Lorg/snmp4j/log/LogFactory;->snmp4jLogFactory:Lorg/snmp4j/log/LogFactory;

    .line 160
    return-void
.end method


# virtual methods
.method protected createLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;
    .registers 3
    .parameter "c"

    .prologue
    .line 130
    sget-object v0, Lorg/snmp4j/log/NoLogger;->instance:Lorg/snmp4j/log/NoLogger;

    return-object v0
.end method

.method protected createLogger(Ljava/lang/String;)Lorg/snmp4j/log/LogAdapter;
    .registers 3
    .parameter "className"

    .prologue
    .line 146
    sget-object v0, Lorg/snmp4j/log/NoLogger;->instance:Lorg/snmp4j/log/NoLogger;

    return-object v0
.end method

.method public getRootLogger()Lorg/snmp4j/log/LogAdapter;
    .registers 2

    .prologue
    .line 96
    sget-object v0, Lorg/snmp4j/log/NoLogger;->instance:Lorg/snmp4j/log/NoLogger;

    return-object v0
.end method

.method public loggers()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 185
    sget-object v0, Lorg/snmp4j/log/NoLogger;->instance:Lorg/snmp4j/log/NoLogger;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
