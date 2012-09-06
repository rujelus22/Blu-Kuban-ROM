.class public Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;
.super Ljava/lang/Object;
.source "SearchConversationListProvider.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;


# instance fields
.field private final activity:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;

.field private final context:Landroid/content/Context;

.field private final eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

.field private firstSearchCompleted:Z

.field private lastRequestFailed:Z

.field private final query:Ljava/lang/String;

.field private request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

.field private requestStarted:J

.field private final voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

.field private final voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/net/VoiceService;Lcom/google/android/apps/googlevoice/net/EventLogger;)V
    .registers 10
    .parameter "context"
    .parameter "query"
    .parameter "activity"
    .parameter "voiceModel"
    .parameter "voiceService"
    .parameter "eventLogger"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    .line 39
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->requestStarted:J

    .line 40
    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->firstSearchCompleted:Z

    .line 41
    iput-boolean v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->lastRequestFailed:Z

    .line 46
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->query:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->activity:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;

    .line 49
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 50
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 51
    iput-object p6, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    .line 52
    return-void
.end method


# virtual methods
.method public getEmptyMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->context:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->search_view_empty:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Lcom/google/android/apps/googlevoice/core/Label;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getSearchLabel()Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getProgressMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->conversation_view_searching:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStarted()J
    .registers 3

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->requestStarted:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 134
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->firstSearchCompleted:Z

    if-eqz v0, :cond_33

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->context:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->search_title:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->query:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->getLabel()Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/Label;->getUnreadCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->getLabel()Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/Label;->getTotalCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_32
    return-object v0

    :cond_33
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->context:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->searching_title:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->query:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_32
.end method

.method public getUpdateState()Lcom/google/android/apps/googlevoice/UpdateStateManager$State;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->firstSearchCompleted:Z

    if-nez v0, :cond_b

    .line 167
    :cond_8
    sget-object v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->UPDATING:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    .line 172
    :goto_a
    return-object v0

    .line 169
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->lastRequestFailed:Z

    if-eqz v0, :cond_12

    .line 170
    sget-object v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->FAILED:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    goto :goto_a

    .line 172
    :cond_12
    sget-object v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->OK:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    goto :goto_a
.end method

