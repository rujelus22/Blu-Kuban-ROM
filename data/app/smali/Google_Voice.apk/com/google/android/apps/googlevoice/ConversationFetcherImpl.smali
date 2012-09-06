.class public Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;
.super Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;
.source "ConversationFetcherImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/ConversationFetcher;


# static fields
.field public static final ID_CREDENTIALS:I = 0x3e9

.field public static final ID_CREDENTIALS_FAILED:I = 0x3eb

.field public static final ID_CREDENTIALS_OK:I = 0x3ea

.field public static final ID_FETCH:I = 0x3ec

.field public static final ID_FETCH_COMPLETED:I = 0x3ed

.field public static final ID_START:I = 0x3e8


# instance fields
.field private final dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private final idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;

.field private inProgress:Z

.field private final label:Ljava/lang/String;

.field private limit:I

.field private listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

.field private final log:Lcom/google/android/apps/common/log/GLog;

.field private offset:I

.field private final voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

.field private final voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/DependencyResolver;Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/net/VoiceService;Ljava/lang/String;Lcom/google/android/apps/common/log/GLog;)V
    .registers 8
    .parameter "dependencyResolver"
    .parameter "voiceModel"
    .parameter "voiceService"
    .parameter "label"
    .parameter "log"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    .line 35
    iput v1, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->offset:I

    .line 36
    iput v1, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->limit:I

    .line 37
    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->inProgress:Z

    .line 43
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 44
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 45
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    .line 46
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->label:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->log:Lcom/google/android/apps/common/log/GLog;

    .line 49
    new-instance v0, Lcom/google/android/apps/googlevoice/IdNumberHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p5, v1}, Lcom/google/android/apps/googlevoice/IdNumberHelper;-><init>(Lcom/google/android/apps/common/log/GLog;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;

    .line 52
    invoke-interface {p1, p0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->createAndSetMessageSender(Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 53
    return-void
.end method


# virtual methods
.method public declared-synchronized fetch(II)V
    .registers 4
    .parameter "anOffset"
    .parameter "aLimit"

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->inProgress:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-eqz v0, :cond_7

    .line 66
    :goto_5
    monitor-exit p0

    return-void

    .line 62
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->inProgress:Z

    .line 63
    iput p1, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->offset:I

    .line 64
    iput p2, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->limit:I

    .line 65
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->sendEmptyMessage(I)Z
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_14

    goto :goto_5

    .line 58
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "message"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->log:Lcom/google/android/apps/common/log/GLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->idNumberHelper:Lcom/google/android/apps/googlevoice/IdNumberHelper;

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Lcom/google/android/apps/googlevoice/IdNumberHelper;->getNameForValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 71
    iget v9, p1, Landroid/os/Message;->what:I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_2e

    packed-switch v9, :pswitch_data_e6

    .line 122
    :cond_26
    :goto_26
    monitor-exit p0

    return-void

    .line 73
    :pswitch_28
    const/16 v9, 0x3e9

    :try_start_2a
    invoke-virtual {p0, v9}, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->sendEmptyMessage(I)Z
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_26

    .line 70
    :catchall_2e
    move-exception v9

    monitor-exit p0

    throw v9

    .line 77
    :pswitch_31
    :try_start_31
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    const/16 v10, 0x3ea

    invoke-virtual {p0, v10}, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const/16 v11, 0x3eb

    invoke-virtual {p0, v11}, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v9, v10, v11, v12}, Lcom/google/android/apps/googlevoice/DependencyResolver;->loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V

    goto :goto_26

    .line 84
    :pswitch_44
    const/16 v9, 0x3ec

    invoke-virtual {p0, v9}, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->sendEmptyMessage(I)Z

    goto :goto_26

    .line 88
    :pswitch_4a
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->inProgress:Z

    goto :goto_26

    .line 92
    :pswitch_4e
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    if-nez v9, :cond_26

    .line 93
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->voiceService:Lcom/google/android/apps/googlevoice/net/VoiceService;

    invoke-interface {v9}, Lcom/google/android/apps/googlevoice/net/VoiceService;->createListConversationsRpc()Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    .line 94
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->label:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-interface {v9, v10}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setLabels([Ljava/lang/String;)V

    .line 95
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    iget v10, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->offset:I

    invoke-interface {v9, v10}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setOffset(I)V

    .line 96
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    iget v10, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->limit:I

    invoke-interface {v9, v10}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setLimit(I)V

    .line 97
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->setWantTranscript(Z)V

    .line 98
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    const/16 v10, 0x3ed

    invoke-virtual {p0, v10}, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->submit(Landroid/os/Message;)V

    goto :goto_26

    .line 103
    :pswitch_87
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    invoke-interface {v9}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->isCompletedOrException()Z

    move-result v9

    if-eqz v9, :cond_26

    .line 104
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    invoke-interface {v9}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->hasException()Z

    move-result v9

    if-nez v9, :cond_d8

    .line 105
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    invoke-interface {v9}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v4

    .line 106
    .local v4, conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v4, :cond_d8

    array-length v9, v4

    if-lez v9, :cond_d8

    .line 107
    move-object v0, v4

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .local v6, i$:I
    :goto_a6
    if-ge v6, v7, :cond_cb

    aget-object v3, v0, v6

    .line 108
    .local v3, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/Conversation;->getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v1

    .local v1, arr$:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    array-length v8, v1

    .local v8, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_b0
    if-ge v5, v8, :cond_c4

    aget-object v2, v1, v5

    .line 109
    .local v2, call:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)V

    .line 108
    add-int/lit8 v5, v5, 0x1

    goto :goto_b0

    .line 111
    .end local v2           #call:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_c4
    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/Conversation;->refreshContactInfo()V

    .line 107
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_a6

    .line 113
    .end local v1           #arr$:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v3           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v8           #len$:I
    :cond_cb
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    iget-object v10, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    iget-object v11, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->label:Ljava/lang/String;

    invoke-interface {v10, v11}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v10

    invoke-interface {v9, v10, v4}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->addConversations(Lcom/google/android/apps/googlevoice/core/Label;[Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 116
    .end local v4           #conversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v6           #i$:I
    :cond_d8
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    invoke-interface {v9}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->close()V

    .line 117
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    .line 118
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/google/android/apps/googlevoice/ConversationFetcherImpl;->inProgress:Z
    :try_end_e3
    .catchall {:try_start_31 .. :try_end_e3} :catchall_2e

    goto/16 :goto_26

    .line 71
    nop

    :pswitch_data_e6
    .packed-switch 0x3e8
        :pswitch_28
        :pswitch_31
        :pswitch_44
        :pswitch_4a
        :pswitch_4e
        :pswitch_87
    .end packed-switch
.end method
