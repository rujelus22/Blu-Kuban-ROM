.class public Lcom/google/android/apps/googlevoice/net/AndroidEventLogger;
.super Ljava/lang/Object;
.source "AndroidEventLogger.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/EventLogger;


# instance fields
.field private final log:Lcom/google/android/apps/common/log/GLog;

.field private final voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/common/log/GLog;)V
    .registers 3
    .parameter "voiceService"
    .parameter "log"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/net/AndroidEventLogger;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 19
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/net/AndroidEventLogger;->log:Lcom/google/android/apps/common/log/GLog;

    .line 20
    return-void
.end method

.method private createRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/AndroidEventLogger;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public submit(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)V
    .registers 5
    .parameter "action"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/AndroidEventLogger;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/net/AndroidEventLogger;->createRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 30
    return-void
.end method

.method public submitWithDuration(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;J)V
    .registers 7
    .parameter "action"
    .parameter "duration"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/AndroidEventLogger;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventWithDuration("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/net/AndroidEventLogger;->createRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setDuration(J)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 42
    return-void
.end method

.method public submitWithLabel(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;Ljava/lang/String;)V
    .registers 6
    .parameter "action"
    .parameter "label"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/AndroidEventLogger;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventWithLabel("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/net/AndroidEventLogger;->createRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 36
    return-void
.end method

.method public submitWithLabelPositionAndCount(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;Ljava/lang/String;II)V
    .registers 8
    .parameter "action"
    .parameter "label"
    .parameter "position"
    .parameter "count"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/AndroidEventLogger;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventWithLabelPositionAndCount("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/net/AndroidEventLogger;->createRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    int-to-long v1, p3

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setPosition(J)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setCount(I)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 51
    return-void
.end method
