.class public Lcom/x/google/masf/services/EventLogService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;
    }
.end annotation


# static fields
.field static final MAX_SAVED_EVENT_LOGS:I = 0x64

.field static final MAX_SEND_ATTEMPTS:I = 0x3

.field private static numFailedEvents:I

.field private static outstandingEventLogs:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Hashtable;
    .registers 1

    sget-object v0, Lcom/x/google/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    sget v0, Lcom/x/google/masf/services/EventLogService;->numFailedEvents:I

    return v0
.end method

.method static synthetic access$112(I)I
    .registers 2

    sget v0, Lcom/x/google/masf/services/EventLogService;->numFailedEvents:I

    add-int/2addr v0, p0

    sput v0, Lcom/x/google/masf/services/EventLogService;->numFailedEvents:I

    return v0
.end method

.method static synthetic access$120(I)I
    .registers 2

    sget v0, Lcom/x/google/masf/services/EventLogService;->numFailedEvents:I

    sub-int/2addr v0, p0

    sput v0, Lcom/x/google/masf/services/EventLogService;->numFailedEvents:I

    return v0
.end method

.method public static createNewInstanceUnitTests()V
    .registers 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/x/google/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Hashtable;

    const/4 v0, 0x0

    sput v0, Lcom/x/google/masf/services/EventLogService;->numFailedEvents:I

    return-void
.end method

.method public static getOutstandingEventLogs()Ljava/util/Vector;
    .registers 4

    sget-object v1, Lcom/x/google/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_3
    new-instance v2, Ljava/util/Vector;

    sget-object v0, Lcom/x/google/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    sget-object v0, Lcom/x/google/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;

    invoke-virtual {v0}, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;->getEventData()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_14

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    return-object v2
.end method

.method public static log(Lcom/x/google/common/io/protocol/ProtoBuf;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/x/google/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/masf/services/EventLogService;->log([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static log([B)V
    .registers 2

    new-instance v0, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;

    invoke-direct {v0, p0}, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;-><init>([B)V

    invoke-virtual {v0}, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;->send()V

    return-void
.end method

.method public static resendFailedEventLogs()V
    .registers 3

    sget-object v1, Lcom/x/google/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/x/google/masf/services/EventLogService;->outstandingEventLogs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;

    invoke-virtual {v0}, Lcom/x/google/masf/services/EventLogService$OutstandingLogEvent;->resendIfFailed()V

    goto :goto_9

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    return-void
.end method
