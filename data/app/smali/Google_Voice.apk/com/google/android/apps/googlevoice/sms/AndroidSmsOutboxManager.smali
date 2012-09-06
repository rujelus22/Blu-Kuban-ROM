.class public Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;
.super Lcom/google/android/apps/googlevoice/sms/AbstractSmsOutboxManager;
.source "AndroidSmsOutboxManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/SignInStatusListener;


# instance fields
.field private final clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private final notifier:Lcom/google/android/apps/googlevoice/Notifier;

.field private final persistenceManager:Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;

.field private final serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

.field private final smsOutboxesByConversationId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;",
            ">;"
        }
    .end annotation
.end field

.field private final voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/ServiceManager;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/Notifier;Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;)V
    .registers 8
    .parameter "voiceModel"
    .parameter "serviceManager"
    .parameter "clockUtils"
    .parameter "notifier"
    .parameter "signInStatusRegistrar"
    .parameter "persistenceManager"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/sms/AbstractSmsOutboxManager;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 46
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    .line 47
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 48
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->notifier:Lcom/google/android/apps/googlevoice/Notifier;

    .line 49
    iput-object p6, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->persistenceManager:Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;

    .line 51
    invoke-interface {p5, p0}, Lcom/google/android/apps/googlevoice/SignInStatusRegistrar;->addListener(Lcom/google/android/apps/googlevoice/SignInStatusListener;)V

    .line 52
    return-void
.end method

