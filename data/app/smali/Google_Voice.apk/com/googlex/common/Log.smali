.class public Lcom/googlex/common/Log;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlex/common/Log$PreferenceLogEventStore;,
        Lcom/googlex/common/Log$LogEventStore;,
        Lcom/googlex/common/Log$ThrowableListener;,
        Lcom/googlex/common/Log$StandardErrorPrinter;,
        Lcom/googlex/common/Log$OnScreenPrinter;,
        Lcom/googlex/common/Log$Printer;,
        Lcom/googlex/common/Log$TestEventLogEntry;,
        Lcom/googlex/common/Log$LogSaver;
    }
.end annotation


# static fields
.field public static final EVENT_LOG_PREFERENCE:Ljava/lang/String; = "EVENT_LOG"

.field private static final EVENT_TUPLE_ASSIGNMENT:Ljava/lang/String; = "="

.field private static final EVENT_TUPLE_SEPARATOR:Ljava/lang/String; = "|"

.field public static final LOG_SOURCE_ADS:Ljava/lang/String; = "ADS"

.field public static final LOG_SOURCE_NAV:Ljava/lang/String; = "NAV"

.field public static final LOG_SOURCE_PLACE_PAGE:Ljava/lang/String; = "PLACE_PAGE"

.field public static final LOG_SOURCE_PROTO:Ljava/lang/String; = "PROTO"

.field private static final MAX_ENTRIES:I = 0x96

.field private static final MAX_EVENT_LOG_LENGTH:I = 0x258

.field private static final MAX_EVENT_TIME_DELTA_MS:J = 0x63ff9cL

.field private static final MAX_LAST_THROWABLE_STRING_LENGTH:I = 0x12c

.field private static final MAX_THROWABLES:I = 0xa

.field public static final SOURCE_BACKGROUND_FEATURE_SET_MANAGER:Ljava/lang/String; = "BACKGROUND_FEATURE_SET_MANAGER"

.field public static final SOURCE_BACKGROUND_SUGGESTED_FRIEND_MANAGER:Ljava/lang/String; = "SUGGESTED_FRIEND_MANAGER"

.field public static final SOURCE_CATEGORY:Ljava/lang/String; = "CATEGORY"

.field public static final SOURCE_ENGINE:Ljava/lang/String; = "ENGINE"

.field public static final SOURCE_FLASH:Ljava/lang/String; = "FLASH"

.field public static final SOURCE_FRIENDS_LAYER:Ljava/lang/String; = "FRIENDS_LAYER"

.field public static final SOURCE_LAYER:Ljava/lang/String; = "LAYER"

.field public static final SOURCE_LAYER_MANAGER:Ljava/lang/String; = "LAYER_MANAGER"

.field public static final SOURCE_LOCATION:Ljava/lang/String; = "LOCATION"

.field public static final SOURCE_LOGIN:Ljava/lang/String; = "LOGIN"

.field public static final SOURCE_MAP:Ljava/lang/String; = "MAP"

.field public static final SOURCE_MEDIA:Ljava/lang/String; = "MEDIA"

.field public static final SOURCE_MEMORY:Ljava/lang/String; = "MEMORY"

.field public static final SOURCE_MENU:Ljava/lang/String; = "MENU"

.field public static final SOURCE_PERMISSION:Ljava/lang/String; = "PERM"

.field public static final SOURCE_PHOTO_LOAD_FROM_DISK_TASK:Ljava/lang/String; = "PHOTO_LOAD"

.field public static final SOURCE_PROFILE_PHOTO_MANAGER_IMP:Ljava/lang/String; = "SOURCE_PROFILE_PHOTO_MANAGER_IMP"

.field public static final SOURCE_REQUEST:Ljava/lang/String; = "REQUEST"

.field public static final SOURCE_SEARCH_FILTER:Ljava/lang/String; = "SEARCH_FILTER"

.field public static final SOURCE_SPEECH:Ljava/lang/String; = "SPEECH"

.field public static final SOURCE_STATS:Ljava/lang/String; = "STATS"

.field public static final SOURCE_STUN:Ljava/lang/String; = "STUN"

.field public static final SOURCE_UI:Ljava/lang/String; = "UI"

.field public static final SOURCE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

#the value of this static final field might be set in the static constructor
.field private static final START_TIME:J = 0x0L

