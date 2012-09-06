.class public Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;
.super Ljava/lang/Object;
.source "AndroidLocalModelView.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/model/LocalModelView;
.implements Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;


# instance fields
.field private final clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private final localConversationIdsByVoiceModelConversationId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final localConversationsByConversationId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/core/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private phoneCallComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/apps/googlevoice/core/PhoneCall;",
            ">;"
        }
    .end annotation
.end field

.field private final smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

.field private final smsPersistenceManager:Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;

.field private uniqueIdSuffix:I

.field private final voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

.field private final voiceModelConversationIdsByLocalConversationId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final voiceModelListenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;Lcom/google/android/apps/common/time/ClockUtils;Landroid/content/Context;)V
    .registers 7
    .parameter "voiceModel"
    .parameter "smsOutboxManager"
    .parameter "clockUtils"
    .parameter "context"

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lcom/google/android/apps/googlevoice/sms/AndroidSmsPersistenceManager;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;-><init>(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;)V

    .line 65
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;)V
    .registers 6
    .parameter "voiceModel"
    .parameter "smsOutboxManager"
    .parameter "clockUtils"
    .parameter "smsPersistenceManager"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView$1;-><init>(Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->phoneCallComparator:Ljava/util/Comparator;

    .line 69
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 70
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    .line 71
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 72
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsPersistenceManager:Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationsByConversationId:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelConversationIdsByLocalConversationId:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationIdsByVoiceModelConversationId:Ljava/util/Map;

    .line 76
    new-instance v0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-direct {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;-><init>(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelListenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->uniqueIdSuffix:I

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->addListener(Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;)Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    return-object v0
.end method

.method private declared-synchronized addConversationMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "localConversationId"
    .parameter "voiceModelConversationId"

    .prologue
    .line 251
    monitor-enter p0

    if-eqz p1, :cond_5

    if-nez p2, :cond_10

    .line 252
    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tried to map null conversations."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 251
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 254
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelConversationIdsByLocalConversationId:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationIdsByVoiceModelConversationId:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->saveConversationMappingsToDatabase()V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_d

    .line 259
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized clearConversationMappings()V
    .registers 2

    .prologue
    .line 281
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationIdsByVoiceModelConversationId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 282
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelConversationIdsByLocalConversationId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 283
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->saveConversationMappingsToDatabase()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 284
    monitor-exit p0

    return-void

    .line 281
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isVoiceModelConversation(Ljava/lang/String;)Z
    .registers 3
    .parameter "conversationId"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private localConversationHasVoiceModelCounterpart(Ljava/lang/String;)Z
    .registers 4
    .parameter "conversationId"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelConversationIdsByLocalConversationId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 326
    .local v0, voiceModelId:Ljava/lang/String;
    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private declared-synchronized removeConversationMapping(Ljava/lang/String;)V
    .registers 5
    .parameter "conversationId"

    .prologue
    .line 267
    monitor-enter p0

    if-eqz p1, :cond_18

    .line 268
    :try_start_3
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelConversationIdsByLocalConversationId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 269
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelConversationIdsByLocalConversationId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 270
    .local v1, voiceModelId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationIdsByVoiceModelConversationId:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .end local v1           #voiceModelId:Ljava/lang/String;
    :cond_18
    :goto_18
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->saveConversationMappingsToDatabase()V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2b

    .line 277
    monitor-exit p0

    return-void

    .line 272
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationIdsByVoiceModelConversationId:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    .local v0, localId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelConversationIdsByLocalConversationId:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2b

    goto :goto_18

    .line 267
    .end local v0           #localId:Ljava/lang/String;
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private removeLocalConversation(Ljava/lang/String;)V
    .registers 3
    .parameter "conversationId"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    return-void
.end method

.method private saveConversationMappingsToDatabase()V
    .registers 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsPersistenceManager:Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationIdsByVoiceModelConversationId:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;->saveConversationMappingsToDatabase(Ljava/util/Map;)V

    .line 294
    return-void
.end method

.method private voiceModelConversationHasLocalCounterpart(Ljava/lang/String;)Z
    .registers 4
    .parameter "conversationId"

    .prologue
    .line 334
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationIdsByVoiceModelConversationId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    .local v0, localId:Ljava/lang/String;
    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method


# virtual methods
.method public addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V
    .registers 4
    .parameter "conversation"
    .parameter "flag"

    .prologue
    .line 481
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->isVoiceModelConversation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 482
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V

    .line 484
    :cond_f
    return-void
.end method

.method public addConversations(Lcom/google/android/apps/googlevoice/core/Label;[Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 4
    .parameter "label"
    .parameter "conversations"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->addConversations(Lcom/google/android/apps/googlevoice/core/Label;[Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 345
    return-void
.end method

.method public addConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 3
    .parameter "conversations"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->addConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 350
    return-void
.end method

.method public declared-synchronized addListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 510
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelListenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->addListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->addListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_16

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;
    .registers 3
    .parameter "contactInfo"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->clear()V

    .line 360
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->clearOutboxes()V

    .line 361
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->clearConversationMappings()V

    .line 362
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 363
    return-void
.end method

.method public declared-synchronized clearSearchLabel()V
    .registers 2

    .prologue
    .line 589
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->clearSearchLabel()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 590
    monitor-exit p0

    return-void

    .line 589
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createLocalConversation()Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 9

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v3}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 97
    .local v1, now:J
    const-string v3, "TempId_%d%n_%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->uniqueIdSuffix:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->uniqueIdSuffix:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, conversationId:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->createLocalConversation(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2a

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 96
    .end local v0           #conversationId:Ljava/lang/String;
    .end local v1           #now:J
    :catchall_2a
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized createLocalConversation(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 7
    .parameter "conversationId"

    .prologue
    .line 104
    monitor-enter p0

    if-nez p1, :cond_e

    .line 105
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Attempting to create a conversation with a null id."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 104
    :catchall_b
    move-exception v3

    monitor-exit p0

    throw v3

    .line 107
    :cond_e
    :try_start_e
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v3}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 108
    .local v1, now:J
    new-instance v0, Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-direct {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;-><init>()V

    .line 109
    .local v0, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->setConversationId(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/googlevoice/core/Conversation;->setConversationTime(J)V

    .line 111
    const-string v3, "sms"

    invoke-virtual {v0, v3}, Lcom/google/android/apps/googlevoice/core/Conversation;->addLabel(Ljava/lang/String;)V

    .line 112
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/apps/googlevoice/core/Conversation;->setIsRead(Z)V

    .line 113
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_b

    .line 114
    monitor-exit p0

    return-object v0
.end method

.method public getAction(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Action;
    .registers 3
    .parameter "conversationId"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getAction(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Action;

    move-result-object v0

    return-object v0
.end method

.method public getActions()[Lcom/google/android/apps/googlevoice/core/Action;
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getActions()[Lcom/google/android/apps/googlevoice/core/Action;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 4
    .parameter "conversationId"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .line 88
    .local v0, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-nez v0, :cond_11

    .line 89
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    check-cast v0, Lcom/google/android/apps/googlevoice/core/Conversation;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 91
    .restart local v0       #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_11
    monitor-exit p0

    return-object v0

    .line 87
    .end local v0           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getConversationsWithLabel(Lcom/google/android/apps/googlevoice/core/Label;)[Lcom/google/android/apps/googlevoice/core/Conversation;
    .registers 10
    .parameter "label"

    .prologue
    .line 119
    monitor-enter p0

    if-nez p1, :cond_8

    .line 120
    const/4 v7, 0x0

    :try_start_4
    new-array v7, v7, [Lcom/google/android/apps/googlevoice/core/Conversation;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_69

    .line 143
    :goto_6
    monitor-exit p0

    return-object v7

    .line 122
    :cond_8
    :try_start_8
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 123
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v7

    goto :goto_6

    .line 126
    :cond_15
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Label;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v5

    .line 127
    .local v5, modelConversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    new-instance v4, Ljava/util/TreeSet;

    sget-object v7, Lcom/google/android/apps/googlevoice/core/Conversation;->COMPARATOR:Lcom/google/android/apps/googlevoice/core/Conversation$Comparator;

    invoke-direct {v4, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 129
    .local v4, mergedConversations:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 132
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 133
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 134
    .local v3, localId:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelConversationIdsByLocalConversationId:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 135
    .local v6, voiceModelId:Ljava/lang/String;
    if-eqz v6, :cond_55

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v7, v6}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v7

    if-nez v7, :cond_31

    .line 136
    :cond_55
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 138
    .local v2, localConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Label;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/apps/googlevoice/core/Conversation;->hasLabel(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 139
    invoke-interface {v4, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catchall {:try_start_8 .. :try_end_68} :catchall_69

    goto :goto_31

    .line 119
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #localConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v3           #localId:Ljava/lang/String;
    .end local v4           #mergedConversations:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    .end local v5           #modelConversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v6           #voiceModelId:Ljava/lang/String;
    :catchall_69
    move-exception v7

    monitor-exit p0

    throw v7

    .line 143
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #mergedConversations:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    .restart local v5       #modelConversations:[Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_6c
    :try_start_6c
    invoke-interface {v4}, Ljava/util/SortedSet;->size()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/apps/googlevoice/core/Conversation;

    invoke-interface {v4, v7}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/android/apps/googlevoice/core/Conversation;
    :try_end_78
    .catchall {:try_start_6c .. :try_end_78} :catchall_69

    goto :goto_6
.end method

.method public getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;
    .registers 3
    .parameter "label"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getLabels()[Lcom/google/android/apps/googlevoice/core/Label;
    .registers 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabels()[Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPhoneCallsWithConversationId(Ljava/lang/String;)[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    .registers 12
    .parameter "conversationId"

    .prologue
    .line 153
    monitor-enter p0

    const/4 v6, 0x0

    .line 154
    .local v6, modelId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 156
    .local v4, localId:Ljava/lang/String;
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->isVoiceModelConversation(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 157
    move-object v6, p1

    .line 158
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelConversationHasLocalCounterpart(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 159
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationIdsByVoiceModelConversationId:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 172
    :cond_1a
    :goto_1a
    if-eqz v6, :cond_61

    if-nez v4, :cond_61

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v9, v6}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->hasOutboxWithConversationId(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_61

    .line 174
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v9, v6}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v5

    .line 175
    .local v5, modelConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v5, :cond_5d

    .line 176
    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Conversation;->getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_b5

    move-result-object v9

    .line 201
    .end local v5           #modelConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    :goto_32
    monitor-exit p0

    return-object v9

    .line 161
    :cond_34
    :try_start_34
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->isLocalConversation(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4c

    .line 162
    move-object v4, p1

    .line 163
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationHasVoiceModelCounterpart(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 164
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelConversationIdsByLocalConversationId:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    goto :goto_1a

    .line 166
    :cond_4c
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationHasVoiceModelCounterpart(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 167
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelConversationIdsByLocalConversationId:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    goto :goto_1a

    .line 178
    .restart local v5       #modelConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_5d
    const/4 v9, 0x0

    new-array v9, v9, [Lcom/google/android/apps/googlevoice/core/PhoneCall;

    goto :goto_32

    .line 181
    .end local v5           #modelConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_61
    new-instance v8, Ljava/util/TreeSet;

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->phoneCallComparator:Ljava/util/Comparator;

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 182
    .local v8, phoneCalls:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/google/android/apps/googlevoice/core/PhoneCall;>;"
    if-eqz v6, :cond_91

    .line 183
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v9, v6}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v5

    .line 184
    .restart local v5       #modelConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v5, :cond_7d

    .line 185
    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/core/Conversation;->getPhoneCalls()[Lcom/google/android/apps/googlevoice/core/PhoneCall;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 188
    :cond_7d
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v9, v6}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->getSmsWithConversationId(Ljava/lang/String;)[Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v1

    .local v1, arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_85
    if-ge v2, v3, :cond_91

    aget-object v7, v1, v2

    .line 189
    .local v7, pendingSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    iget-object v9, v7, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-interface {v8, v9}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 196
    .end local v1           #arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #modelConversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v7           #pendingSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :cond_91
    if-eqz v4, :cond_a7

    .line 197
    iget-object v9, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v9, v4}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->getSmsWithConversationId(Ljava/lang/String;)[Lcom/google/android/apps/googlevoice/sms/PendingSms;

    move-result-object v1

    .restart local v1       #arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    array-length v3, v1

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_9b
    if-ge v2, v3, :cond_a7

    aget-object v7, v1, v2

    .line 198
    .restart local v7       #pendingSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    iget-object v9, v7, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-interface {v8, v9}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 201
    .end local v1           #arr$:[Lcom/google/android/apps/googlevoice/sms/PendingSms;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v7           #pendingSms:Lcom/google/android/apps/googlevoice/sms/PendingSms;
    :cond_a7
    invoke-interface {v8}, Ljava/util/SortedSet;->size()I

    move-result v9

    new-array v9, v9, [Lcom/google/android/apps/googlevoice/core/PhoneCall;

    invoke-interface {v8, v9}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/apps/googlevoice/core/PhoneCall;
    :try_end_b3
    .catchall {:try_start_34 .. :try_end_b3} :catchall_b5

    goto/16 :goto_32

    .line 153
    .end local v8           #phoneCalls:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/google/android/apps/googlevoice/core/PhoneCall;>;"
    :catchall_b5
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public getRecordingFilenameForCallId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "callId"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getRecordingFilenameForCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSearchLabel()Lcom/google/android/apps/googlevoice/core/Label;
    .registers 2

    .prologue
    .line 584
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getSearchLabel()Lcom/google/android/apps/googlevoice/core/Label;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ignoreContactsUpToDate()V
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->ignoreContactsUpToDate()V

    .line 383
    return-void
.end method

.method public isLocalConversation(Ljava/lang/String;)Z
    .registers 3
    .parameter "conversationId"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationsByConversationId:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadConversationMappingsFromDatabase()V
    .registers 7

    .prologue
    .line 300
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsPersistenceManager:Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;

    invoke-interface {v3}, Lcom/google/android/apps/googlevoice/sms/SmsPersistenceManager;->loadConversationMappingsFromDatabase()Ljava/util/Map;

    move-result-object v2

    .line 302
    .local v2, loadedConversationMapping:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_37

    .line 303
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 304
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->localConversationIdsByVoiceModelConversationId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelConversationIdsByLocalConversationId:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 308
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_37
    return-void
.end method

.method public loadFromDatabase()V
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->loadFromDatabase()V

    .line 389
    return-void
.end method

.method public markConversationAsArchived(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
    .registers 4
    .parameter "conversation"
    .parameter "archived"

    .prologue
    .line 434
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->isVoiceModelConversation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 435
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->markConversationAsArchived(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 437
    :cond_f
    return-void
.end method

.method public markConversationAsDeleted(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
    .registers 5
    .parameter "conversation"
    .parameter "deleted"

    .prologue
    .line 441
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->isVoiceModelConversation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 442
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->markConversationAsDeleted(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 445
    :cond_f
    if-eqz p2, :cond_1a

    .line 447
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->clearOutbox(Ljava/lang/String;)V

    .line 449
    :cond_1a
    return-void
.end method

.method public markConversationAsRead(Lcom/google/android/apps/googlevoice/core/Conversation;Z)Z
    .registers 5
    .parameter "conversation"
    .parameter "read"

    .prologue
    const/4 v0, 0x0

    .line 453
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v1

    if-ne v1, p2, :cond_8

    .line 461
    :goto_7
    return v0

    .line 457
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->isVoiceModelConversation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 458
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->markConversationAsRead(Lcom/google/android/apps/googlevoice/core/Conversation;Z)Z

    move-result v0

    goto :goto_7

    .line 460
    :cond_19
    invoke-virtual {p1, p2}, Lcom/google/android/apps/googlevoice/core/Conversation;->setIsRead(Z)V

    goto :goto_7
.end method

.method public markConversationAsSpam(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
    .registers 4
    .parameter "conversation"
    .parameter "spam"

    .prologue
    .line 467
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->isVoiceModelConversation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 468
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->markConversationAsSpam(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 470
    :cond_f
    return-void
.end method

.method public markConversationAsStarred(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
    .registers 4
    .parameter "conversation"
    .parameter "starred"

    .prologue
    .line 474
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->isVoiceModelConversation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 475
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->markConversationAsStarred(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 477
    :cond_f
    return-void
.end method

.method public neverMindUpToDateContacts()V
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->neverMindUpToDateContacts()V

    .line 407
    return-void
.end method

.method public notifyListenersUpdateCompleted()V
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelListenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->notifyListenersUpdateCompleted()V

    .line 522
    return-void
.end method

.method public notifyListenersUpdateException(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelListenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->notifyListenersUpdateException(Ljava/lang/Exception;)V

    .line 527
    return-void
.end method

.method public notifyListenersUpdateStarted()V
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelListenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->notifyListenersUpdateStarted()V

    .line 532
    return-void
.end method

.method public onConversationsMapped(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "oldConversationId"
    .parameter "newConversationId"

    .prologue
    .line 577
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->isLocalConversation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 578
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->addConversationMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_9
    return-void
.end method

.method public onSmsAdded(Ljava/lang/String;Lcom/google/android/apps/googlevoice/sms/PendingSms;)V
    .registers 5
    .parameter "conversationId"
    .parameter "pendingSms"

    .prologue
    .line 541
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .line 542
    .local v0, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    iget-object v1, p2, Lcom/google/android/apps/googlevoice/sms/PendingSms;->phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 543
    .local v1, smsPhoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    if-nez v0, :cond_10

    .line 544
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->createLocalConversation(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .line 549
    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/core/Conversation;->addPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)V

    .line 556
    :goto_f
    return-void

    .line 554
    :cond_10
    invoke-virtual {v1, v0}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->setConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    goto :goto_f
.end method

.method public onSmsRemoved(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "conversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 560
    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->smsOutboxManager:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;->hasOutboxWithConversationId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 561
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->removeLocalConversation(Ljava/lang/String;)V

    .line 564
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->removeConversationMapping(Ljava/lang/String;)V

    .line 566
    :cond_10
    return-void
.end method

.method public onSmsRetry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "conversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 571
    return-void
.end method

.method public removeAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V
    .registers 4
    .parameter "conversation"
    .parameter "flag"

    .prologue
    .line 488
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->isVoiceModelConversation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 489
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->removeAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V

    .line 491
    :cond_f
    return-void
.end method

.method public removeListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModelListenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->removeListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z

    move-result v0

    return v0
.end method

.method public requestUpToDateContacts()V
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->requestUpToDateContacts()V

    .line 412
    return-void
.end method

.method public saveActionsToDatabase()V
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->saveActionsToDatabase()V

    .line 402
    return-void
.end method

.method public saveRecordingBytesForCallId([BLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "recordingDataForCallId"
    .parameter "callId"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->saveRecordingBytesForCallId([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveToDatabase()V
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->saveToDatabase()V

    .line 397
    return-void
.end method

.method public setIsFullSubscriber(Z)V
    .registers 3
    .parameter "isFullSubscriber"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->setIsFullSubscriber(Z)V

    .line 423
    return-void
.end method

.method public updateModel(Ljava/util/Hashtable;[Lcom/google/android/apps/googlevoice/core/Label;)V
    .registers 4
    .parameter
    .parameter "labels"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/core/Conversation;",
            ">;[",
            "Lcom/google/android/apps/googlevoice/core/Label;",
            ")V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, conversations:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AndroidLocalModelView;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->updateModel(Ljava/util/Hashtable;[Lcom/google/android/apps/googlevoice/core/Label;)V

    .line 429
    return-void
.end method
