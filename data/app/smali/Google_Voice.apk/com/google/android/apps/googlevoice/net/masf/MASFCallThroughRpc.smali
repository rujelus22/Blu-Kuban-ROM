.class public Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFCallThroughRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/CallThroughRpc;


# instance fields
.field private final request:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 27
    const-string v0, "/ict"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    .line 28
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
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->getOutgoingNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outgoingNumber"

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->toByteArray()[B
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 33
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccessNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->checkCompleted()V

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getAccessNumber()Ljava/lang/String;
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

.method public getAccessNumberIsShadowNumber()Z
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->checkCompleted()V

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getAccessNumberIsShadowNumber()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getCallCost()I
    .registers 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->checkCompleted()V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getCallCost()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 54
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNormalizedOutgoingNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->checkCompleted()V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getNormalizedOutgoingNumber()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 65
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOutgoingNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->getOutgoingNumber()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parseResponsePayload(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .registers 3
    .parameter "responsePayload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_17

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 41
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAddToAddressBook(Z)V
    .registers 3
    .parameter "addToAddressBook"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->setCreatePhonebookIfNotExist(Z)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 78
    monitor-exit p0

    return-void

    .line 77
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCarrierHint(Ljava/lang/String;)V
    .registers 3
    .parameter "carrierHint"

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->setProviderHint(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "deviceNumber"

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->setDevicePhoneNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocationHint(Ljava/lang/String;)V
    .registers 3
    .parameter "locationHint"

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->setGeoLocationHint(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 93
    monitor-exit p0

    return-void

    .line 92
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOutgoingNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "outgoingNumber"

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->setOutgoingNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 98
    monitor-exit p0

    return-void

    .line 97
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubscriberNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "subscriberNumber"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->setSubscriberDid(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 103
    monitor-exit p0

    return-void

    .line 102
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseShadowNumber(Z)V
    .registers 3
    .parameter "useShadowNumber"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFCallThroughRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->setUseShadowNumber(Z)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    .line 108
    return-void
.end method
