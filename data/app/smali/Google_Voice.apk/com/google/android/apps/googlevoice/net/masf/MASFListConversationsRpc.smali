.class public Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFListConversationsRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;


# instance fields
.field private conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

.field private labels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

.field private response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 33
    const-string v0, "/lc"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->labels:Ljava/util/Set;

    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized addLabel(Ljava/lang/String;)V
    .registers 3
    .parameter "label"

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    const-string v0, "label"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->labels:Ljava/util/Set;

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
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->labels:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_35

    const/4 v2, 0x1

    :goto_a
    const-string v3, "labels.size() > 0"

    invoke-static {v2, v3}, Lcom/google/android/apps/common/base/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    .line 40
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->labels:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    .local v1, l:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    invoke-virtual {v2, v1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->addLabel(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_32

    goto :goto_20

    .line 38
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Ljava/lang/String;
    :catchall_32
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_35
    const/4 v2, 0x0

    goto :goto_a

    .line 43
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_37
    :try_start_37
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->toByteArray()[B
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_32

    move-result-object v2

    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 2

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->checkCompleted()V

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 71
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemainingConversations()I
    .registers 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->checkCompleted()V

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getRemaining()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 77
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
    .line 49
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    .line 50
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getConversationCount()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/googlevoice/core/Conversation;

    iput-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 52
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;

    new-instance v2, Lcom/google/android/apps/googlevoice/core/Conversation;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    invoke-virtual {v3, v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getConversation(I)Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/googlevoice/core/Conversation;-><init>(Lcom/google/grandcentral/api2/Api2$ApiConversation;)V

    aput-object v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 54
    :cond_29
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->response:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_39

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 49
    .end local v0           #i:I
    :catchall_39
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeLabel(Ljava/lang/String;)V
    .registers 3
    .parameter "label"

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    const-string v0, "label"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->labels:Ljava/util/Set;

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

.method public declared-synchronized setLabels([Ljava/lang/String;)V
    .registers 4
    .parameter "newLabels"

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->labels:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 84
    if-eqz p1, :cond_11

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->labels:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 87
    :cond_11
    monitor-exit p0

    return-void

    .line 83
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLimit(I)V
    .registers 3
    .parameter "limit"

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->setLimit(I)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 92
    monitor-exit p0

    return-void

    .line 91
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setModifiedSinceTimestamp(J)V
    .registers 4
    .parameter "modifiedSinceTimestamp"

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->setModifiedSinceTimestamp(J)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 107
    monitor-exit p0

    return-void

    .line 106
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOffset(I)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->setOffset(I)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 97
    monitor-exit p0

    return-void

    .line 96
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWantTranscript(Z)V
    .registers 3
    .parameter "wantTranscript"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFListConversationsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->setWantTranscript(Z)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 102
    monitor-exit p0

    return-void

    .line 101
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
