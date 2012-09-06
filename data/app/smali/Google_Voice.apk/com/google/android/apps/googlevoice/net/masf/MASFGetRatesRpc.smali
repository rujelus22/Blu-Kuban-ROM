.class public Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFGetRatesRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/GetRatesRpc;


# instance fields
.field private destinationNumbers:[Ljava/lang/String;

.field private final request:Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 27
    const-string v0, "/gr"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    .line 28
    return-void
.end method


# virtual methods
.method protected declared-synchronized createRequestPayload()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->destinationNumbers:[Ljava/lang/String;

    const-string v5, "destinationNumbers"

    invoke-static {v4, v5}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->destinationNumbers:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_2e

    const/4 v4, 0x1

    :goto_e
    const-string v5, "destinationNumbers.length > 0"

    invoke-static {v4, v5}, Lcom/google/android/apps/common/base/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 34
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v5}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->destinationNumbers:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_22
    if-ge v1, v2, :cond_30

    aget-object v3, v0, v1

    .line 36
    .local v3, number:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    invoke-virtual {v4, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->addDestinationNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 33
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #number:Ljava/lang/String;
    :cond_2e
    const/4 v4, 0x0

    goto :goto_e

    .line 38
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    :cond_30
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->toByteArray()[B
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3c

    move-result-object v4

    monitor-exit p0

    return-object v4

    .line 32
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_3c
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getTotalDisplayableCallRate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->checkCompleted()V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getDisplayableTotalCallRate()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 56
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalDisplayableSmsRate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->checkCompleted()V

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getDisplayableTotalSmsRate()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 62
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
    .line 45
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_17

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 45
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDestinationNumbers([Ljava/lang/String;)V
    .registers 3
    .parameter "destinationNumbers"

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetRatesRpc;->destinationNumbers:[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 52
    monitor-exit p0

    return-void

    .line 51
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
