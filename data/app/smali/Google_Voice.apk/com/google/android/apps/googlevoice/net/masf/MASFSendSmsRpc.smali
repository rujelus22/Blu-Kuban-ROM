.class public Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFSendSmsRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/SendSmsRpc;


# instance fields
.field private final request:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 26
    const-string v0, "/sms"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    .line 27
    return-void
.end method


# virtual methods
.method public declared-synchronized addDestination(Ljava/lang/String;J)V
    .registers 5
    .parameter "outgoingNumber"
    .parameter "requestId"

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->addOutgoingDestination(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    invoke-virtual {v0, p2, p3}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->addMessageId(J)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 59
    monitor-exit p0

    return-void

    .line 57
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

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
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->getOutgoingDestinationList()Ljava/util/List;

    move-result-object v0

    const-string v1, "outgoingDestination"

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->getSmsMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "smsMessage"

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->toByteArray()[B
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2e

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 31
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConversationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->checkCompleted()V

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->getConversationId()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 46
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->getSmsMessage()Ljava/lang/String;
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
    .line 40
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_17

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 40
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAddToAddressBook(Z)V
    .registers 3
    .parameter "addToAddressBook"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->setCreatePhonebookIfNotExist(Z)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 64
    monitor-exit p0

    return-void

    .line 63
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConversationId(Ljava/lang/String;)V
    .registers 3
    .parameter "conversationId"

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 69
    monitor-exit p0

    return-void

    .line 68
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setErrorSmsSentOnFreeQuotaError(Z)V
    .registers 3
    .parameter "sent"

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->setSendErrorSmsOnFreeQuotaError(Z)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMessage(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->setSmsMessage(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 74
    monitor-exit p0

    return-void

    .line 73
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubscriberNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "subscriberNumber"

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSendSmsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->setSubscriberDid(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
