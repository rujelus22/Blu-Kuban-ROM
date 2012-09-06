.class public Lcom/android/email/GroupMessagingListener;
.super Lcom/android/email/MessagingListener;
.source "GroupMessagingListener.java"


# instance fields
.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/email/MessagingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/android/email/MessagingListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/email/MessagingListener;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/email/MessagingListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkMailFinished(Landroid/content/Context;JJJ)V
    .registers 17
    .parameter "context"
    .parameter "accountId"
    .parameter "folderId"
    .parameter "tag"

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 130
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->checkMailFinished(Landroid/content/Context;JJJ)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_7

    .line 129
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 132
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_1e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized checkMailStarted(Landroid/content/Context;JJ)V
    .registers 13
    .parameter "context"
    .parameter "accountId"
    .parameter "tag"

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 122
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->checkMailStarted(Landroid/content/Context;JJ)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_7

    .line 121
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 124
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1d
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized controllerCommandCompleted(Z)V
    .registers 5
    .parameter "moreCommandsToRun"

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 200
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1}, Lcom/android/email/MessagingListener;->controllerCommandCompleted(Z)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 199
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 202
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized isActiveListener(Lcom/android/email/MessagingListener;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listFoldersFailed(JLjava/lang/String;)V
    .registers 7
    .parameter "accountId"
    .parameter "message"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 64
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/MessagingListener;->listFoldersFailed(JLjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 63
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 66
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized listFoldersFinished(J)V
    .registers 6
    .parameter "accountId"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 71
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->listFoldersFinished(J)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 70
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 73
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized listFoldersStarted(J)V
    .registers 6
    .parameter "accountId"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 57
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->listFoldersStarted(J)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 56
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 59
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    .registers 19
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "me"
    .parameter "background"

    .prologue
    .line 192
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 193
    invoke-virtual/range {v0 .. v8}, Lcom/android/email/MessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1e

    goto :goto_7

    .line 192
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 195
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_21
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadAttachmentFinished(JJJ)V
    .registers 15
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 181
    invoke-virtual/range {v0 .. v6}, Lcom/android/email/MessagingListener;->loadAttachmentFinished(JJJ)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_7

    .line 180
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 183
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_1d
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadAttachmentStarted(JJJZ)V
    .registers 17
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    .line 171
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->loadAttachmentStarted(JJJZ)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1c

    goto :goto_7

    .line 170
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1

    .line 173
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_1f
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadMessageForViewFailed(JLjava/lang/String;)V
    .registers 7
    .parameter "messageId"
    .parameter "message"

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 115
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/MessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 114
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 117
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadMessageForViewFinished(J)V
    .registers 6
    .parameter "messageId"

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 108
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->loadMessageForViewFinished(J)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 107
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 110
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadMessageForViewStarted(J)V
    .registers 6
    .parameter "messageId"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 101
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->loadMessageForViewStarted(J)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 100
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 103
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeListener(Lcom/android/email/MessagingListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 48
    monitor-exit p0

    return-void

    .line 47
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendPendingMessagesCompleted(J)V
    .registers 6
    .parameter "accountId"

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 144
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->sendPendingMessagesCompleted(J)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 143
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 146
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    .registers 13
    .parameter "accountId"
    .parameter "messageId"
    .parameter "reason"

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 152
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_7

    .line 151
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 154
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1d
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesStarted(JJ)V
    .registers 8
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 137
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/MessagingListener;->sendPendingMessagesStarted(JJ)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 136
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 139
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    .registers 13
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "e"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_7

    .line 93
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 96
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1d
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synchronizeMailboxFinished(JJIILjava/util/ArrayList;)V
    .registers 17
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "totalMessagesInMailbox"
    .parameter "numNewMessages"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p7, addedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 86
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->synchronizeMailboxFinished(JJIILjava/util/ArrayList;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_7

    .line 85
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 89
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_20
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synchronizeMailboxStarted(JJ)V
    .registers 8
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 78
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/MessagingListener;->synchronizeMailboxStarted(JJ)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 77
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 80
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1a
    monitor-exit p0

    return-void
.end method
