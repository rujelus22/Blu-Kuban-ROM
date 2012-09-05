.class public Lcom/vlingo/client/userlogging/EventLoggingEngine;
.super Ljava/lang/Object;
.source "EventLoggingEngine.java"


# static fields
.field public static final EVENTLOGGING_ENGINE_ENABLED:Z = true

.field private static final RECORD_TRANSMIT_THRESHOLD:I = 0x14

.field protected static instance:Lcom/vlingo/client/userlogging/EventLoggingEngine;


# instance fields
.field private eventLogRecord:Lcom/vlingo/client/userlogging/EventLogRecord;

.field private final log:Lcom/vlingo/client/core/logging/Logger;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/vlingo/client/userlogging/EventLoggingEngine;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/userlogging/EventLoggingEngine;->log:Lcom/vlingo/client/core/logging/Logger;

    .line 104
    new-instance v0, Lcom/vlingo/client/userlogging/EventLogRecord;

    invoke-direct {v0}, Lcom/vlingo/client/userlogging/EventLogRecord;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/userlogging/EventLoggingEngine;->eventLogRecord:Lcom/vlingo/client/userlogging/EventLogRecord;

    .line 110
    return-void
.end method

.method private getCurrentContext()Landroid/content/Context;
    .registers 3

    .prologue
    .line 138
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 139
    .local v0, app:Landroid/app/Application;
    if-eqz v0, :cond_11

    .line 140
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static getInstance()Lcom/vlingo/client/userlogging/EventLoggingEngine;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/vlingo/client/userlogging/EventLoggingEngine;->instance:Lcom/vlingo/client/userlogging/EventLoggingEngine;

    if-nez v0, :cond_b

    .line 70
    new-instance v0, Lcom/vlingo/client/userlogging/EventLoggingEngine;

    invoke-direct {v0}, Lcom/vlingo/client/userlogging/EventLoggingEngine;-><init>()V

    sput-object v0, Lcom/vlingo/client/userlogging/EventLoggingEngine;->instance:Lcom/vlingo/client/userlogging/EventLoggingEngine;

    .line 72
    :cond_b
    sget-object v0, Lcom/vlingo/client/userlogging/EventLoggingEngine;->instance:Lcom/vlingo/client/userlogging/EventLoggingEngine;

    return-object v0
.end method

.method private declared-synchronized transmitIfNecessary()V
    .registers 5

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/EventLoggingEngine;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_21

    .line 115
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vlingo/client/userlogging/UALService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/vlingo/client/userlogging/EventLoggingEngine;->eventLogRecord:Lcom/vlingo/client/userlogging/EventLogRecord;

    invoke-virtual {v2}, Lcom/vlingo/client/userlogging/EventLogRecord;->getRecordSize()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_23

    .line 120
    const-string v2, "com.vlingo.client.userlogging.skipInitialDelay"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_27

    .line 127
    .end local v1           #intent:Landroid/content/Intent;
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 124
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_23
    :try_start_23
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_21

    .line 113
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized flushEventLogRecord()Ljava/lang/String;
    .registers 6

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/vlingo/client/userlogging/EventLoggingEngine;->eventLogRecord:Lcom/vlingo/client/userlogging/EventLogRecord;

    invoke-virtual {v1}, Lcom/vlingo/client/userlogging/EventLogRecord;->generateXml()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, xml:Ljava/lang/String;
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/EventLoggingEngine;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "events"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 134
    monitor-exit p0

    return-object v0

    .line 130
    .end local v0           #xml:Ljava/lang/String;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getEventLogRecord()Lcom/vlingo/client/userlogging/EventLogRecord;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vlingo/client/userlogging/EventLoggingEngine;->eventLogRecord:Lcom/vlingo/client/userlogging/EventLogRecord;

    return-object v0
.end method

.method public declared-synchronized logEvent(Lcom/vlingo/client/userlogging/events/Event;)V
    .registers 5
    .parameter "e"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/EventLoggingEngine;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "events"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vlingo/client/userlogging/events/Event;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 88
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/EventLoggingEngine;->transmitIfNecessary()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 90
    monitor-exit p0

    return-void

    .line 85
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
