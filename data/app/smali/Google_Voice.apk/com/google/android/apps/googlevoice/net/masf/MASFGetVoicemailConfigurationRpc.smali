.class public Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFGetVoicemailConfigurationRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/GetVoicemailConfigurationRpc;


# instance fields
.field private final request:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 28
    const-string v0, "/gvc"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    .line 29
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
    .line 33
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->getCarrierMccMnc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "carrierMccMnc"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phoneNumber"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->toByteArray()[B
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2e

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 33
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVoicemailNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->checkCompleted()V

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getVoicemailNumber()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 48
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVoicemailRedirectNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->checkCompleted()V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getDiversionNumber()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 54
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVoicemailRedirectString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->checkCompleted()V

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getCarrierDiversionCode()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 60
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVoicemailRedirectType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    .registers 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->hasDiversionType()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getDiversionType()I

    move-result v1

    invoke-static {v1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    move-result-object v0

    .line 70
    .local v0, voicemailDiversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    if-eqz v0, :cond_15

    .line 74
    .end local v0           #voicemailDiversionType:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    :goto_14
    return-object v0

    :cond_15
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;

    goto :goto_14
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
    .line 42
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_17

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 42
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCarrierCode(Ljava/lang/String;)V
    .registers 3
    .parameter "carrierCode"

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->setCarrierMccMnc(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "deviceNumber"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetVoicemailConfigurationRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