.method public markConversationAsRead(Lcom/google/android/apps/googlevoice/model/LocalModelView;Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
    .registers 5
    .parameter "localModelView"
    .parameter "conversation"
    .parameter "markRead"

    .prologue
    .line 147
    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v0

    if-eq p3, v0, :cond_f

    .line 148
    if-eqz p3, :cond_13

    .line 149
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->getLabel()Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Label;->decrementUnreadCount()V

    .line 154
    :cond_f
    :goto_f
    invoke-interface {p1, p2, p3}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsRead(Lcom/google/android/apps/googlevoice/core/Conversation;Z)Z

    .line 155
    return-void

    .line 151
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->getLabel()Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Label;->incrementUnreadCount()V

    goto :goto_f
.end method

.method public noteUpdateStateFailedShown()V
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->lastRequestFailed:Z

    .line 179
    return-void
.end method

.method public processResponse()V
    .registers 21

    .prologue
    .line 71
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    if-eqz v14, :cond_6f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    invoke-interface {v14}, Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;->isCompletedOrException()Z

    move-result v14

    if-eqz v14, :cond_6f

    .line 72
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->firstSearchCompleted:Z

    .line 73
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->eventLogger:Lcom/google/android/apps/googlevoice/net/EventLogger;

    sget-object v15, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->SEARCH_LATENCY:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->requestStarted:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-interface/range {v14 .. v17}, Lcom/google/android/apps/googlevoice/net/EventLogger;->submitWithDuration(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;J)V

    .line 76
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    invoke-interface {v14}, Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;->hasException()Z

    move-result v14

    if-eqz v14, :cond_70

    .line 77
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->lastRequestFailed:Z

    .line 78
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    invoke-interface {v14}, Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;->getException()Ljava/lang/Exception;

    move-result-object v7

    .line 79
    .local v7, ex:Ljava/lang/Exception;
    instance-of v14, v7, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v14, :cond_56

    check-cast v7, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    .end local v7           #ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v14

    sget-object v15, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AUTH_TOKEN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    if-ne v14, v15, :cond_56

    .line 81
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->activity:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;

    invoke-interface {v14}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;->sendMessageCredentialsFailed()V

    .line 108
    :cond_56
    :goto_56
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->activity:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;

    invoke-interface {v14}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;->updateStatus()V
    :try_end_5d
    .catchall {:try_start_2a .. :try_end_5d} :catchall_c4

    .line 110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    invoke-interface {v14}, Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;->close()V

    .line 111
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    .line 112
    const-wide/high16 v14, -0x8000

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->requestStarted:J

    .line 115
    :cond_6f
    return-void

    .line 84
    :cond_70
    :try_start_70
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    invoke-interface {v14}, Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v6

    .line 85
    .local v6, conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v6, :cond_d8

    array-length v14, v6

    if-lez v14, :cond_d8

    .line 86
    const/4 v13, 0x0

    .line 87
    .local v13, unreadCount:I
    move-object v2, v6

    .local v2, arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    array-length v11, v2

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v2           #arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .local v9, i$:I
    :goto_82
    if-ge v9, v11, :cond_b1

    aget-object v5, v2, v9

    .line 88
    .local v5, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Conversation;->getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v3

    .local v3, arr$:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    array-length v12, v3

    .local v12, len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_8c
    if-ge v8, v12, :cond_a2

    aget-object v4, v3, v8

    .line 89
    .local v4, call:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)V

    .line 88
    add-int/lit8 v8, v8, 0x1

    goto :goto_8c

    .line 91
    .end local v4           #call:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_a2
    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Conversation;->refreshContactInfo()V

    .line 92
    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v14

    if-nez v14, :cond_ad

    .line 93
    add-int/lit8 v13, v13, 0x1

    .line 87
    :cond_ad
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_82

    .line 96
    .end local v3           #arr$:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v5           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v12           #len$:I
    :cond_b1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->getLabel()Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v10

    .line 97
    .local v10, label:Lcom/google/android/apps/googlevoice/core/Label;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v14, v10, v6}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->addConversations(Lcom/google/android/apps/googlevoice/core/Label;[Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 98
    array-length v14, v6

    invoke-virtual {v10, v14}, Lcom/google/android/apps/googlevoice/core/Label;->setTotalCount(I)V

    .line 99
    invoke-virtual {v10, v13}, Lcom/google/android/apps/googlevoice/core/Label;->setUnreadCount(I)V
    :try_end_c3
    .catchall {:try_start_70 .. :try_end_c3} :catchall_c4

    goto :goto_56

    .line 110
    .end local v6           #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v9           #i$:I
    .end local v10           #label:Lcom/google/android/apps/googlevoice/core/Label;
    .end local v13           #unreadCount:I
    :catchall_c4
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    invoke-interface {v15}, Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;->close()V

    .line 111
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    .line 112
    const-wide/high16 v15, -0x8000

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->requestStarted:J

    throw v14

    .line 105
    .restart local v6       #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_d8
    :try_start_d8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->activity:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;

    invoke-interface {v14}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;->requestForegroundUpdate()V
    :try_end_df
    .catchall {:try_start_d8 .. :try_end_df} :catchall_c4

    goto/16 :goto_56
.end method

.method public reloadConversationList(Landroid/os/Message;II)V
    .registers 6
    .parameter "onComplete"
    .parameter "offset"
    .parameter "limit"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    if-nez v0, :cond_36

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->lastRequestFailed:Z

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createSearchConversationsRpc()Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->query:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;->setQuery(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    invoke-interface {v0, p2}, Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;->setOffset(I)V

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    invoke-interface {v0, p3}, Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;->setLimit(I)V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;->setWantTranscript(Z)V

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->requestStarted:J

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;->submit(Landroid/os/Message;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/SearchConversationListProvider;->activity:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;->updateStatus()V

    .line 67
    :cond_36
    return-void
.end method
