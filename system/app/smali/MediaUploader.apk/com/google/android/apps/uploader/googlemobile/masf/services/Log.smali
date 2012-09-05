.class public Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;
    }
.end annotation


# static fields
.field public static final AD_EVENT_BUBBLE_VIEWED:S = 0x21s

.field public static final AD_EVENT_DETAIS_VIEWED:S = 0x22s

.field public static final AD_EVENT_DIRECTION_REQUEST:S = 0x1fs

.field public static final AD_EVENT_PHONE_CALL:S = 0x1es

.field public static final AD_EVENT_WEBSITE_CLICK:S = 0x20s

.field private static final AVERAGE_ENTRY_CHARS:I = 0x28

.field private static final EVENT_LOG_PREFERENCE:Ljava/lang/String; = "EVENT_LOG"

.field public static final EVENT_LOG_REQUEST_TYPE:I = 0xa

.field public static final EVENT_TYPE_BUBBLE_VIEW:S = 0x12s

.field public static final EVENT_TYPE_CLICK_TO_CALL:S = 0x1s

.field public static final EVENT_TYPE_DIRECTIONS:S = 0x4s

.field public static final EVENT_TYPE_HELP_VIEW:S = 0x6s

.field public static final EVENT_TYPE_HISTORY_SELECT:S = 0x11s

.field public static final EVENT_TYPE_MENU_EVENT:S = 0x10s

.field public static final EVENT_TYPE_MOVE_MAP:S = 0x3s

.field public static final EVENT_TYPE_SCREENSTATE_POP:S = 0x15s

.field public static final EVENT_TYPE_SCREENSTATE_PUSH:S = 0x14s

.field public static final EVENT_TYPE_SEARCH:S = 0x2s

.field public static final EVENT_TYPE_SEARCH_DETAILS:S = 0x5s

.field public static final EVENT_TYPE_SEND_SMS:S = 0x7s

.field public static final EVENT_TYPE_WIZARD_ENTER_STATE:S = 0x13s

.field private static final FLUSH_WAIT_TIME:J = 0x7d0L

.field private static final MAX_ENTRIES:I = 0x97

.field private static final MAX_EVENT_LOG_LENGTH:I = 0x258

.field private static final MAX_EXCEPTION_LENGTH:I = 0x12c

.field public static final SOURCE_ENGINE:Ljava/lang/String; = "ENGINE"

.field public static final SOURCE_FLASH:Ljava/lang/String; = "FLASH"

.field public static final SOURCE_GPS:Ljava/lang/String; = "GPS"

.field public static final SOURCE_MAP:Ljava/lang/String; = "MAP"

.field public static final SOURCE_MEMORY:Ljava/lang/String; = "MEMORY"

.field public static final SOURCE_MENU:Ljava/lang/String; = "MENU"

.field public static final SOURCE_REQUEST:Ljava/lang/String; = "REQUEST"

.field public static final SOURCE_STATS:Ljava/lang/String; = "STATS"

.field public static final SOURCE_UI:Ljava/lang/String; = "UI"

.field public static final SOURCE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final TARGET_ENTRIES:I = 0x32

.field private static immediateFlush:Z

.field private static lastEventTimeMillis:J

.field private static final lastExceptionString:Ljava/lang/StringBuffer;

