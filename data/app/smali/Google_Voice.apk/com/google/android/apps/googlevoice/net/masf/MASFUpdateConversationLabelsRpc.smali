.class public Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;
.super Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;
.source "MASFUpdateConversationLabelsRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/UpdateConversationLabelsRpc;


# instance fields
.field private final conversations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/googlevoice/core/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/net/masf/MASFVoiceService;Lcom/googlex/common/task/TaskRunner;)V
    .registers 4
    .parameter "service"
    .parameter "runner"

    .prologue
    .line 31
    const-string v0, "/ucl"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/net/masf/MASFApiRpc;-><init>(Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/googlex/common/task/TaskRunner;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->conversations:Ljava/util/Set;

    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized addConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 3
    .parameter "conversation"

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    const-string v0, "conversation"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->conversations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 66
    monitor-exit p0

    return-void

    .line 64
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
    .line 36
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->conversations:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_39

    const/4 v2, 0x1

    :goto_a
    const-string v3, "conversations.size > 0"

    invoke-static {v2, v3}, Lcom/google/android/apps/common/base/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->service:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/net/VoiceService;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    .line 38
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->conversations:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 39
    .local v0, c:Lcom/google/android/apps/googlevoice/core/Conversation;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addConversationId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_20

    .line 36
    .end local v0           #c:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_36
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_39
    const/4 v2, 0x0

    goto :goto_a

    .line 41
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3b
    :try_start_3b
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->toByteArray()[B
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_36

    move-result-object v2

    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 3

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->conversations:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->conversations:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/googlevoice/core/Conversation;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasConversations()Z
    .registers 2

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->conversations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parseResponsePayload(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    .registers 4
    .parameter "responsePayload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;

    move-result-object v0

    .line 49
    .local v0, response:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getStatus()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->getApiStatus(I)Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 47
    .end local v0           #response:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsResponse;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 3
    .parameter "conversation"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    const-string v0, "conversation"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->conversations:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 72
    monitor-exit p0

    return-void

    .line 70
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAddLabels([Ljava/lang/String;)V
    .registers 7
    .parameter "addLabels"

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    const-string v4, "addLabels"

    invoke-static {p1, v4}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clearAddLabel()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    .line 78
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_e
    if-ge v1, v3, :cond_1a

    aget-object v2, v0, v1

    .line 79
    .local v2, l:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    invoke-virtual {v4, v2}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addAddLabel(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 81
    .end local v2           #l:Ljava/lang/String;
    :cond_1a
    monitor-exit p0

    return-void

    .line 76
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    :catchall_1c
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized setRemoveLabels([Ljava/lang/String;)V
    .registers 7
    .parameter "removeLabels"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    const-string v4, "removeLabels"

    invoke-static {p1, v4}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clearRemoveLabel()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    .line 87
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_e
    if-ge v1, v3, :cond_1a

    aget-object v2, v0, v1

    .line 88
    .local v2, l:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/net/masf/MASFUpdateConversationLabelsRpc;->request:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    invoke-virtual {v4, v2}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addRemoveLabel(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 90
    .end local v2           #l:Ljava/lang/String;
    :cond_1a
    monitor-exit p0

    return-void

    .line 85
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    :catchall_1c
    move-exception v4

    monitor-exit p0

    throw v4
.end method
