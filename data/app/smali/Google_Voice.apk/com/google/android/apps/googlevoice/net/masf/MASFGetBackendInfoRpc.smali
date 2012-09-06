.class public Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFGetBackendInfoRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/GetBackendInfoRpc;


# instance fields
.field private mappings:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

.field private final request:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 28
    const-string v0, "/gbi"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

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
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->getForwardingNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "forwardingNumber"

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->setWantShadowMappings(Z)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->toByteArray()[B
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_29

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 33
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShadowNumberMappings()[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    .registers 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->checkCompleted()V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->mappings:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 57
    :catchall_8
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
    .line 42
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    .line 43
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getMappingCount()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->mappings:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

    .line 44
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->mappings:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 45
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->mappings:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

    new-instance v2, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    invoke-virtual {v3, v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getMapping(I)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;-><init>(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)V

    aput-object v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 47
    :cond_29
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_39

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 42
    .end local v0           #i:I
    :catchall_39
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setForwardingNumber(Ljava/lang/String;)V
    .registers 3
    .parameter "forwardingNumber"

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetBackendInfoRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->setForwardingNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 53
    monitor-exit p0

    return-void

    .line 52
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
