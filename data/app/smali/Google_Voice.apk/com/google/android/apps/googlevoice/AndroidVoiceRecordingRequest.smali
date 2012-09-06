.class public Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;
.super Lcom/googlex/common/async/AbstractRequest;
.source "AndroidVoiceRecordingRequest.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/VoiceRecordingRequest;
.implements Ljava/lang/Runnable;


# instance fields
.field private callId:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private request:Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;

.field private requestStarted:J

.field private taskRunner:Lcom/googlex/common/task/TaskRunner;

.field private voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

.field private voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method public constructor <init>(Lcom/googlex/common/task/TaskRunner;Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "taskRunner"
    .parameter "voiceService"
    .parameter "voiceModel"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/googlex/common/async/AbstractRequest;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    .line 42
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 43
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 44
    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->callId:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized run()V
    .registers 7

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->request:Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;

    if-eqz v2, :cond_69

    .line 80
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_1a

    .line 81
    const-string v2, "completion callback with id \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->callId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 83
    :cond_1a
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->request:Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;->isCompletedOrException()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 84
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v0

    .line 85
    .local v0, event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    sget-object v2, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_RETRIEVE_RECORDING:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->requestStarted:J

    sub-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setDuration(J)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 88
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->request:Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;->hasException()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 89
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_5c

    .line 90
    const-string v2, "have an exception! \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->request:Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 92
    :cond_5c
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->request:Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->notifyException(Ljava/lang/Exception;)V

    .line 117
    :goto_65
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_91

    .line 120
    .end local v0           #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    :cond_69
    monitor-exit p0

    return-void

    .line 95
    .restart local v0       #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    :cond_6b
    :try_start_6b
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->request:Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;->getAudioBytes()[B

    move-result-object v2

    if-nez v2, :cond_94

    .line 96
    const-string v2, "request returned null data for id \'%s\'!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->callId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, message:Ljava/lang/String;
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_88

    .line 100
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 102
    :cond_88
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->notifyException(Ljava/lang/Exception;)V
    :try_end_90
    .catchall {:try_start_6b .. :try_end_90} :catchall_91

    goto :goto_65

    .line 79
    .end local v0           #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    .end local v1           #message:Ljava/lang/String;
    :catchall_91
    move-exception v2

    monitor-exit p0

    throw v2

    .line 104
    .restart local v0       #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    :cond_94
    :try_start_94
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->request:Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;->getAudioBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setCount(I)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 105
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_bc

    .line 106
    const-string v2, "have %d bytes of data, writing to cache"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->request:Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;->getAudioBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 109
    :cond_bc
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->request:Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;->getAudioBytes()[B

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->callId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->saveRecordingBytesForCallId([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->filename:Ljava/lang/String;

    .line 110
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_e1

    .line 111
    const-string v2, "wrote to cache as filename \'%s\', returning"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->filename:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 114
    :cond_e1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->notifyCompleted()V
    :try_end_e4
    .catchall {:try_start_94 .. :try_end_e4} :catchall_91

    goto :goto_65
.end method

.method public setCallId(Ljava/lang/String;)V
    .registers 2
    .parameter "callId"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->callId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public submit(Lcom/googlex/common/task/AbstractTask;)V
    .registers 7
    .parameter "task"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const-string v0, "task"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->setTask(Lcom/googlex/common/task/AbstractTask;)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->notifyRunning()V

    .line 56
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_20

    .line 57
    const-string v0, "Checking cache for voice recording for call id \'%s\'"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->callId:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 59
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->callId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getRecordingFilenameForCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->filename:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->filename:Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 61
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_41

    .line 62
    const-string v0, "cache contains filename \'%s\', returning"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->filename:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 64
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->notifyCompleted()V

    .line 75
    :goto_44
    return-void

    .line 66
    :cond_45
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_58

    .line 67
    const-string v0, "Fetching voice recording for call id \'%s\'"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->callId:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 69
    :cond_58
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createFetchRecordingRpc()Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->request:Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->request:Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->callId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;->setCallId(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->request:Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->MP3:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;->setFormat(Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;)V

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->requestStarted:J

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->request:Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;

    new-instance v1, Lcom/googlex/common/task/Task;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v1, v2, p0}, Lcom/googlex/common/task/Task;-><init>(Lcom/googlex/common/task/TaskRunner;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;->submit(Lcom/googlex/common/task/AbstractTask;)V

    goto :goto_44
.end method

.method public submit(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "runnable"

    .prologue
    .line 48
    new-instance v0, Lcom/googlex/common/task/Task;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->taskRunner:Lcom/googlex/common/task/TaskRunner;

    invoke-direct {v0, v1, p1}, Lcom/googlex/common/task/Task;-><init>(Lcom/googlex/common/task/TaskRunner;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/AndroidVoiceRecordingRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 49
    return-void
.end method
