.class public Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;
.super Ljava/lang/Object;
.source "SocialHubBraodCastMap.java"


# instance fields
.field private mBroadDeleteAccount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/service/message/RequestMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadDeleteMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadSnsUpdateMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/service/message/RequestMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadUpdateMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadDeleteAccount:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadDeleteMessage:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadUpdateMessage:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadSnsUpdateMessage:Ljava/util/ArrayList;

    .line 44
    return-void
.end method


# virtual methods
.method public addRemoveAccountFromReceiver(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 7
    .parameter "message"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadDeleteAccount:Ljava/util/ArrayList;

    monitor-enter v1

    .line 50
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadDeleteAccount:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v0, "SocialHubBraodCastMap"

    const-string v2, "addRemoveAccountFromReceiver()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadDeleteAccount:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | reqID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_4e
    move-exception v0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v0
.end method

.method public addUpdateMssageFromReceiver(Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;)V
    .registers 7
    .parameter "message"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadUpdateMessage:Ljava/util/ArrayList;

    monitor-enter v1

    .line 68
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadUpdateMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v0, "SocialHubBraodCastMap"

    const-string v2, "addUpdateMssageFromReceiver()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadUpdateMessage:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | reqID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 70
    :catchall_4e
    move-exception v0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v0
.end method

.method public getEmailDeleteAccountMessage(Ljava/util/ArrayList;)Lcom/sec/android/socialhub/service/message/RequestMessage;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/android/socialhub/service/message/RequestMessage;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, array_id:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadDeleteAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/service/message/RequestMessage;

    .local v1, message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    move-object v2, v1

    .line 131
    check-cast v2, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;

    .line 136
    .local v2, msg:Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->isMatchedMessage(Ljava/util/ArrayList;Lcom/sec/android/socialhub/service/message/RequestMessage;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 138
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadDeleteAccount:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    const-string v3, "SocialHubBraodCastMap"

    const-string v4, "getEmailDeleteAccountMessage()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reqID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;->accountArray:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is handled by SocialHub."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v1           #message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    .end local v2           #msg:Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;
    :goto_5e
    return-object v1

    :cond_5f
    const/4 v1, 0x0

    goto :goto_5e
.end method

.method public getEmailUpdateMsgMessage(Ljava/util/ArrayList;I)Lcom/sec/android/socialhub/service/message/RequestMessage;
    .registers 11
    .parameter
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/sec/android/socialhub/service/message/RequestMessage;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, array_id:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadUpdateMessage:Ljava/util/ArrayList;

    monitor-enter v3

    .line 179
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadUpdateMessage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;

    .line 181
    .local v1, message:Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;
    iget v2, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->updateAction:I

    if-ne p2, v2, :cond_9

    .line 183
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->isMatchedMessage(Ljava/util/ArrayList;Lcom/sec/android/socialhub/service/message/RequestMessage;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 185
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadUpdateMessage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 187
    const-string v2, "SocialHubBraodCastMap"

    const-string v4, "getEmailUpdateMsgMessage()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reqID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is handled by SocialHub."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    monitor-exit v3

    .line 196
    .end local v1           #message:Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;
    :goto_66
    return-object v1

    .line 195
    :cond_67
    monitor-exit v3

    .line 196
    const/4 v1, 0x0

    goto :goto_66

    .line 195
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_6a
    move-exception v2

    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw v2
.end method

.method public getIMDeleteAccountMessage()Lcom/sec/android/socialhub/service/message/RequestMessage;
    .registers 6

    .prologue
    .line 113
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadDeleteAccount:Ljava/util/ArrayList;

    monitor-enter v3

    .line 115
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadDeleteAccount:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/service/message/RequestMessage;

    .line 117
    .local v1, message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    const-string v2, "4_SevenIM"

    iget-object v4, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 119
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadDeleteAccount:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 120
    monitor-exit v3

    .line 124
    .end local v1           #message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    :goto_25
    return-object v1

    .line 123
    :cond_26
    monitor-exit v3

    .line 124
    const/4 v1, 0x0

    goto :goto_25

    .line 123
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_29
    move-exception v2

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public getIMDeleteMsgMessage()Lcom/sec/android/socialhub/service/message/RequestMessage;
    .registers 6

    .prologue
    .line 97
    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadDeleteMessage:Ljava/util/ArrayList;

    monitor-enter v3

    .line 99
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadDeleteMessage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;

    .line 101
    .local v1, message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    const-string v2, "4_SevenIM"

    iget-object v4, v1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 103
    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubBraodCastMap;->mBroadDeleteAccount:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    monitor-exit v3

    .line 108
    .end local v1           #message:Lcom/sec/android/socialhub/service/message/RequestMessage;
    :goto_25
    return-object v1

    .line 107
    :cond_26
    monitor-exit v3

    .line 108
    const/4 v1, 0x0

    goto :goto_25

    .line 107
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_29
    move-exception v2

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method protected isMatchedMessage(Ljava/util/ArrayList;Lcom/sec/android/socialhub/service/message/RequestMessage;I)Z
    .registers 19
    .parameter
    .parameter "message"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/socialhub/service/message/RequestMessage;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, from_email:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 219
    .local v2, from_social:[Ljava/lang/String;
    packed-switch p3, :pswitch_data_f6

    .line 238
    :cond_4
    :goto_4
    const-string v11, "SocialHubBraodCastMap"

    const-string v12, "isMatchedMessage()"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "type - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", from_social - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    if-eqz p1, :cond_2e

    if-nez v2, :cond_53

    .line 242
    :cond_2e
    const-string v11, "SocialHubBraodCastMap"

    const-string v12, "isMatchedMessage()"

    const-string v13, "id array is null!!!"

    invoke-static {v11, v12, v13}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v11, 0x0

    .line 300
    .end local p2
    :goto_38
    return v11

    .line 222
    .restart local p2
    :pswitch_39
    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;

    if-eqz v11, :cond_4

    move-object/from16 v11, p2

    .line 224
    check-cast v11, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;

    iget-object v2, v11, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;->accountArray:[Ljava/lang/String;

    goto :goto_4

    .line 230
    :pswitch_46
    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;

    if-eqz v11, :cond_4

    move-object/from16 v11, p2

    .line 232
    check-cast v11, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;

    iget-object v2, v11, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    goto :goto_4

    .line 246
    :cond_53
    const-string v11, "SocialHubBraodCastMap"

    const-string v12, "isMatchedMessage()"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "id_from_email - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", from_social - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v8, matched_id:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_84
    if-ge v3, v7, :cond_97

    aget-object v4, v1, v3

    .line 252
    .local v4, id:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_94

    .line 254
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_94
    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    .line 258
    .end local v4           #id:Ljava/lang/String;
    :cond_97
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_cd

    .line 260
    array-length v11, v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int v10, v11, v12

    .line 262
    .local v10, size:I
    if-gtz v10, :cond_b1

    .line 264
    const-string v11, "SocialHubBraodCastMap"

    const-string v12, "isMatchedMessage()"

    const-string v13, "matched!!!"

    invoke-static {v11, v12, v13}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v11, 0x1

    goto :goto_38

    .line 267
    :cond_b1
    new-array v9, v10, [Ljava/lang/String;

    .line 269
    .local v9, remain:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 271
    .local v5, index:I
    move-object v1, v2

    array-length v7, v1

    const/4 v3, 0x0

    move v6, v5

    .end local v5           #index:I
    .local v6, index:I
    :goto_b8
    if-ge v3, v7, :cond_ca

    aget-object v4, v1, v3

    .line 273
    .restart local v4       #id:Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f3

    .line 275
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    aput-object v4, v9, v6

    .line 271
    :goto_c6
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5           #index:I
    .restart local v6       #index:I
    goto :goto_b8

    .line 279
    .end local v4           #id:Ljava/lang/String;
    :cond_ca
    packed-switch p3, :pswitch_data_fe

    .line 298
    .end local v6           #index:I
    .end local v9           #remain:[Ljava/lang/String;
    .end local v10           #size:I
    .end local p2
    :cond_cd
    :goto_cd
    const-string v11, "SocialHubBraodCastMap"

    const-string v12, "isMatchedMessage()"

    const-string v13, "matching fail.. still wait broadcast."

    invoke-static {v11, v12, v13}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v11, 0x0

    goto/16 :goto_38

    .line 282
    .restart local v6       #index:I
    .restart local v9       #remain:[Ljava/lang/String;
    .restart local v10       #size:I
    .restart local p2
    :pswitch_d9
    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;

    if-eqz v11, :cond_cd

    .line 284
    check-cast p2, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;

    .end local p2
    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;->accountArray:[Ljava/lang/String;

    goto :goto_cd

    .line 290
    .restart local p2
    :pswitch_e6
    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;

    if-eqz v11, :cond_cd

    .line 292
    check-cast p2, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;

    .end local p2
    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    goto :goto_cd

    .restart local v4       #id:Ljava/lang/String;
    .restart local p2
    :cond_f3
    move v5, v6

    .end local v6           #index:I
    .restart local v5       #index:I
    goto :goto_c6

    .line 219
    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_39
        :pswitch_46
    .end packed-switch

    .line 279
    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_e6
    .end packed-switch
.end method
