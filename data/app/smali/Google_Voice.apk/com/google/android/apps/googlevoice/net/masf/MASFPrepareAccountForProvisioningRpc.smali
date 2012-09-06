.class public Lcom/google/android/apps/googlevoice/net/masf/MASFPrepareAccountForProvisioningRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFPrepareAccountForProvisioningRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;


# instance fields
.field private response:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 25
    const-string v0, "/pafp"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

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
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningRequest$Builder;

    move-result-object v0

    .line 32
    .local v0, request:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningRequest$Builder;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFPrepareAccountForProvisioningRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningRequest$Builder;

    .line 33
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningRequest;->toByteArray()[B
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 30
    .end local v0           #request:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningRequest$Builder;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getProvisioningResult()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;
    .registers 3

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFPrepareAccountForProvisioningRpc;->checkCompleted()V

    .line 46
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFPrepareAccountForProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 47
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFPrepareAccountForProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->getResult()I

    move-result v1

    invoke-static {v1}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1d

    move-result-object v0

    .line 49
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;
    if-eqz v0, :cond_1a

    .line 53
    .end local v0           #result:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;
    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1d

    goto :goto_18

    .line 45
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
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
    .line 39
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFPrepareAccountForProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFPrepareAccountForProvisioningRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFPrepareAccountForProvisioningRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_17

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 39
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
