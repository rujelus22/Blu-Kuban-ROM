.class public Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFGetAccountStatusRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/GetAccountStatusRpc;


# instance fields
.field private labels:[Lcom/google/android/apps/googlevoice/core/Label;

.field private final request:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 28
    const-string v0, "/gas"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

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
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusRequest;->toByteArray()[B
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 33
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccountBalance()I
    .registers 2

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->checkCompleted()V

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getAccountBalance()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 50
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlternateDID()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->checkCompleted()V

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getAlternateDidList()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 68
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDisplayableAccountBalance()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->checkCompleted()V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getDisplayableAccountBalance()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFormattedAlternateDID()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->checkCompleted()V

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getAlternateDidFormattedList()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 74
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFormattedPrimaryDID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->checkCompleted()V

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getPrimaryDidFormatted()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 80
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabels()[Lcom/google/android/apps/googlevoice/core/Label;
    .registers 2

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->checkCompleted()V

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->labels:[Lcom/google/android/apps/googlevoice/core/Label;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 62
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrimaryDID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->checkCompleted()V

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getPrimaryDid()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 86
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSubscriberType()Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    .registers 3

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->checkCompleted()V

    .line 93
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 94
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->valueOf(I)Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1d

    move-result-object v0

    .line 95
    .local v0, type:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    if-eqz v0, :cond_1a

    .line 99
    .end local v0           #type:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1d

    goto :goto_18

    .line 92
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasActiveInUse()Z
    .registers 2

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->checkCompleted()V

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->hasActiveInUse()Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 104
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isActiveInUse()Z
    .registers 2

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->checkCompleted()V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getActiveInUse()Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 110
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
    .line 40
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    .line 41
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getLabelCount()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/googlevoice/core/Label;

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 43
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    new-instance v2, Lcom/google/android/apps/googlevoice/core/Label;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    invoke-virtual {v3, v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getLabel(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/googlevoice/core/Label;-><init>(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)V

    aput-object v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 45
    :cond_29
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetAccountStatusRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_39

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 40
    .end local v0           #i:I
    :catchall_39
    move-exception v1

    monitor-exit p0

    throw v1
.end method
