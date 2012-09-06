.class public Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFVerifyViaSmsRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/VerifyViaSmsRpc;


# instance fields
.field private final request:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 25
    const-string v0, "/vvs"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    .line 26
    return-void
.end method


# virtual methods
.method protected declared-synchronized createRequestPayload()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->toByteArray()[B
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 30
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSMSNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;->checkCompleted()V

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getSmsDestination()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 43
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVerificationToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;->checkCompleted()V

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getVerificationToken()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 49
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parseResponsePayload(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .registers 3
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_17

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 37
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCountryCode(Ljava/lang/String;)V
    .registers 3
    .parameter "countryCode"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->setCountry(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 56
    monitor-exit p0

    return-void

    .line 55
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "deviceNumber"

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFVerifyViaSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->setProposedNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 61
    monitor-exit p0

    return-void

    .line 60
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
