.class public Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFSearchConversationsRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;


# instance fields
.field private conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

.field private final request:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 30
    const-string v0, "/sc"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    .line 31
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
    .line 35
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "queryString"

    invoke-static {v0, v1}, Lcom/google/android/apps/common/base/Preconditions;->checkStateIsNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->toByteArray()[B
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_23

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 35
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->checkCompleted()V

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 58
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemainingConversations()I
    .registers 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->checkCompleted()V

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getRemaining()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 64
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parseResponsePayload(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .registers 6
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    .line 44
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getConversationCount()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/googlevoice/core/Conversation;

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 45
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 46
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    new-instance v2, Lcom/google/android/apps/googlevoice/core/Conversation;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    invoke-virtual {v3, v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getConversation(I)Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/googlevoice/core/Conversation;-><init>(Lcom/google/grandcentral/api2/Api2$ApiConversation;)V

    aput-object v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 48
    :cond_29
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_39

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 43
    .end local v0           #i:I
    :catchall_39
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setLimit(I)V
    .registers 3
    .parameter "limit"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->setLimit(I)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOffset(I)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->setOffset(I)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 76
    monitor-exit p0

    return-void

    .line 75
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setQuery(Ljava/lang/String;)V
    .registers 3
    .parameter "query"

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->setQuery(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWantTranscript(Z)V
    .registers 3
    .parameter "wantTranscript"

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFSearchConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->setWantTranscript(Z)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 81
    monitor-exit p0

    return-void

    .line 80
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
