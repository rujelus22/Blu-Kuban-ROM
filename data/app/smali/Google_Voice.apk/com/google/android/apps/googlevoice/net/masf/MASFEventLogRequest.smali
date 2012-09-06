.class public Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;
.super Lcom/googlex/common/async/AbstractRequest;
.source "MASFEventLogRequest.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/EventLogRequest;


# static fields
.field private static final labelsByLabel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private final eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->labelsByLabel:Ljava/util/Map;

    .line 33
    sget-object v0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->labelsByLabel:Ljava/util/Map;

    const-string v1, "inbox"

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->labelsByLabel:Ljava/util/Map;

    const-string v1, "starred"

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->STARRED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->labelsByLabel:Ljava/util/Map;

    const-string v1, "all"

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->HISTORY:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->labelsByLabel:Ljava/util/Map;

    const-string v1, "spam"

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->SPAM:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->labelsByLabel:Ljava/util/Map;

    const-string v1, "trash"

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->TRASH:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->labelsByLabel:Ljava/util/Map;

    const-string v1, "voicemail"

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->VOICEMAIL:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->labelsByLabel:Ljava/util/Map;

    const-string v1, "sms"

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->SMS:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->labelsByLabel:Ljava/util/Map;

    const-string v1, "recorded"

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->RECORDED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->labelsByLabel:Ljava/util/Map;

    const-string v1, "placed"

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->PLACED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->labelsByLabel:Ljava/util/Map;

    const-string v1, "received"

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->RECEIVED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->labelsByLabel:Ljava/util/Map;

    const-string v1, "missed"

    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->MISSED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/googlex/common/async/AbstractRequest;-><init>()V

    .line 27
    invoke-static {}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->newBuilder()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    .line 49
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getClockUtils()Lcom/google/android/apps/common/time/ClockUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 50
    return-void
.end method


# virtual methods
.method public setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    .registers 3
    .parameter "action"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    .line 55
    return-object p0
.end method

.method public setCount(I)Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    .registers 5
    .parameter "count"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->setCount(J)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    .line 61
    return-object p0
.end method

.method public setDuration(J)Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    .registers 4
    .parameter "duration"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->setDuration(J)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    .line 67
    return-object p0
.end method

.method public setLabel(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    .registers 4
    .parameter "label"

    .prologue
    .line 72
    if-eqz p1, :cond_8

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->setLabel(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    .line 77
    :goto_7
    return-object p0

    .line 75
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    sget-object v1, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->USER_DEFINED:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->setLabel(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    goto :goto_7
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    .registers 3
    .parameter "label"

    .prologue
    .line 82
    sget-object v0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->labelsByLabel:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->setLabel(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 83
    return-object p0
.end method

.method public setPosition(J)Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    .registers 4
    .parameter "position"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->setPosition(J)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    .line 89
    return-object p0
.end method

.method public submit(Lcom/googlex/common/task/AbstractTask;)V
    .registers 7
    .parameter "task"

    .prologue
    .line 94
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_49

    .line 95
    const-string v0, "MASFEventLogRequest.submit(): action=%s, duration=%d, label=%s, position=%d, count=%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->getAction()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->getDuration()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->getLabel()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->getPosition()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->getCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 103
    :cond_49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v1}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->setTimestamp(J)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->getAction()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    move-result-object v0

    const-string v1, "eventInfo.getAction()"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFEventLogRequest;->eventInfo:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->build()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/masf/services/EventLogService;->log([B)V

    .line 106
    return-void
.end method
