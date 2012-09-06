.class public Lcom/google/android/apps/googlevoice/MasfLogStopwatch;
.super Ljava/lang/Object;
.source "MasfLogStopwatch.java"


# instance fields
.field private final clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private final eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

.field private final startTime:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/EventLogger;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V
    .registers 6
    .parameter "eventLogger"
    .parameter "clockUtils"
    .parameter "action"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    .line 25
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 26
    invoke-interface {p2}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;->startTime:J

    .line 28
    invoke-interface {p1, p3}, Lcom/google/android/apps/googlevoice/net/EventLogger;->submit(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V

    .line 29
    return-void
.end method


# virtual methods
.method public declared-synchronized logLatency(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V
    .registers 7
    .parameter "action"

    .prologue
    .line 36
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v1}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/googlevoice/MasfLogStopwatch;->startTime:J

    sub-long/2addr v1, v3

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/apps/googlevoice/net/EventLogger;->submitWithDuration(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;J)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 37
    monitor-exit p0

    return-void

    .line 36
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
