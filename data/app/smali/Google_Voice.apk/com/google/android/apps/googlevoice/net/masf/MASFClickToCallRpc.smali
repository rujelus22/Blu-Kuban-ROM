.class public Lcom/google/android/apps/googlevoice/net/masf/MASFClickToCallRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFClickToCallRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/ClickToCallRpc;


# instance fields
.field private final request:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 26
    const-string v0, "/ictc"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFClickToCallRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    .line 27
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
    .line 31
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFClickToCallRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->getOutgoingNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outgoingNumber"

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFClickToCallRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFClickToCallRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFClickToCallRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->toByteArray()[B
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 31
    :catchall_23
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
    .line 39
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFClickToCallRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFClickToCallRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFClickToCallRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
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

.method public declared-synchronized setAddToAddressBook(Z)V
    .registers 3
    .parameter "addToAddressBook"

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFClickToCallRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->setCreatePhonebookIfNotExist(Z)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 46
    monitor-exit p0

    return-void

    .line 45
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setForwardingNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "forwardingNumber"

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFClickToCallRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->setForwardingNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOutgoingNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "outgoingNumber"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFClickToCallRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->setOutgoingNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
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

.method public declared-synchronized setSubscriberNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "subscriberNumber"

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFClickToCallRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->setSubscriberDid(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
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
