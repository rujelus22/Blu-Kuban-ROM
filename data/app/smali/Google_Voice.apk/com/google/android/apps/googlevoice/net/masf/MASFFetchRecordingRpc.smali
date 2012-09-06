.class public Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFFetchRecordingRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/FetchRecordingRpc;


# instance fields
.field private audioFormat:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

.field private callId:Ljava/lang/String;

.field private endOffset:J

.field private recording:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

.field private startOffset:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 6
    .parameter "service"
    .parameter "runner"

    .prologue
    const-wide/16 v1, -0x1

    .line 33
    const-string v0, "/fr"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 29
    iput-wide v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->startOffset:J

    .line 30
    iput-wide v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->endOffset:J

    .line 34
    return-void
.end method


# virtual methods
.method protected declared-synchronized createRequestPayload()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 38
    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->callId:Ljava/lang/String;

    const-string v2, "callId"

    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    .line 40
    .local v0, request:Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    .line 41
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->callId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->addCallId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    .line 42
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->audioFormat:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    if-eqz v1, :cond_29

    .line 43
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->audioFormat:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->addFormat(I)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    .line 45
    :cond_29
    iget-wide v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->startOffset:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_34

    .line 46
    iget-wide v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->startOffset:J

    invoke-virtual {v0, v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->setStartOffset(J)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    .line 48
    :cond_34
    iget-wide v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->endOffset:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3f

    .line 49
    iget-wide v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->endOffset:J

    invoke-virtual {v0, v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->setEndOffset(J)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    .line 51
    :cond_3f
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->toByteArray()[B
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_49

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 38
    .end local v0           #request:Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    :catchall_49
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAudioBytes()[B
    .registers 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->checkCompleted()V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->recording:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getAudioBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 70
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCallId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->checkCompleted()V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->recording:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getCallId()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 76
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEndOffset()J
    .registers 3

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->checkCompleted()V

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->recording:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getEndOffset()J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 88
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFormat()Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;
    .registers 3

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->checkCompleted()V

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->recording:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->hasFormat()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 96
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->recording:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getFormat()I

    move-result v1

    invoke-static {v1}, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1d

    move-result-object v0

    .line 97
    .local v0, format:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;
    if-eqz v0, :cond_1a

    .line 101
    .end local v0           #format:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;
    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1d

    goto :goto_18

    .line 94
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getLength()J
    .registers 3

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->checkCompleted()V

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->recording:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getSize()J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 106
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartOffset()J
    .registers 3

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->checkCompleted()V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->recording:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getStartOffset()J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 82
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parseResponsePayload(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .registers 6
    .parameter "responsePayload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;

    move-result-object v0

    .line 58
    .local v0, response:Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->getRecordingCount()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    const-string v2, "response.getRecordingCount() > 0"

    invoke-static {v1, v2}, Lcom/google/android/apps/common/base/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->getRecording(I)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->recording:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    .line 60
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->recording:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    if-nez v1, :cond_2a

    .line 61
    new-instance v1, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    const-string v2, "no ApiVoiceRecording in response"

    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->SERVER_ERROR:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;-><init>(Ljava/lang/String;Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;)V

    throw v1
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_27

    .line 57
    .end local v0           #response:Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1

    .line 64
    .restart local v0       #response:Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;
    :cond_2a
    :try_start_2a
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiRecordingResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_27

    move-result-object v1

    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized setCallId(Ljava/lang/String;)V
    .registers 3
    .parameter "callId"

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->callId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEndOffset(J)V
    .registers 4
    .parameter "endOffset"

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->endOffset:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFormat(Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;)V
    .registers 3
    .parameter "audioFormat"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->audioFormat:Lcom/google/grandcentral/api2/Api2$ApiEnum$AudioFormat;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 128
    monitor-exit p0

    return-void

    .line 127
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStartOffset(J)V
    .registers 4
    .parameter "startOffset"

    .prologue
    .line 122
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFFetchRecordingRpc;->startOffset:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 123
    monitor-exit p0

    return-void

    .line 122
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
