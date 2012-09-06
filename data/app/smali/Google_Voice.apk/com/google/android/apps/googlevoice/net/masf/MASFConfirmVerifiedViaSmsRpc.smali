.class public Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFConfirmVerifiedViaSmsRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;


# instance fields
.field private final request:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 27
    const-string v0, "/cvvs"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

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
    .line 32
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->getVerificationToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "verificationToken"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->getCreateNewAccount()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->getPin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    const-string v1, "createNewAccount == true && pin == null"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->toByteArray()[B
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_3b

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 33
    :cond_39
    const/4 v0, 0x0

    goto :goto_1d

    .line 32
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDeviceNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->checkCompleted()V

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getPhoneNumber()Ljava/lang/String;
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

.method public declared-synchronized getFormattedDeviceNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->checkCompleted()V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getPhoneNumberFormatted()Ljava/lang/String;
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

.method public declared-synchronized getIsVerified()Z
    .registers 2

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->checkCompleted()V

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getVerified()Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 60
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
    .line 42
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
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

.method public setCreateNewAccount(Z)V
    .registers 3
    .parameter "createNewAccount"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->setCreateNewAccount(Z)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    .line 67
    return-void
.end method

.method public setPIN(Ljava/lang/String;)V
    .registers 3
    .parameter "pin"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->setPin(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    .line 72
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 3
    .parameter "timeZone"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->setTimezone(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    .line 77
    return-void
.end method

.method public declared-synchronized setVerificationToken(Ljava/lang/String;)V
    .registers 3
    .parameter "verificationToken"

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFConfirmVerifiedViaSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->setVerificationToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