.field private static final logEntries:[Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

.field private static logEntryCount:I

.field private static logEntryFirst:I

.field private static logEntryNext:I

.field private static final timers:Ljava/util/Hashtable;

.field static uploadCompleteLock:Ljava/lang/Object;

.field private static uploadEntries:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0x97

    const/4 v1, 0x0

    const/16 v0, 0x14

    sput v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->uploadEntries:I

    new-array v0, v3, [Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntries:[Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    sput v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryFirst:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryNext:I

    sput v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryCount:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->uploadCompleteLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->timers:Ljava/util/Hashtable;

    move v0, v1

    :goto_20
    if-ge v0, v3, :cond_2e

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntries:[Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    new-instance v2, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    invoke-direct {v2}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_2e
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->lastEventTimeMillis:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEvent(SLjava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const/4 v9, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "EVENT_LOG"

    invoke-interface {v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_6d

    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->resetEventLog(J)V

    const-string v3, "EVENT_LOG"

    invoke-interface {v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v2

    :goto_1c
    array-length v3, v2

    if-le v3, v7, :cond_7f

    aget-byte v3, v2, v8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, v2, v9

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-short v3, v3

    :goto_2b
    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_38
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v3, 0x2

    array-length v6, v2

    sub-int/2addr v6, v7

    invoke-virtual {v5, v2, v3, v6}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v5, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-wide v2, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->lastEventTimeMillis:J

    sub-long v2, v0, v2

    const-wide/16 v6, 0x64

    div-long/2addr v2, v6

    const-wide/32 v6, 0xffff

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v5, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "EVENT_LOG"

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    sput-wide v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->lastEventTimeMillis:J
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_6b} :catch_7c

    move v0, v9

    :goto_6c
    return v0

    :cond_6d
    array-length v4, v3

    const/16 v5, 0x258

    if-le v4, v5, :cond_81

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->uploadEventLog()V

    const-string v3, "EVENT_LOG"

    invoke-interface {v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_1c

    :catch_7c
    move-exception v0

    move v0, v8

    goto :goto_6c

    :cond_7f
    move v3, v8

    goto :goto_2b

    :cond_81
    move-object v2, v3

    goto :goto_1c
.end method

.method public static addExceptionString(Ljava/lang/String;)V
    .registers 6

    const/4 v4, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-void

    :cond_4
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x12c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    if-gez v2, :cond_19

    move v2, v4

    :cond_19
    if-le v1, v2, :cond_20

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_20
    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    monitor-exit v0

    goto :goto_3

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private static addLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryCount:I

    const/16 v1, 0x96

    if-ne v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No room for log entry in buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntries:[Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    sget v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryNext:I

    aget-object v0, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;->timestamp:J

    iput-object p0, v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;->source:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;->description:Ljava/lang/String;

    sget v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryCount:I

    sget v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryNext:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryNext:I

    sget v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryNext:I

    const/16 v1, 0x97

    if-lt v0, v1, :cond_33

    const/4 v0, 0x0

    sput v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryNext:I

    :cond_33
    return-void
.end method

.method public static clear()V
    .registers 2

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntries:[Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->clearLogEntries()V

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private static clearLogEntries()V
    .registers 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryFirst:I

    sput v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryNext:I

    sput v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryCount:I

    :goto_8
    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntries:[Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntries:[Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;->timestamp:J

    iput-object v4, v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;->source:Ljava/lang/String;

    iput-object v4, v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;->description:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public static endTimer(Ljava/lang/String;)J
    .registers 6

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->timers:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: no matching timer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->log(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :goto_22
    return-wide v0

    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    goto :goto_22
.end method

.method public static endTimerAndLog(Ljava/lang/String;Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->endTimerAndLogConditionally(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static endTimerAndLogConditionally(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 8

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->endTimer(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-lez v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(timer) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-wide v0
.end method

.method public static flush()V
    .registers 0

    return-void
.end method

.method public static flushAndWait()V
    .registers 0

    return-void
.end method

.method public static getLastExceptionString()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static getLog()Ljava/lang/String;
    .registers 1

    const v0, 0x7fffffff

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->getLog(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLog(I)Ljava/lang/String;
    .registers 9

    const/16 v6, 0x97

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntries:[Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    monitor-enter v0

    const/16 v1, 0x97

    :try_start_7
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    sget v3, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryFirst:I

    sub-int v4, v6, v1

    add-int/2addr v3, v4

    move v7, v3

    move v3, v1

    move v1, v7

    :goto_1a
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_32

    if-lt v1, v6, :cond_21

    const/4 v1, 0x0

    :cond_21
    sget-object v3, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntries:[Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;->appendToBuffer(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_1a

    :cond_32
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public static getLogEntries()Ljava/util/Vector;
    .registers 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sget v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryFirst:I

    move v2, v1

    move v1, v4

    :goto_a
    sget v3, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryCount:I

    if-ge v1, v3, :cond_23

    sget-object v3, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntries:[Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x97

    if-lt v2, v3, :cond_20

    move v2, v4

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_23
    return-object v0
.end method

.method private static getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;
    .registers 1

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v0

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UNKNOWN"

    invoke-static {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntries:[Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_16

    :try_start_3
    invoke-static {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->addLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryCount:I

    const/16 v2, 0x97

    if-lt v1, v2, :cond_11

    const/16 v1, 0x32

    invoke-static {v1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->truncateLog(I)V

    :cond_11
    monitor-exit v0

    :goto_12
    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    :try_start_15
    throw v1
    :try_end_16
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_16} :catch_16

    :catch_16
    move-exception v0

    :try_start_17
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Out of memory during logging!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_12

    :catch_1f
    move-exception v0

    goto :goto_12
.end method

.method public static logException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->addExceptionString(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logQuietException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static logQuietException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->sendException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static print()V
    .registers 6

    const/4 v5, 0x0

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntries:[Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    monitor-enter v0

    :try_start_4
    sget v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryFirst:I

    move v2, v1

    move v1, v5

    :goto_8
    sget v3, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryCount:I

    if-ge v1, v3, :cond_1f

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v4, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntries:[Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x97

    if-lt v2, v3, :cond_1c

    move v2, v5

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private static resetEventLog(J)V
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, p0, p1}, Ljava/io/DataOutputStream;->writeLong(J)V

    sput-wide p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->lastEventTimeMillis:J
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_30
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_13} :catch_21

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v1

    const-string v2, "EVENT_LOG"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    :goto_20
    return-void

    :catch_21
    move-exception v1

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v1

    const-string v2, "EVENT_LOG"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    goto :goto_20

    :catchall_30
    move-exception v1

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->getPersistentStore()Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "EVENT_LOG"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    throw v1
.end method

.method private static sendException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public static setImmediateFlush(Z)V
    .registers 1

    sput-boolean p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->immediateFlush:Z

    return-void
.end method

.method public static setUploadEntries(I)V
    .registers 1

    sput p0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->uploadEntries:I

    return-void
.end method

.method public static startTimer(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sget-object v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->timers:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static takeLogEntry()Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;
    .registers 3

    sget v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryCount:I

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No log entries in buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntries:[Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    sget v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryFirst:I

    aget-object v0, v0, v1

    sget v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryCount:I

    sget v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryFirst:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryFirst:I

    sget v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryFirst:I

    const/16 v2, 0x97

    if-lt v1, v2, :cond_27

    const/4 v1, 0x0

    sput v1, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryFirst:I

    :cond_27
    return-object v0
.end method

.method private static truncateLog(I)V
    .registers 3

    const/4 v1, 0x0

    :goto_1
    sget v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->logEntryCount:I

    if-le v0, p0, :cond_e

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log;->takeLogEntry()Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;

    move-result-object v0

    iput-object v1, v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;->source:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/apps/uploader/googlemobile/masf/services/Log$LogRecord;->description:Ljava/lang/String;

    goto :goto_1

    :cond_e
    return-void
.end method

.method public static uploadEventLog()V
    .registers 0

    return-void
.end method