.field private static final TARGET_ENTRIES:I = 0x32

.field private static entryBuffer:Ljava/lang/StringBuffer;

.field private static isEventLoggingEnabledForTest:Z

.field private static isExplicitClearForTest:Z

.field private static lastEventTimeMillis:J

.field private static final lastThrowableLock:Ljava/lang/Object;

.field private static lastThrowableString:Ljava/lang/String;

.field private static final logEntries:Ljava/util/Vector;

.field private static logEventStore:Lcom/googlex/common/Log$LogEventStore;

.field private static logMemory:Z

.field private static logSaver:Lcom/googlex/common/Log$LogSaver;

.field private static logThread:Z

.field private static logTime:Z

.field private static onScreenPrinter:Lcom/googlex/common/Log$OnScreenPrinter;

.field private static printer:Lcom/googlex/common/Log$Printer;

.field private static sourceFilter:[Ljava/lang/String;

.field private static throwableCount:I

.field private static throwableListener:Lcom/googlex/common/Log$ThrowableListener;

.field private static final timers:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/googlex/common/Log;->START_TIME:J

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    sput-object v0, Lcom/googlex/common/Log;->logEntries:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/googlex/common/Log;->timers:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/googlex/common/Log;->lastThrowableLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/googlex/common/Log;->lastThrowableString:Ljava/lang/String;

    sput v2, Lcom/googlex/common/Log;->throwableCount:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/googlex/common/Log;->lastEventTimeMillis:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/googlex/common/Log;->logTime:Z

    sput-boolean v2, Lcom/googlex/common/Log;->logThread:Z

    sput-boolean v2, Lcom/googlex/common/Log;->logMemory:Z

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/googlex/common/Log;->entryBuffer:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/googlex/common/Log$StandardErrorPrinter;

    invoke-direct {v0}, Lcom/googlex/common/Log$StandardErrorPrinter;-><init>()V

    sput-object v0, Lcom/googlex/common/Log;->printer:Lcom/googlex/common/Log$Printer;

    sput-boolean v2, Lcom/googlex/common/Log;->isExplicitClearForTest:Z

    sput-boolean v2, Lcom/googlex/common/Log;->isEventLoggingEnabledForTest:Z

    new-instance v0, Lcom/googlex/common/Log$PreferenceLogEventStore;

    const-string v1, "EVENT_LOG"

    invoke-direct {v0, v1}, Lcom/googlex/common/Log$PreferenceLogEventStore;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/googlex/common/Log;->logEventStore:Lcom/googlex/common/Log$LogEventStore;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEvent(S)Z
    .registers 3

    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/googlex/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static addEvent(SLjava/lang/String;)Z
    .registers 3

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/googlex/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static addEvent(SLjava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const-wide/32 v9, 0x63ff9c

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/googlex/common/Log;->logEventStore:Lcom/googlex/common/Log$LogEventStore;

    if-nez v0, :cond_b

    :goto_a
    return v2

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lcom/googlex/common/Log;->logEventStore:Lcom/googlex/common/Log$LogEventStore;

    invoke-interface {v0}, Lcom/googlex/common/Log$LogEventStore;->readEvents()[B

    move-result-object v0

    if-eqz v0, :cond_24

    array-length v1, v0

    const/16 v6, 0x258

    if-gt v1, v6, :cond_24

    sget-wide v6, Lcom/googlex/common/Log;->lastEventTimeMillis:J

    sub-long v6, v4, v6

    cmp-long v1, v6, v9

    if-lez v1, :cond_2f

    :cond_24
    if-nez v0, :cond_7d

    invoke-static {v4, v5}, Lcom/googlex/common/Log;->resetPersistentEventLog(J)V

    :cond_29
    :goto_29
    sget-object v0, Lcom/googlex/common/Log;->logEventStore:Lcom/googlex/common/Log$LogEventStore;

    invoke-interface {v0}, Lcom/googlex/common/Log$LogEventStore;->readEvents()[B

    move-result-object v0

    :cond_2f
    array-length v1, v0

    if-le v1, v8, :cond_88

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v1, v6

    int-to-short v1, v1

    :goto_3e
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_4b
    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v1, 0x2

    array-length v8, v0

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v7, v0, v1, v8}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v7, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-wide v0, Lcom/googlex/common/Log;->lastEventTimeMillis:J

    sub-long v0, v4, v0

    const-wide/32 v8, 0x63ff9c

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v8, 0x64

    div-long/2addr v0, v8

    long-to-int v0, v0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v7, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v0, Lcom/googlex/common/Log;->logEventStore:Lcom/googlex/common/Log$LogEventStore;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/googlex/common/Log$LogEventStore;->writeEvents([B)V

    sput-wide v4, Lcom/googlex/common/Log;->lastEventTimeMillis:J
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_7b} :catch_86

    move v2, v3

    goto :goto_a

    :cond_7d
    sget-object v0, Lcom/googlex/common/Log;->logSaver:Lcom/googlex/common/Log$LogSaver;

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    invoke-static {v2, v0, v4, v5}, Lcom/googlex/common/Log;->uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;

    goto :goto_29

    :catch_86
    move-exception v0

    goto :goto_a

    :cond_88
    move v1, v2

    goto :goto_3e
.end method

.method public static addThrowableString(Ljava/lang/String;)V
    .registers 5

    const/16 v3, 0x12c

    if-nez p0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v1, Lcom/googlex/common/Log;->lastThrowableLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    sget-object v0, Lcom/googlex/common/Log;->lastThrowableString:Ljava/lang/String;

    if-nez v0, :cond_26

    sput-object p0, Lcom/googlex/common/Log;->lastThrowableString:Ljava/lang/String;

    :goto_e
    sget-object v0, Lcom/googlex/common/Log;->lastThrowableString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_21

    sget-object v0, Lcom/googlex/common/Log;->lastThrowableString:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlex/common/Log;->lastThrowableString:Ljava/lang/String;

    :cond_21
    monitor-exit v1

    goto :goto_4

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :try_start_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/googlex/common/Log;->lastThrowableString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlex/common/Log;->lastThrowableString:Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_23

    goto :goto_e
.end method

.method public static appendToEventData(CDLjava/lang/StringBuffer;)V
    .registers 5

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "|"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static appendToEventData(CILjava/lang/StringBuffer;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static appendToEventData(CJLjava/lang/StringBuffer;)V
    .registers 5

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "|"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static appendToEventData(CLjava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 6

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1f
    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/googlex/common/util/text/TextUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1f
.end method

.method public static declared-synchronized clear()V
    .registers 1

    const-class v0, Lcom/googlex/common/Log;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static clearEventLogForTest()V
    .registers 2

    invoke-static {}, Lcom/googlex/common/util/RuntimeCheck;->checkTest()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlex/common/Log;->resetPersistentEventLog(J)V

    return-void
.end method

.method public static config(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "CONFIG"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/googlex/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createEventTuple([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    array-length v0, p0

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_5
    return-object v0

    :cond_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_11
    array-length v2, p0

    if-ge v0, v2, :cond_31

    aget-object v2, p0, v0

    if-eqz v2, :cond_2e

    new-instance v2, Ljava/lang/StringBuffer;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lcom/googlex/common/util/text/TextUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static endTimer(Ljava/lang/String;)J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static endTimerAndLog(Ljava/lang/String;Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static endTimerAndLogConditionally(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 6

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static fine(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "FINE"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/googlex/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static finer(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "FINER"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/googlex/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static finest(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "FINEST"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/googlex/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getEventLogForTest()Ljava/util/Vector;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/googlex/common/util/RuntimeCheck;->checkTest()V

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    sget-object v0, Lcom/googlex/common/Log;->logEventStore:Lcom/googlex/common/Log$LogEventStore;

    if-nez v0, :cond_e

    move-object v0, v6

    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Lcom/googlex/common/Log;->logEventStore:Lcom/googlex/common/Log$LogEventStore;

    invoke-interface {v0}, Lcom/googlex/common/Log$LogEventStore;->readEvents()[B

    move-result-object v0

    if-nez v0, :cond_18

    move-object v0, v6

    goto :goto_d

    :cond_18
    new-instance v8, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v8, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    const/4 v0, 0x0

    move v7, v0

    :goto_2c
    if-ge v7, v9, :cond_4f

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v0, v0, 0x64

    int-to-long v10, v0

    add-long/2addr v2, v10

    new-instance v0, Lcom/googlex/common/Log$TestEventLogEntry;

    invoke-direct/range {v0 .. v5}, Lcom/googlex/common/Log$TestEventLogEntry;-><init>(SJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v7, 0x1

    int-to-short v0, v0

    move v7, v0

    goto :goto_2c

    :cond_4f
    move-object v0, v6

    goto :goto_d
.end method

.method public static getIsEventLoggingEnabledForTest()Z
    .registers 1

    invoke-static {}, Lcom/googlex/common/util/RuntimeCheck;->checkTest()V

    sget-boolean v0, Lcom/googlex/common/Log;->isEventLoggingEnabledForTest:Z

    return v0
.end method

.method public static getLastThrowableString()Ljava/lang/String;
    .registers 3

    sget-object v1, Lcom/googlex/common/Log;->lastThrowableLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/googlex/common/Log;->lastThrowableString:Ljava/lang/String;

    const/4 v2, 0x0

    sput-object v2, Lcom/googlex/common/Log;->lastThrowableString:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static declared-synchronized getLog()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/googlex/common/Log;

    monitor-enter v0

    const v1, 0x7fffffff

    :try_start_6
    invoke-static {v1}, Lcom/googlex/common/Log;->getLog(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_c

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getLog(I)Ljava/lang/String;
    .registers 3

    const-class v1, Lcom/googlex/common/Log;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLogEntries()Ljava/util/Vector;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOnScreenPrinter()Lcom/googlex/common/Log$OnScreenPrinter;
    .registers 1

    sget-object v0, Lcom/googlex/common/Log;->onScreenPrinter:Lcom/googlex/common/Log$OnScreenPrinter;

    return-object v0
.end method

.method public static getPrinter()Lcom/googlex/common/Log$Printer;
    .registers 1

    sget-object v0, Lcom/googlex/common/Log;->printer:Lcom/googlex/common/Log$Printer;

    return-object v0
.end method

.method public static info(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "INFO"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/googlex/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static isIncludedByFilter(Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/googlex/common/Log;->sourceFilter:[Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, ""

    const-string v3, ","

    invoke-static {v0, v3}, Lcom/googlex/common/util/text/TextUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlex/common/Log;->sourceFilter:[Ljava/lang/String;

    :cond_10
    sget-object v0, Lcom/googlex/common/Log;->sourceFilter:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/googlex/common/Log;->sourceFilter:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v2, :cond_26

    sget-object v0, Lcom/googlex/common/Log;->sourceFilter:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/googlex/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    move v1, v2

    :cond_25
    :goto_25
    return v1

    :cond_26
    move v0, v1

    :goto_27
    sget-object v3, Lcom/googlex/common/Log;->sourceFilter:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_25

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/googlex/common/Log;->sourceFilter:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    move v1, v2

    goto :goto_25

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method

.method public static declared-synchronized log(Ljava/lang/String;)V
    .registers 2

    const-class v0, Lcom/googlex/common/Log;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/googlex/common/Log;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/googlex/common/Log;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/common/Log;->addThrowableString(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/googlex/common/Log;->sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static logToScreen(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/googlex/common/Log;->onScreenPrinter:Lcom/googlex/common/Log$OnScreenPrinter;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/googlex/common/Log;->onScreenPrinter:Lcom/googlex/common/Log$OnScreenPrinter;

    invoke-interface {v0, p0}, Lcom/googlex/common/Log$OnScreenPrinter;->printToScreen(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static declared-synchronized print()V
    .registers 1

    const-class v0, Lcom/googlex/common/Log;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static print(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static resetPersistentEventLog(J)V
    .registers 5

    sget-object v0, Lcom/googlex/common/Log;->logEventStore:Lcom/googlex/common/Log$LogEventStore;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    :try_start_10
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0, p0, p1}, Ljava/io/DataOutputStream;->writeLong(J)V

    sput-wide p0, Lcom/googlex/common/Log;->lastEventTimeMillis:J
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_2d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_22

    sget-object v0, Lcom/googlex/common/Log;->logEventStore:Lcom/googlex/common/Log$LogEventStore;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/googlex/common/Log$LogEventStore;->writeEvents([B)V

    goto :goto_4

    :catch_22
    move-exception v0

    sget-object v0, Lcom/googlex/common/Log;->logEventStore:Lcom/googlex/common/Log$LogEventStore;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/googlex/common/Log$LogEventStore;->writeEvents([B)V

    goto :goto_4

    :catchall_2d
    move-exception v0

    sget-object v2, Lcom/googlex/common/Log;->logEventStore:Lcom/googlex/common/Log$LogEventStore;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/googlex/common/Log$LogEventStore;->writeEvents([B)V

    throw v0
.end method

.method private static sendThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 4

    sget-object v0, Lcom/googlex/common/Log;->throwableListener:Lcom/googlex/common/Log$ThrowableListener;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/googlex/common/Log;->throwableListener:Lcom/googlex/common/Log$ThrowableListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/googlex/common/Log$ThrowableListener;->onThrowable(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_9
    return-void
.end method

.method public static setEventLoggingForTest(Z)Z
    .registers 2

    invoke-static {}, Lcom/googlex/common/util/RuntimeCheck;->checkTest()V

    sget-boolean v0, Lcom/googlex/common/Log;->isEventLoggingEnabledForTest:Z

    sput-boolean p0, Lcom/googlex/common/Log;->isEventLoggingEnabledForTest:Z

    if-eqz p0, :cond_c

    invoke-static {}, Lcom/googlex/common/Log;->clearEventLogForTest()V

    :cond_c
    return v0
.end method

.method public static setExplicitClearForTest(Z)Z
    .registers 2

    invoke-static {}, Lcom/googlex/common/util/RuntimeCheck;->checkTest()V

    sget-boolean v0, Lcom/googlex/common/Log;->isExplicitClearForTest:Z

    sput-boolean p0, Lcom/googlex/common/Log;->isExplicitClearForTest:Z

    return v0
.end method

.method public static setLogEventStore(Lcom/googlex/common/Log$LogEventStore;)V
    .registers 1

    sput-object p0, Lcom/googlex/common/Log;->logEventStore:Lcom/googlex/common/Log$LogEventStore;

    return-void
.end method

.method public static setLogSaver(Lcom/googlex/common/Log$LogSaver;)V
    .registers 1

    sput-object p0, Lcom/googlex/common/Log;->logSaver:Lcom/googlex/common/Log$LogSaver;

    return-void
.end method

.method public static setOnScreenPrinter(Lcom/googlex/common/Log$OnScreenPrinter;)V
    .registers 1

    sput-object p0, Lcom/googlex/common/Log;->onScreenPrinter:Lcom/googlex/common/Log$OnScreenPrinter;

    return-void
.end method

.method public static setOptions(ZZZ)V
    .registers 3

    sput-boolean p0, Lcom/googlex/common/Log;->logTime:Z

    sput-boolean p1, Lcom/googlex/common/Log;->logThread:Z

    sput-boolean p2, Lcom/googlex/common/Log;->logMemory:Z

    return-void
.end method

.method public static setPrinter(Lcom/googlex/common/Log$Printer;)V
    .registers 1

    sput-object p0, Lcom/googlex/common/Log;->printer:Lcom/googlex/common/Log$Printer;

    return-void
.end method

.method public static setThrowableListener(Lcom/googlex/common/Log$ThrowableListener;)V
    .registers 1

    sput-object p0, Lcom/googlex/common/Log;->throwableListener:Lcom/googlex/common/Log$ThrowableListener;

    return-void
.end method

.method public static severe(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "SEVERE"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/googlex/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startTimer(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static uploadEventLog(ZLjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/googlex/common/Log;->uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static uploadEventLog(ZLjava/lang/Object;J)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lcom/googlex/common/Log;->logEventStore:Lcom/googlex/common/Log$LogEventStore;

    invoke-interface {v0}, Lcom/googlex/common/Log$LogEventStore;->readEvents()[B

    move-result-object v0

    sget-object v1, Lcom/googlex/common/Log;->logSaver:Lcom/googlex/common/Log$LogSaver;

    invoke-interface {v1, p0, p1, v0}, Lcom/googlex/common/Log$LogSaver;->uploadEventLog(ZLjava/lang/Object;[B)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/googlex/common/Log;->resetPersistentEventLog(J)V

    return-object v0
.end method

.method public static warning(Ljava/lang/Object;)V
    .registers 3

    const-string v0, "WARNING"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/googlex/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
