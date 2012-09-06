.class public Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFGetConversationRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/GetConversationRpc;


# instance fields
.field private final request:Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

.field private requestConversationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

.field private responseConversationsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/core/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 33
    const-string v0, "/gc"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->responseConversationsById:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->requestConversationIds:Ljava/util/Set;

    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized addConversationId(Ljava/lang/String;)V
    .registers 3
    .parameter "conversationId"

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    const-string v0, "conversationId"

    invoke-static {p1, v0}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->requestConversationIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 61
    monitor-exit p0

    return-void

    .line 59
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized createRequestPayload()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->requestConversationIds:Ljava/util/Set;

    const-string v3, "conversationIds"

    invoke-static {v2, v3}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    .line 40
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->requestConversationIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, conversationId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    invoke-virtual {v2, v0}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->addConversationId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_19

    .line 38
    .end local v0           #conversationId:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 43
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2e
    :try_start_2e
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequest;->toByteArray()[B
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_2b

    move-result-object v2

    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized getConversationById(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 3
    .parameter "conversationId"

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->checkCompleted()V

    .line 72
    const-string v0, "conversationId"

    invoke-static {p1, v0}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->responseConversationsById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/Conversation;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 71
    :catchall_13
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
    .line 49
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    .line 50
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getConversationCount()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 51
    new-instance v0, Lcom/google/android/apps/googlevoice/core/Conversation;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    invoke-virtual {v2, v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getConversation(I)Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/apps/googlevoice/core/Conversation;-><init>(Lcom/google/grandcentral/api2/Api2$ApiConversation;)V

    .line 52
    .local v0, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->responseConversationsById:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 54
    .end local v0           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_27
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_37

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 49
    .end local v1           #i:I
    :catchall_37
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeConversationId(Ljava/lang/String;)V
    .registers 3
    .parameter "conversationId"

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    const-string v0, "conversationId"

    invoke-static {p1, v0}, Lcom/google/android/apps/googlevoice/util/MorePreconditions;->checkObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFGetConversationRpc;->requestConversationIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 67
    monitor-exit p0

    return-void

    .line 65
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
