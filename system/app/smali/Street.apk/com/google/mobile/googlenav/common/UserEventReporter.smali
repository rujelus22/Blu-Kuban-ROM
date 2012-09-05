.class public Lcom/google/mobile/googlenav/common/UserEventReporter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mobile/googlenav/common/UserEventReporter$PreferenceLogEventStore;,
        Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;,
        Lcom/google/mobile/googlenav/common/UserEventReporter$StandardErrorPrinter;,
        Lcom/google/mobile/googlenav/common/UserEventReporter$OnScreenPrinter;,
        Lcom/google/mobile/googlenav/common/UserEventReporter$Printer;,
        Lcom/google/mobile/googlenav/common/UserEventReporter$LogSaver;
    }
.end annotation


# static fields
.field private static isEventLoggingEnabledForTest:Z

.field private static isExplicitClearForTest:Z

.field private static lastEventTimeMillis:J

.field private static logEventStore:Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;

.field private static logSaver:Lcom/google/mobile/googlenav/common/UserEventReporter$LogSaver;

.field private static onScreenPrinter:Lcom/google/mobile/googlenav/common/UserEventReporter$OnScreenPrinter;

.field static printer:Lcom/google/mobile/googlenav/common/UserEventReporter$Printer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/mobile/googlenav/common/UserEventReporter;->lastEventTimeMillis:J

    new-instance v0, Lcom/google/mobile/googlenav/common/UserEventReporter$StandardErrorPrinter;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/UserEventReporter$StandardErrorPrinter;-><init>()V

    sput-object v0, Lcom/google/mobile/googlenav/common/UserEventReporter;->printer:Lcom/google/mobile/googlenav/common/UserEventReporter$Printer;

    sput-boolean v2, Lcom/google/mobile/googlenav/common/UserEventReporter;->isExplicitClearForTest:Z

    sput-boolean v2, Lcom/google/mobile/googlenav/common/UserEventReporter;->isEventLoggingEnabledForTest:Z

    new-instance v0, Lcom/google/mobile/googlenav/common/UserEventReporter$PreferenceLogEventStore;

    const-string v1, "EVENT_LOG"

    invoke-direct {v0, v1}, Lcom/google/mobile/googlenav/common/UserEventReporter$PreferenceLogEventStore;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/mobile/googlenav/common/UserEventReporter;->logEventStore:Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEvent(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/mobile/googlenav/common/UserEventReporter;->addEvent(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static addEvent(ILjava/lang/String;Ljava/lang/String;J)Z
    .registers 13

    const-wide/32 v3, 0x63ff9c

    const/4 v7, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    sget-object v0, Lcom/google/mobile/googlenav/common/UserEventReporter;->logEventStore:Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;

    if-nez v0, :cond_c

    move v0, v6

    :goto_b
    return v0

    :cond_c
    sget-object v0, Lcom/google/mobile/googlenav/common/UserEventReporter;->logEventStore:Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;

    invoke-interface {v0}, Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;->readEvents()[B

    move-result-object v0

    if-eqz v0, :cond_21

    array-length v1, v0

    const/16 v2, 0x258

    if-gt v1, v2, :cond_21

    sget-wide v1, Lcom/google/mobile/googlenav/common/UserEventReporter;->lastEventTimeMillis:J

    sub-long v1, p3, v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_2c

    :cond_21
    if-nez v0, :cond_7d

    invoke-static {p3, p4}, Lcom/google/mobile/googlenav/common/UserEventReporter;->resetPersistentEventLog(J)V

    :cond_26
    :goto_26
    sget-object v0, Lcom/google/mobile/googlenav/common/UserEventReporter;->logEventStore:Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;

    invoke-interface {v0}, Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;->readEvents()[B

    move-result-object v0

    :cond_2c
    array-length v1, v0

    if-le v1, v5, :cond_89

    aget-byte v1, v0, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v7

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_48
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v1, v0

    if-le v1, v5, :cond_54

    const/4 v1, 0x2

    array-length v4, v0

    sub-int/2addr v4, v5

    invoke-virtual {v3, v0, v1, v4}, Ljava/io/DataOutputStream;->write([BII)V

    :cond_54
    int-to-short v0, p0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-wide v0, Lcom/google/mobile/googlenav/common/UserEventReporter;->lastEventTimeMillis:J

    sub-long v0, p3, v0

    const-wide/32 v4, 0x63ff9c

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v4, 0x64

    div-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v0, Lcom/google/mobile/googlenav/common/UserEventReporter;->logEventStore:Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;->writeEvents([B)V

    sput-wide p3, Lcom/google/mobile/googlenav/common/UserEventReporter;->lastEventTimeMillis:J
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_7b} :catch_86

    move v0, v7

    goto :goto_b

    :cond_7d
    sget-object v0, Lcom/google/mobile/googlenav/common/UserEventReporter;->logSaver:Lcom/google/mobile/googlenav/common/UserEventReporter$LogSaver;

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    invoke-static {v6, v0, p3, p4}, Lcom/google/mobile/googlenav/common/UserEventReporter;->uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;

    goto :goto_26

    :catch_86
    move-exception v0

    move v0, v6

    goto :goto_b

    :cond_89
    move v1, v6

    goto :goto_3b
.end method

.method public static logToScreen(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/google/mobile/googlenav/common/UserEventReporter;->onScreenPrinter:Lcom/google/mobile/googlenav/common/UserEventReporter$OnScreenPrinter;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/mobile/googlenav/common/UserEventReporter;->onScreenPrinter:Lcom/google/mobile/googlenav/common/UserEventReporter$OnScreenPrinter;

    invoke-interface {v0, p0}, Lcom/google/mobile/googlenav/common/UserEventReporter$OnScreenPrinter;->printToScreen(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private static resetPersistentEventLog(J)V
    .registers 5

    sget-object v0, Lcom/google/mobile/googlenav/common/UserEventReporter;->logEventStore:Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    :try_start_10
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, p0, p1}, Ljava/io/DataOutputStream;->writeLong(J)V

    sput-wide p0, Lcom/google/mobile/googlenav/common/UserEventReporter;->lastEventTimeMillis:J
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_22
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_2d

    sget-object v1, Lcom/google/mobile/googlenav/common/UserEventReporter;->logEventStore:Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_1e
    invoke-interface {v1, v0}, Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;->writeEvents([B)V

    goto :goto_4

    :catchall_22
    move-exception v1

    sget-object v2, Lcom/google/mobile/googlenav/common/UserEventReporter;->logEventStore:Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;->writeEvents([B)V

    throw v1

    :catch_2d
    move-exception v1

    sget-object v1, Lcom/google/mobile/googlenav/common/UserEventReporter;->logEventStore:Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1e
.end method

.method public static setLogSaver(Lcom/google/mobile/googlenav/common/UserEventReporter$LogSaver;)V
    .registers 1

    sput-object p0, Lcom/google/mobile/googlenav/common/UserEventReporter;->logSaver:Lcom/google/mobile/googlenav/common/UserEventReporter$LogSaver;

    return-void
.end method

.method public static uploadEventLog(ZLjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/google/mobile/googlenav/common/UserEventReporter;->uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lcom/google/mobile/googlenav/common/UserEventReporter;->logEventStore:Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;

    invoke-interface {v0}, Lcom/google/mobile/googlenav/common/UserEventReporter$LogEventStore;->readEvents()[B

    move-result-object v0

    sget-object v1, Lcom/google/mobile/googlenav/common/UserEventReporter;->logSaver:Lcom/google/mobile/googlenav/common/UserEventReporter$LogSaver;

    invoke-interface {v1, p0, p1, v0}, Lcom/google/mobile/googlenav/common/UserEventReporter$LogSaver;->uploadEventLog(ZLjava/lang/Object;[B)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/google/mobile/googlenav/common/UserEventReporter;->resetPersistentEventLog(J)V

    return-object v0
.end method
