.class public Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
.source "CreateConversationOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$1;,
        Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$CheckIfFailedRunnable;,
        Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;
    }
.end annotation


# instance fields
.field mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field mConversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

.field mConversationRowId:Ljava/lang/Long;

.field mMessageRowId:J

.field mMessageText:Ljava/lang/String;

.field mResultCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "audience"
    .parameter "messageText"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 46
    iput-object p3, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 47
    iput-object p4, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mMessageText:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mResultCode:I

    .line 49
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 16

    .prologue
    .line 57
    const/4 v4, 0x1

    .line 58
    .local v4, hasConnection:Z
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 61
    .local v9, cm:Landroid/net/ConnectivityManager;
    if-eqz v9, :cond_1e

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 64
    :cond_1d
    const/4 v4, 0x0

    .line 67
    :cond_1e
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/ParticipantUtils;->getParticipantListFromAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v13

    .line 70
    .local v13, participantList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_34

    .line 71
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mResultCode:I

    .line 100
    :cond_33
    :goto_33
    return-void

    .line 75
    :cond_34
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v6

    .line 76
    .local v6, builder:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_3c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 77
    .local v12, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {v6, v12}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->addParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    goto :goto_3c

    .line 79
    .end local v12           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_4c
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_b3

    .line 80
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->GROUP:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    invoke-virtual {v6, v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 84
    :goto_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/google/android/apps/plus/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, clientConversationId:Ljava/lang/String;
    invoke-virtual {v6, v8}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    .line 87
    invoke-virtual {v6}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mConversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mConversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mMessageText:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->createConversationLocally(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;Ljava/lang/String;ZLcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;)Landroid/os/Bundle;

    move-result-object v14

    .line 92
    .local v14, result:Landroid/os/Bundle;
    const-string v0, "conversation_row_id"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mConversationRowId:Ljava/lang/Long;

    .line 93
    const-string v0, "message_row_id"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mMessageRowId:J

    .line 95
    if-eqz v4, :cond_33

    .line 96
    new-instance v7, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$CheckIfFailedRunnable;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$CheckIfFailedRunnable;-><init>(Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$1;)V

    .line 97
    .local v7, checkIfFailedRunnable:Ljava/lang/Runnable;
    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 98
    .local v10, handler:Landroid/os/Handler;
    const-wide/16 v0, 0x2710

    invoke-virtual {v10, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    .line 82
    .end local v7           #checkIfFailedRunnable:Ljava/lang/Runnable;
    .end local v8           #clientConversationId:Ljava/lang/String;
    .end local v10           #handler:Landroid/os/Handler;
    .end local v14           #result:Landroid/os/Bundle;
    :cond_b3
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationType;->ONE_TO_ONE:Lcom/google/wireless/realtimechat/proto/Data$ConversationType;

    invoke-virtual {v6, v0}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$ConversationType;)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    goto :goto_58
.end method

.method public getResultCode()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mResultCode:I

    return v0
.end method

.method public getResultValue()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 128
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mConversationRowId:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;->mConversation:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;-><init>(Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;Ljava/lang/Long;Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)V

    return-object v0
.end method