.method private addOutbox(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    .registers 4
    .parameter "conversationId"

    .prologue
    .line 448
    new-instance v0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    invoke-direct {v0, p1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;-><init>(Ljava/lang/String;)V

    .line 449
    .local v0, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    return-object v0
.end method

.method private addSmsToVoiceModelConversation(Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/PhoneCall;)V
    .registers 8
    .parameter "conversationId"
    .parameter "smsPhoneCall"

    .prologue
    const/4 v4, 0x1

    .line 351
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v2, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .line 352
    .local v0, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-nez v0, :cond_36

    .line 353
    new-instance v0, Lcom/google/android/apps/googlevoice/core/Conversation;

    .end local v0           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;-><init>()V

    .line 354
    .restart local v0       #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->setConversationId(Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v2}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/googlevoice/core/Conversation;->setConversationTime(J)V

    .line 356
    invoke-virtual {v0, v4}, Lcom/google/android/apps/googlevoice/core/Conversation;->setIsRead(Z)V

    .line 357
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    const-string v3, "sms"

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v1

    .line 358
    .local v1, label:Lcom/google/android/apps/googlevoice/core/Label;
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/googlevoice/core/Conversation;->addLabel(Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    new-array v3, v4, [Lcom/google/android/apps/googlevoice/core/Conversation;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v2, v1, v3}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->addConversations(Lcom/google/android/apps/googlevoice/core/Label;[Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 361
    .end local v1           #label:Lcom/google/android/apps/googlevoice/core/Label;
    :cond_36
    invoke-virtual {v0, p2}, Lcom/google/android/apps/googlevoice/core/Conversation;->addPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)V

    .line 362
    return-void
.end method

.method private deduplicate([Lcom/google/android/apps/googlevoice/core/Conversation;J)V
    .registers 18
    .parameter "updatedSmsConversations"
    .parameter "timeOfPreviousLabelUpdate"

    .prologue
    .line 511
    iget-object v12, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    .line 512
    .local v8, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    invoke-virtual {v8}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getState()I

    move-result v12

    const/16 v13, 0x3e9

    if-ne v12, v13, :cond_a

    .line 515
    invoke-virtual {v8}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getOldestSms()Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v12

    iget-object v11, v12, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 516
    .local v11, sentSms:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    if-eqz v11, :cond_a

    .line 517
    invoke-virtual {v11}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageText()Ljava/lang/String;

    move-result-object v10

    .line 518
    .local v10, sentMessageText:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v9

    .line 520
    .local v9, sentContactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    if-eqz v9, :cond_a

    if-eqz v10, :cond_a

    .line 527
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_35
    if-ge v6, v7, :cond_a

    aget-object v1, v0, v6

    .line 528
    .local v1, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    const-string v12, "sms"

    invoke-virtual {v1, v12}, Lcom/google/android/apps/googlevoice/core/Conversation;->hasLabel(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_88

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_88

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationTime()J

    move-result-wide v12

    cmp-long v12, v12, p2

    if-lez v12, :cond_88

    .line 531
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v3

    .line 533
    .local v3, downloadedPhoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    array-length v12, v3

    add-int/lit8 v4, v12, -0x1

    .local v4, i:I
    :goto_5a
    if-ltz v4, :cond_88

    .line 534
    aget-object v2, v3, v4

    .line 537
    .local v2, downloadedPhoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getCallType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    move-result-object v12

    sget-object v13, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;->SMS_OUT:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;

    if-ne v12, v13, :cond_85

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getStartTime()J

    move-result-wide v12

    cmp-long v12, v12, p2

    if-lez v12, :cond_85

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_85

    .line 540
    invoke-virtual {v11}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v8, v12}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->removeSmsFromOutbox(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;Ljava/lang/String;)V

    .line 541
    const/16 v12, 0x3e8

    invoke-virtual {v8, v12}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->setState(I)V

    goto :goto_a

    .line 533
    :cond_85
    add-int/lit8 v4, v4, -0x1

    goto :goto_5a

    .line 527
    .end local v2           #downloadedPhoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v3           #downloadedPhoneCalls:[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .end local v4           #i:I
    :cond_88
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    .line 550
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v1           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    .end local v9           #sentContactInfo:Lcom/google/android/apps/googlevoice/core/ContactInfo;
    .end local v10           #sentMessageText:Ljava/lang/String;
    .end local v11           #sentSms:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_8b
    return-void
.end method

.method private getExceptionsBySmsPhoneCall()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/googlevoice/core/PhoneCall;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v1, exceptionsBySmsPhoneCall:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/apps/googlevoice/core/PhoneCall;Ljava/lang/Exception;>;"
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    .line 228
    .local v4, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getExceptionsByPhoneCallId()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 229
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Exception;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getSms(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v5

    .line 230
    .local v5, sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    iget-object v6, v5, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 233
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Exception;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    .end local v5           #sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :cond_47
    return-object v1
.end method

.method private getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    .registers 3
    .parameter "conversationId"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    return-object v0
.end method

.method private declared-synchronized mergeOutboxes(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "sourceConversationId"
    .parameter "voiceModelConversationId"

    .prologue
    const/16 v10, 0x3e9

    .line 296
    monitor-enter p0

    :try_start_3
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    .line 297
    .local v6, sourceOutbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v8

    .line 299
    .local v8, targetOutbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-eqz v6, :cond_79

    .line 300
    if-nez v8, :cond_35

    .line 302
    invoke-virtual {v6, p2}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->setConversationId(Ljava/lang/String;)V

    .line 303
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-interface {v9, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v9, p2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v7

    .line 310
    .local v7, targetConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getAllSms()[Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_27
    if-ge v2, v3, :cond_79

    aget-object v4, v0, v2

    .line 311
    .local v4, sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    if-eqz v7, :cond_32

    .line 312
    iget-object v9, v4, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {v9, v7}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 310
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 318
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .end local v7           #targetConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_35
    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getState()I

    move-result v9

    if-ne v9, v10, :cond_40

    .line 319
    const/16 v9, 0x3e9

    invoke-virtual {v8, v9}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->setState(I)V

    .line 324
    :cond_40
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v9, p2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v7

    .line 326
    .restart local v7       #targetConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v6}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getAllSms()[Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v0

    .restart local v0       #arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_4c
    if-ge v2, v3, :cond_79

    aget-object v4, v0, v2

    .line 327
    .restart local v4       #sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    if-eqz v7, :cond_57

    .line 328
    iget-object v9, v4, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {v9, v7}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 330
    :cond_57
    iget-object v9, v4, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, smsPhoneCallId:Ljava/lang/String;
    invoke-virtual {v6, v5}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->sendHasFailed(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 332
    invoke-virtual {v6, v5}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getExceptionForSms(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 333
    .local v1, exception:Ljava/lang/Exception;
    invoke-virtual {v8, v5, v1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->addExceptionForSms(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 335
    .end local v1           #exception:Ljava/lang/Exception;
    :cond_6a
    invoke-virtual {v8, v4}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->addSms(Lcom/google/android/apps/googlevoice/sms/PendingSms;)V

    .line 336
    iget-object v9, v4, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {v9}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->removeSms(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_7b

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 340
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .end local v5           #smsPhoneCallId:Ljava/lang/String;
    .end local v7           #targetConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_79
    monitor-exit p0

    return-void

    .line 296
    .end local v6           #sourceOutbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    .end local v8           #targetOutbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :catchall_7b
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private declared-synchronized removeSmsFromOutbox(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;Ljava/lang/String;)V
    .registers 5
    .parameter "outbox"
    .parameter "smsPhoneCallId"

    .prologue
    .line 463
    monitor-enter p0

    if-eqz p1, :cond_15

    .line 464
    :try_start_3
    invoke-virtual {p1, p2}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->removeSms(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 469
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    .line 472
    :cond_15
    monitor-exit p0

    return-void

    .line 463
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized serializeOutboxes()[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;
    .registers 7

    .prologue
    .line 610
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v0, v5, [Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;

    .line 612
    .local v0, data:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;
    const/4 v2, 0x0

    .line 613
    .local v2, index:I
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    .line 614
    .local v4, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->serialize()Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;

    move-result-object v5

    aput-object v5, v0, v3
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2d

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_15

    .line 616
    .end local v4           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :cond_2b
    monitor-exit p0

    return-object v0

    .line 610
    .end local v0           #data:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #index:I
    :catchall_2d
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private setStateForOutbox(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;I)V
    .registers 3
    .parameter "outbox"
    .parameter "state"

    .prologue
    .line 554
    if-eqz p1, :cond_5

    .line 555
    invoke-virtual {p1, p2}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->setState(I)V

    .line 557
    :cond_5
    return-void
.end method

.method private updateOutboxStateInDatabase(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;)V
    .registers 5
    .parameter "outbox"

    .prologue
    .line 621
    if-eqz p1, :cond_f

    .line 622
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->persistenceManager:Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getState()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;->updateOutboxState(Ljava/lang/String;I)V

    .line 624
    :cond_f
    return-void
.end method

.method private updateSmsFailureStatusBarNotifications()V
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->notifier:Lcom/google/android/apps/googlevoice/Notifier;

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getExceptionsBySmsPhoneCall()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/Notifier;->notifySmsFailed(Ljava/util/Map;)V

    .line 221
    return-void
.end method


# virtual methods
.method public addPendingSms(Ljava/lang/String;Lcom/google/android/apps/googlevoice/sms/PendingSms;)V
    .registers 7
    .parameter "conversationId"
    .parameter "pendingSms"

    .prologue
    .line 56
    if-nez p2, :cond_a

    .line 57
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Attempting to send null SMS."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_a
    iget-object v1, p2, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 61
    .local v1, phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    if-nez v1, :cond_16

    .line 62
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Attempting to send null SMS."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_16
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getContactInfo()Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 64
    :cond_22
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Attempt to send SMS with no contact info or no text."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_2a
    monitor-enter p0

    .line 69
    :try_start_2b
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v0

    .line 70
    .local v0, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-nez v0, :cond_35

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->addOutbox(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v0

    .line 74
    :cond_35
    invoke-virtual {v0, p2}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->addSms(Lcom/google/android/apps/googlevoice/sms/PendingSms;)V

    .line 75
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_45

    .line 76
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->saveOutboxesToDatabase()V

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->notifyListenersSmsAdded(Ljava/lang/String;Lcom/google/android/apps/googlevoice/sms/PendingSms;)V

    .line 78
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    .line 79
    return-void

    .line 75
    .end local v0           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v2
.end method

.method public clearOutbox(Ljava/lang/String;)V
    .registers 8
    .parameter "conversationId"

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v3

    .line 568
    .local v3, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-eqz v3, :cond_28

    .line 569
    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getAllSms()[Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_c
    if-ge v1, v2, :cond_25

    aget-object v4, v0, v1

    .line 570
    .local v4, sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    iget-object v5, v4, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->removeSmsFromOutbox(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;Ljava/lang/String;)V

    .line 571
    iget-object v5, v4, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->notifyListenersSmsRemoved(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 573
    .end local v4           #sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->saveOutboxesToDatabase()V

    .line 575
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_28
    return-void
.end method

.method public declared-synchronized clearOutboxes()V
    .registers 2

    .prologue
    .line 561
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 562
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->saveOutboxesToDatabase()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 563
    monitor-exit p0

    return-void

    .line 561
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAllPendingSmsForConversation(Ljava/lang/String;)[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .registers 4
    .parameter "conversationId"

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v0

    .line 633
    .local v0, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-nez v0, :cond_a

    .line 634
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/googlevoice/sms/PendingSms;

    .line 636
    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getAllSms()[Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v1

    goto :goto_9
.end method

.method public declared-synchronized getExceptionForSms(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;
    .registers 5
    .parameter "conversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 423
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v0

    .line 424
    .local v0, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-eqz v0, :cond_d

    .line 425
    invoke-virtual {v0, p2}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getExceptionForSms(Ljava/lang/String;)Ljava/lang/Exception;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result-object v1

    .line 427
    :goto_b
    monitor-exit p0

    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_b

    .line 423
    .end local v0           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getNextSmsMessagesToSend()[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .registers 8

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 134
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_36

    .line 143
    :goto_c
    monitor-exit p0

    return-object v6

    .line 136
    :cond_e
    :try_start_e
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 137
    .local v5, smsToSendNext:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/googlevoice/sms/PendingSms;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getPendingConversationIds()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_19
    if-ge v2, v3, :cond_29

    aget-object v1, v0, v2

    .line 138
    .local v1, conversationId:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getNextSmsToSendForConversation(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v4

    .line 139
    .local v4, smsToSend:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    if-eqz v4, :cond_26

    .line 140
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 143
    .end local v1           #conversationId:Ljava/lang/String;
    .end local v4           #smsToSend:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :cond_29
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Lcom/google/android/apps/googlevoice/sms/PendingSms;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :try_end_35
    .catchall {:try_start_e .. :try_end_35} :catchall_36

    goto :goto_c

    .line 133
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #smsToSendNext:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/googlevoice/sms/PendingSms;>;"
    :catchall_36
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method getNextSmsToSendForConversation(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .registers 4
    .parameter "conversationId"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v0

    .line 150
    .local v0, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-eqz v0, :cond_11

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsShouldBeSentForOutbox(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 151
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getOldestSms()Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v1

    .line 153
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method getOutboxStateForTest(Ljava/lang/String;)I
    .registers 3
    .parameter "conversationId"

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getState()I

    move-result v0

    return v0
.end method

.method declared-synchronized getPendingConversationIds()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 184
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 185
    .local v0, conversationIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v1

    .line 184
    .end local v0           #conversationIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSmsWithConversationId(Ljava/lang/String;)[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .registers 4
    .parameter "conversationId"

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v0

    .line 653
    .local v0, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-eqz v0, :cond_b

    .line 654
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getAllSms()[Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v1

    .line 656
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/googlevoice/sms/PendingSms;

    goto :goto_a
.end method

.method public declared-synchronized hasExceptionForSms(Ljava/lang/String;)Z
    .registers 8
    .parameter "conversationId"

    .prologue
    .line 432
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v3

    .line 433
    .local v3, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-eqz v3, :cond_23

    .line 434
    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getAllSms()[Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_d
    if-ge v1, v2, :cond_23

    aget-object v4, v0, v1

    .line 435
    .local v4, sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    iget-object v5, v4, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getExceptionForSms(Ljava/lang/String;)Ljava/lang/Exception;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_25

    move-result-object v5

    if-eqz v5, :cond_20

    .line 436
    const/4 v5, 0x1

    .line 440
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :goto_1e
    monitor-exit p0

    return v5

    .line 434
    .restart local v0       #arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 440
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :cond_23
    const/4 v5, 0x0

    goto :goto_1e

    .line 432
    .end local v3           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :catchall_25
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public hasOutboxWithConversationId(Ljava/lang/String;)Z
    .registers 3
    .parameter "conversationId"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasQueuedSms(Ljava/lang/String;)Z
    .registers 4
    .parameter "conversationId"

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v0

    .line 403
    .local v0, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getAllSms()[Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public declared-synchronized isFailedSms(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "conversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 367
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v0

    .line 368
    .local v0, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-eqz v0, :cond_d

    .line 369
    invoke-virtual {v0, p2}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->sendHasFailed(Ljava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result v1

    .line 371
    :goto_b
    monitor-exit p0

    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_b

    .line 367
    .end local v0           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isPermanentlyFailedSms(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "conversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 378
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getExceptionForSms(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    .line 379
    .local v0, exception:Ljava/lang/Exception;
    if-eqz v0, :cond_e

    instance-of v1, v0, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_c
    monitor-exit p0

    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_c

    .line 378
    .end local v0           #exception:Ljava/lang/Exception;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isQueuedSms(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "conversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 392
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v0

    .line 393
    .local v0, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-eqz v0, :cond_d

    .line 394
    invoke-virtual {v0, p2}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->containsSmsWithId(Ljava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result v1

    .line 396
    :goto_b
    monitor-exit p0

    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_b

    .line 392
    .end local v0           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isSmsInProgress(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "conversationId"
    .parameter "smsPhoneCallId"

    .prologue
    const/4 v2, 0x0

    .line 411
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v1

    .line 412
    .local v1, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getState()I

    move-result v3

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_23

    .line 414
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getOldestSms()Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v0

    .line 415
    .local v0, nextSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    if-eqz v0, :cond_23

    iget-object v3, v0, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_25

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 417
    .end local v0           #nextSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :cond_23
    monitor-exit p0

    return v2

    .line 411
    .end local v1           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isTemporarilyFailedSms(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "conversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 385
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getExceptionForSms(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    .line 386
    .local v0, exception:Ljava/lang/Exception;
    if-eqz v0, :cond_e

    instance-of v1, v0, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-nez v1, :cond_e

    const/4 v1, 0x1

    :goto_c
    monitor-exit p0

    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_c

    .line 385
    .end local v0           #exception:Ljava/lang/Exception;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public loadOutboxesFromDatabase(Lcom/google/android/apps/googlevoice/model/LocalModelView;)V
    .registers 14
    .parameter "localModelView"

    .prologue
    .line 579
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->persistenceManager:Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;

    invoke-interface {v10}, Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;->loadOutboxesFromDatabase()[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v8

    .line 580
    .local v8, outboxes:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-eqz v8, :cond_4c

    .line 581
    move-object v0, v8

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_c
    if-ge v4, v5, :cond_4c

    aget-object v7, v0, v4

    .line 582
    .local v7, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    iget-object v10, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getConversationId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getConversationId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v2

    .line 585
    .local v2, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-nez v2, :cond_36

    .line 586
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getConversationId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lcom/google/android/apps/googlevoice/model/LocalModelView;->createLocalConversation(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v2

    .line 587
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getOldestSms()Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v10

    iget-object v9, v10, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 588
    .local v9, sms:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    if-eqz v9, :cond_36

    .line 592
    invoke-virtual {v2, v9}, Lcom/google/android/apps/googlevoice/core/Conversation;->addPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)V

    .line 596
    .end local v9           #sms:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :cond_36
    invoke-virtual {v7}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getAllSms()[Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v1

    .local v1, arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_3c
    if-ge v3, v6, :cond_48

    aget-object v9, v1, v3

    .line 597
    .local v9, sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    iget-object v10, v9, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {v10, v2}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 596
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 581
    .end local v9           #sms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :cond_48
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_c

    .line 601
    .end local v1           #arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .end local v2           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :cond_4c
    return-void
.end method

.method public declared-synchronized onModelDownloadCompleted([Lcom/google/android/apps/googlevoice/core/Conversation;J)V
    .registers 7
    .parameter "updatedSmsConversations"
    .parameter "timeOfPreviousLabelUpdate"

    .prologue
    .line 477
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->deduplicate([Lcom/google/android/apps/googlevoice/core/Conversation;J)V

    .line 484
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2e

    .line 485
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    .line 486
    .local v1, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    const/16 v2, 0x3e8

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->setStateForOutbox(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;I)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_16

    .line 477
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :catchall_28
    move-exception v2

    monitor-exit p0

    throw v2

    .line 488
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->saveOutboxesToDatabase()V

    .line 492
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getNextSmsMessagesToSend()[Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_3a

    .line 493
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_28

    .line 495
    :cond_3a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onSendSmsFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 6
    .parameter "conversationId"
    .parameter "smsPhoneCallId"
    .parameter "exception"

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v0

    .line 202
    .local v0, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-eqz v0, :cond_19

    .line 203
    invoke-virtual {v0, p2, p3}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->addExceptionForSms(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 204
    instance-of v1, p3, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-eqz v1, :cond_13

    .line 205
    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->setStateForOutbox(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;I)V

    .line 207
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->saveOutboxesToDatabase()V

    .line 210
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->updateSmsFailureStatusBarNotifications()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 212
    :cond_19
    monitor-exit p0

    return-void

    .line 201
    .end local v0           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onSendSmsStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "conversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v0

    .line 191
    .local v0, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    const/16 v1, 0x3e9

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->setStateForOutbox(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;I)V

    .line 192
    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->updateOutboxStateInDatabase(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 193
    monitor-exit p0

    return-void

    .line 190
    .end local v0           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onSendSmsSucceeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "conversationId"
    .parameter "smsPhoneCallId"
    .parameter "assignedConversationId"

    .prologue
    .line 241
    if-eqz p1, :cond_43

    if-eqz p2, :cond_43

    if-eqz p3, :cond_43

    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, notifyRemoval:Z
    const/4 v0, 0x0

    .line 248
    .local v0, notifyMapping:Z
    monitor-enter p0

    .line 249
    :try_start_9
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v2

    .line 250
    .local v2, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-eqz v2, :cond_2f

    .line 251
    const/16 v4, 0x3e8

    invoke-direct {p0, v2, v4}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->setStateForOutbox(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;I)V

    .line 256
    invoke-virtual {v2, p2}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getSms(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v3

    .line 257
    .local v3, sentSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    if-eqz v3, :cond_1f

    .line 258
    iget-object v4, v3, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-direct {p0, p3, v4}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->addSmsToVoiceModelConversation(Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/PhoneCall;)V

    .line 262
    :cond_1f
    invoke-direct {p0, v2, p2}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->removeSmsFromOutbox(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;Ljava/lang/String;)V

    .line 263
    const/4 v1, 0x1

    .line 268
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    const/4 v0, 0x1

    .line 269
    :goto_2a
    if-eqz v0, :cond_2f

    .line 270
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->mergeOutboxes(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v3           #sentSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :cond_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_40

    .line 275
    if-eqz v1, :cond_38

    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->notifyListenersSmsRemoved(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->saveOutboxesToDatabase()V

    .line 280
    :cond_38
    if-eqz v0, :cond_3d

    .line 281
    invoke-virtual {p0, p1, p3}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->notifyListenersConversationsMapped(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .end local v0           #notifyMapping:Z
    .end local v1           #notifyRemoval:Z
    .end local v2           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :cond_3d
    :goto_3d
    return-void

    .line 268
    .restart local v0       #notifyMapping:Z
    .restart local v1       #notifyRemoval:Z
    .restart local v2       #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    .restart local v3       #sentSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :cond_3e
    const/4 v0, 0x0

    goto :goto_2a

    .line 273
    .end local v2           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    .end local v3           #sentSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :catchall_40
    move-exception v4

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v4

    .line 284
    .end local v0           #notifyMapping:Z
    .end local v1           #notifyRemoval:Z
    :cond_43
    const-string v4, "AndroidSmsOutboxManager.onSendSmsSucceeded(): null value"

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method public onSignedIn()V
    .registers 1

    .prologue
    .line 661
    return-void
.end method

.method public onSigningOut()V
    .registers 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->notifier:Lcom/google/android/apps/googlevoice/Notifier;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/Notifier;->cancelSmsFailedNotification()V

    .line 667
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->clearOutboxes()V

    .line 668
    return-void
.end method

.method public removePendingSms(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .registers 8
    .parameter "conversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, isRemoved:Z
    const/4 v3, 0x0

    .line 85
    .local v3, smsToRemove:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    const/4 v1, 0x0

    .line 86
    .local v1, notifiedConversationId:Ljava/lang/String;
    monitor-enter p0

    .line 88
    :try_start_4
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v2

    .line 89
    .local v2, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-eqz v2, :cond_23

    .line 90
    invoke-virtual {v2, p2}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getSms(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v3

    .line 91
    if-eqz v3, :cond_23

    .line 92
    invoke-direct {p0, v2, p2}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->removeSmsFromOutbox(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getConversationId()Ljava/lang/String;

    move-result-object v1

    .line 94
    const/4 v0, 0x1

    .line 95
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 96
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->smsOutboxesByConversationId:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 102
    if-eqz v0, :cond_2c

    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->saveOutboxesToDatabase()V

    .line 104
    invoke-virtual {p0, v1, p2}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->notifyListenersSmsRemoved(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_2c
    return-object v3

    .line 100
    .end local v2           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :catchall_2d
    move-exception v4

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v4
.end method

.method public retryPendingSms(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "conversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 113
    const/4 v2, 0x0

    .line 114
    .local v2, smsIsUpdated:Z
    const/4 v0, 0x0

    .line 115
    .local v0, notifiedConversationId:Ljava/lang/String;
    monitor-enter p0

    .line 116
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->getOutboxWithConversationId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;

    move-result-object v1

    .line 117
    .local v1, outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    if-eqz v1, :cond_17

    .line 118
    invoke-virtual {v1, p2}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->sendHasFailed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 119
    invoke-virtual {v1, p2}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->removeExceptionForSms(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getConversationId()Ljava/lang/String;

    move-result-object v0

    .line 121
    const/4 v2, 0x1

    .line 124
    :cond_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_23

    .line 125
    if-eqz v2, :cond_22

    .line 126
    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->notifyListenersSmsRetried(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestForegroundUpdate()V

    .line 129
    :cond_22
    return-void

    .line 124
    .end local v1           #outbox:Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v3
.end method

.method public saveOutboxesToDatabase()V
    .registers 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->persistenceManager:Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsOutboxManager;->serializeOutboxes()[Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;->saveOutboxesToDatabase([Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox$ConversationData;)V

    .line 606
    return-void
.end method

.method smsShouldBeSentForOutbox(Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;)Z
    .registers 7
    .parameter "outbox"

    .prologue
    const/4 v2, 0x0

    .line 163
    if-nez p1, :cond_4

    .line 177
    :cond_3
    :goto_3
    return v2

    .line 166
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getOldestSms()Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v1

    .line 167
    .local v1, smsToBeSent:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    if-eqz v1, :cond_3

    .line 176
    iget-object v3, v1, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getExceptionForSms(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    .line 177
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/sms/SmsConversationOutbox;->getState()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_3

    if-eqz v0, :cond_22

    instance-of v3, v0, Lcom/google/android/apps/googlevoice/net/VoiceServiceException;

    if-nez v3, :cond_3

    :cond_22
    const/4 v2, 0x1

    goto :goto_3
.end method
