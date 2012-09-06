.class public Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;
.super Ljava/lang/Object;
.source "LabelConversationListProvider.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;


# instance fields
.field private final activity:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;

.field private final context:Landroid/content/Context;

.field private final labelName:Ljava/lang/String;

.field private lastRequestFailed:Z

.field private request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

.field private requestStarted:J

.field private final voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

.field private final voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/net/VoiceService;)V
    .registers 8
    .parameter "context"
    .parameter "labelName"
    .parameter "activity"
    .parameter "voiceModel"
    .parameter "voiceService"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    .line 38
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->requestStarted:J

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->lastRequestFailed:Z

    .line 43
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->labelName:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->activity:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;

    .line 46
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 47
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 48
    return-void
.end method


# virtual methods
.method public getEmptyMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->context:Landroid/content/Context;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->conversation_view_empty:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Lcom/google/android/apps/googlevoice/core/Label;
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->labelName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getProgressMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->conversation_view_downloading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStarted()J
    .registers 3

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->requestStarted:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->getLabel()Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/core/Label;->getTitleWithCounts(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateState()Lcom/google/android/apps/googlevoice/UpdateStateManager$State;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    if-eqz v0, :cond_7

    .line 143
    sget-object v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->UPDATING:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    .line 148
    :goto_6
    return-object v0

    .line 145
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->lastRequestFailed:Z

    if-eqz v0, :cond_e

    .line 146
    sget-object v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->FAILED:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    goto :goto_6

    .line 148
    :cond_e
    sget-object v0, Lcom/google/android/apps/googlevoice/UpdateStateManager$State;->OK:Lcom/google/android/apps/googlevoice/UpdateStateManager$State;

    goto :goto_6
.end method

.method public markConversationAsRead(Lcom/google/android/apps/googlevoice/model/LocalModelView;Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
    .registers 4
    .parameter "localModelView"
    .parameter "conversation"
    .parameter "markRead"

    .prologue
    .line 132
    invoke-interface {p1, p2, p3}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->markConversationAsRead(Lcom/google/android/apps/googlevoice/core/Conversation;Z)Z

    .line 133
    return-void
.end method

.method public noteUpdateStateFailedShown()V
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->lastRequestFailed:Z

    .line 154
    return-void
.end method

.method public processResponse()V
    .registers 18

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    if-eqz v13, :cond_79

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->isCompletedOrException()Z

    move-result v13

    if-eqz v13, :cond_79

    .line 68
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createEventLogRequest()Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    move-result-object v6

    .line 69
    .local v6, event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    sget-object v13, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->LATENCY_REFRESH_ADDITIONAL_INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-interface {v6, v13}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setAction(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->requestStarted:J

    sub-long/2addr v13, v15

    invoke-interface {v6, v13, v14}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setDuration(J)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 71
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->labelName:Ljava/lang/String;

    invoke-interface {v6, v13}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->setLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/net/EventLogRequest;

    .line 72
    const/4 v13, 0x0

    invoke-interface {v6, v13}, Lcom/google/android/apps/googlevoice/net/EventLogRequest;->submit(Lcom/googlex/common/task/AbstractTask;)V

    .line 74
    :try_start_34
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->hasException()Z

    move-result v13

    if-eqz v13, :cond_7a

    .line 75
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->lastRequestFailed:Z

    .line 76
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->getException()Ljava/lang/Exception;

    move-result-object v7

    .line 77
    .local v7, ex:Ljava/lang/Exception;
    instance-of v13, v7, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v13, :cond_60

    check-cast v7, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    .end local v7           #ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    move-result-object v13

    sget-object v14, Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;->INVALID_AUTH_TOKEN:Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;

    if-ne v13, v14, :cond_60

    .line 79
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->activity:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;->sendMessageCredentialsFailed()V

    .line 100
    :cond_60
    :goto_60
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->activity:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;->updateStatus()V
    :try_end_67
    .catchall {:try_start_34 .. :try_end_67} :catchall_be

    .line 102
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->close()V

    .line 103
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    .line 104
    const-wide/high16 v13, -0x8000

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->requestStarted:J

    .line 107
    .end local v6           #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    :cond_79
    return-void

    .line 82
    .restart local v6       #event:Lcom/google/android/apps/googlevoice/net/EventLogRequest;
    :cond_7a
    :try_start_7a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->getLabel()Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v10

    .line 83
    .local v10, label:Lcom/google/android/apps/googlevoice/core/Label;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v5

    .line 84
    .local v5, conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v5, :cond_d2

    array-length v13, v5

    if-lez v13, :cond_d2

    .line 85
    move-object v1, v5

    .local v1, arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    array-length v11, v1

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v1           #arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .local v9, i$:I
    :goto_8f
    if-ge v9, v11, :cond_b6

    aget-object v4, v1, v9

    .line 86
    .local v4, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/Conversation;->getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v2

    .local v2, arr$:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    array-length v12, v2

    .local v12, len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_99
    if-ge v8, v12, :cond_af

    aget-object v3, v2, v8

    .line 87
    .local v3, call:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)V

    .line 86
    add-int/lit8 v8, v8, 0x1

    goto :goto_99

    .line 89
    .end local v3           #call:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_af
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/core/Conversation;->refreshContactInfo()V

    .line 85
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_8f

    .line 91
    .end local v2           #arr$:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v4           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v12           #len$:I
    :cond_b6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v13, v10, v5}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->addConversations(Lcom/google/android/apps/googlevoice/core/Label;[Lcom/google/android/apps/googlevoice/core/Conversation;)V
    :try_end_bd
    .catchall {:try_start_7a .. :try_end_bd} :catchall_be

    goto :goto_60

    .line 102
    .end local v5           #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v9           #i$:I
    .end local v10           #label:Lcom/google/android/apps/googlevoice/core/Label;
    :catchall_be
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    invoke-interface {v14}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->close()V

    .line 103
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    .line 104
    const-wide/high16 v14, -0x8000

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->requestStarted:J

    throw v13

    .line 97
    .restart local v5       #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .restart local v10       #label:Lcom/google/android/apps/googlevoice/core/Label;
    :cond_d2
    :try_start_d2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->activity:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;

    invoke-interface {v13}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;->requestForegroundUpdate()V
    :try_end_d9
    .catchall {:try_start_d2 .. :try_end_d9} :catchall_be

    goto :goto_60
.end method

.method public reloadConversationList(Landroid/os/Message;II)V
    .registers 9
    .parameter "onComplete"
    .parameter "offset"
    .parameter "limit"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    if-nez v0, :cond_3a

    .line 53
    iput-boolean v3, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->lastRequestFailed:Z

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createListConversationsRpc()Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->labelName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setLabels([Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    invoke-interface {v0, p2}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setOffset(I)V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    invoke-interface {v0, p3}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setLimit(I)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    invoke-interface {v0, v4}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setWantTranscript(Z)V

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->requestStarted:J

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->request:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->submit(Landroid/os/Message;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/conversationlist/LabelConversationListProvider;->activity:Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListInterface;->updateStatus()V

    .line 63
    :cond_3a
    return-void
.end method
