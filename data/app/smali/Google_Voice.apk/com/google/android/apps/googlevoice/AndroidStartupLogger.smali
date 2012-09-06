.class public Lcom/google/android/apps/googlevoice/AndroidStartupLogger;
.super Ljava/lang/Object;
.source "AndroidStartupLogger.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/StartupLogger;


# instance fields
.field private final clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private startupDurationSent:Z

.field private startupTimeMillis:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/time/ClockUtils;)V
    .registers 3
    .parameter "clockUtils"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidStartupLogger;->startupDurationSent:Z

    .line 21
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidStartupLogger;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 22
    return-void
.end method


# virtual methods
.method public onStartupBegin()V
    .registers 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidStartupLogger;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v0}, Lcom/google/android/apps/common/time/ClockUtils;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/googlevoice/AndroidStartupLogger;->startupTimeMillis:J

    .line 27
    return-void
.end method

.method public onStartupEnd(Lcom/google/android/apps/googlevoice/net/EventLogger;)V
    .registers 8
    .parameter "eventLogger"

    .prologue
    .line 31
    iget-boolean v2, p0, Lcom/google/android/apps/googlevoice/AndroidStartupLogger;->startupDurationSent:Z

    if-nez v2, :cond_16

    .line 32
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/AndroidStartupLogger;->startupDurationSent:Z

    .line 33
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidStartupLogger;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v2}, Lcom/google/android/apps/common/time/ClockUtils;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/googlevoice/AndroidStartupLogger;->startupTimeMillis:J

    sub-long v0, v2, v4

    .line 34
    .local v0, duration:J
    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->START_APP_COMPLETE:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/apps/googlevoice/net/EventLogger;->submitWithDuration(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;J)V

    .line 37
    .end local v0           #duration:J
    :cond_16
    return-void
.end method
