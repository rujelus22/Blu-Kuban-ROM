.class public Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;
.super Ljava/lang/Object;
.source "GvVvmSyncerImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;


# static fields
.field public static final MAX_NUM_VVMS:I = 0xa


# instance fields
.field private volatile needUpdate:Z

.field private final serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

.field private final syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

.field syncing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final voiceModelHelper:Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelper;

.field private final voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

.field private final voicemailPhoneCallsGetter:Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetter;

.field private final voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelper;Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetter;Lcom/google/android/apps/googlevoice/ServiceManager;Lcom/google/android/apps/googlevoice/vvm/database/SyncState;Lcom/google/android/apps/googlevoice/VoicePreferences;)V
    .registers 9
    .parameter "voicemailProviderHelper"
    .parameter "voiceModelHelper"
    .parameter "voicemailPhoneCallsGetter"
    .parameter "serviceManager"
    .parameter "syncState"
    .parameter "voicePreferences"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->needUpdate:Z

    .line 49
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    .line 50
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voiceModelHelper:Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelper;

    .line 51
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voicemailPhoneCallsGetter:Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetter;

    .line 52
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    .line 53
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    .line 54
    iput-object p6, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 55
    return-void
.end method

.method private buildConversationMap(Ljava/util/Collection;)Ljava/util/Map;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/apps/googlevoice/core/Conversation;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/core/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, conversations:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 227
    .local v0, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 229
    .end local v0           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_1d
    return-object v2
.end method

.method private getInboxConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)Ljava/util/List;
    .registers 8
    .parameter "conversations"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/apps/googlevoice/core/Conversation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/core/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v3, inboxConversations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/Conversation;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v4, :cond_1a

    aget-object v1, v0, v2

    .line 235
    .local v1, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    const-string v5, "inbox"

    invoke-virtual {v1, v5}, Lcom/google/android/apps/googlevoice/core/Conversation;->hasLabel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 236
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 239
    .end local v1           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    :cond_1a
    return-object v3
.end method


# virtual methods
.method public isSyncing()Z
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public requestFullSync()Z
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 59
    iget-object v12, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 60
    const-string v12, "Failed to start full sync."

    invoke-static {v12}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    move v12, v13

    .line 128
    :goto_10
    return v12

    .line 64
    :cond_11
    iget-object v12, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v12}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getVvmEnabled()Z

    move-result v12

    if-nez v12, :cond_23

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->reset()V

    .line 66
    iget-object v12, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v12, v14

    .line 67
    goto :goto_10

    .line 70
    :cond_23
    const-string v12, "Starting full sync."

    invoke-static {v12}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 72
    iput-boolean v13, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->needUpdate:Z

    .line 74
    :try_start_2a
    iget-object v12, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voicemailPhoneCallsGetter:Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetter;

    invoke-interface {v12}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetter;->fetchVoicemailConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->getInboxConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)Ljava/util/List;

    move-result-object v7

    .line 76
    .local v7, gvConversations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    invoke-direct {p0, v7}, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->buildConversationMap(Ljava/util/Collection;)Ljava/util/Map;
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_6e

    move-result-object v8

    .line 77
    .local v8, gvMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    if-nez v7, :cond_41

    .line 128
    iget-object v12, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v12, v13

    goto :goto_10

    .line 81
    :cond_41
    :try_start_41
    iget-object v12, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    invoke-interface {v12}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;->getAllVoicemails()Ljava/util/List;

    move-result-object v2

    .line 82
    .local v2, callLogVoicemails:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v0, callLogMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_50
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_79

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;

    .line 84
    .local v1, callLogVoicemail:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, conversationId:Ljava/lang/String;
    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_75

    .line 87
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d
    .catchall {:try_start_41 .. :try_end_6d} :catchall_6e

    goto :goto_50

    .line 128
    .end local v0           #callLogMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;>;"
    .end local v1           #callLogVoicemail:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
    .end local v2           #callLogVoicemails:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;>;"
    .end local v4           #conversationId:Ljava/lang/String;
    .end local v7           #gvConversations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    .end local v8           #gvMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    :catchall_6e
    move-exception v12

    iget-object v14, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v12

    .line 91
    .restart local v0       #callLogMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;>;"
    .restart local v1       #callLogVoicemail:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
    .restart local v2       #callLogVoicemails:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;>;"
    .restart local v4       #conversationId:Ljava/lang/String;
    .restart local v7       #gvConversations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    .restart local v8       #gvMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/apps/googlevoice/core/Conversation;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_75
    :try_start_75
    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncMessageInCallLogNotInGoogleVoice(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V

    goto :goto_50

    .line 95
    .end local v1           #callLogVoicemail:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
    .end local v4           #conversationId:Ljava/lang/String;
    :cond_79
    const/4 v5, 0x0

    .line 96
    .local v5, countCallLog:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_7b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_af

    const/16 v12, 0xa

    if-ge v5, v12, :cond_af

    .line 97
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/googlevoice/core/Conversation;

    .line 98
    .local v3, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v4

    .line 99
    .restart local v4       #conversationId:Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a6

    .line 101
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;

    invoke-virtual {p0, v12, v3}, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncMessageInCallLogAndGoogleVoice(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 102
    add-int/lit8 v5, v5, 0x1

    .line 112
    :cond_a0
    :goto_a0
    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v9, v9, 0x1

    goto :goto_7b

    .line 107
    :cond_a6
    invoke-virtual {p0, v3}, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncMessageInGoogleVoiceNotInCallLog(Lcom/google/android/apps/googlevoice/core/Conversation;)Z

    move-result v11

    .line 108
    .local v11, inserted:Z
    if-eqz v11, :cond_a0

    .line 109
    add-int/lit8 v5, v5, 0x1

    goto :goto_a0

    .line 116
    .end local v3           #conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    .end local v4           #conversationId:Ljava/lang/String;
    .end local v11           #inserted:Z
    :cond_af
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_cd

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 117
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;

    invoke-virtual {p0, v12}, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncMessageInCallLogNotInGoogleVoice(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V

    goto :goto_b7

    .line 121
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;>;"
    :cond_cd
    iget-boolean v12, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->needUpdate:Z

    if-eqz v12, :cond_db

    .line 122
    const-string v12, "Requesting update."

    invoke-static {v12}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 123
    iget-object v12, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->serviceManager:Lcom/google/android/apps/googlevoice/ServiceManager;

    invoke-interface {v12}, Lcom/google/android/apps/googlevoice/ServiceManager;->requestBackgroundUpdate()V

    .line 125
    :cond_db
    const-string v12, "Finishing full sync."

    invoke-static {v12}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_75 .. :try_end_e0} :catchall_6e

    .line 128
    iget-object v12, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v12, v14

    goto/16 :goto_10
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;->deleteAll()I

    .line 252
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/vvm/database/SyncState;->deleteAllConversations()V

    .line 253
    return-void
.end method

.method public syncMessageInCallLogAndGoogleVoice(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 5
    .parameter "callLogMessage"
    .parameter "conversation"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voicemailPhoneCallsGetter:Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetter;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetter;->downloadContent(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncReadStatus(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 137
    return-void
.end method

.method public syncMessageInCallLogNotInGoogleVoice(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V
    .registers 4
    .parameter "callLogMessage"

    .prologue
    .line 244
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, conversationId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/vvm/database/SyncState;->deleteConversation(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;->delete(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V

    .line 247
    return-void
.end method

.method public syncMessageInGoogleVoiceNotInCallLog(Lcom/google/android/apps/googlevoice/core/Conversation;)Z
    .registers 7
    .parameter "conversation"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 142
    const-string v2, "inbox"

    invoke-virtual {p1, v2}, Lcom/google/android/apps/googlevoice/core/Conversation;->hasLabel(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 160
    :goto_a
    return v0

    .line 146
    :cond_b
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/vvm/database/SyncState;->isConversationAlreadyInserted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voicemailPhoneCallsGetter:Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetter;

    invoke-interface {v0, p1}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetter;->insertVoicemailFromConversation(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voicemailPhoneCallsGetter:Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetter;

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/apps/googlevoice/vvm/VoicemailPhoneCallsGetter;->downloadContent(Ljava/lang/String;)V

    move v0, v1

    .line 151
    goto :goto_a

    .line 155
    :cond_27
    const-string v2, "Delete conversation."

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voiceModelHelper:Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelper;

    invoke-static {}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->createEmptyBuilder()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setSourceData(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->build()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelper;->deleteConversation(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V

    .line 159
    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->needUpdate:Z

    goto :goto_a
.end method

.method public syncReadStatus(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 10
    .parameter "voicemail"
    .parameter "conversation"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 166
    if-nez p2, :cond_5

    .line 215
    :cond_4
    :goto_4
    return-void

    .line 169
    :cond_5
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->isRead()Z

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 172
    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, conversationId:Ljava/lang/String;
    if-nez v0, :cond_1b

    .line 174
    const-string v1, "Null conversation ID!"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 184
    :cond_1b
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->isRead()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/vvm/database/SyncState;->isInsertedConversationRead(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 186
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voiceModelHelper:Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelper;

    invoke-interface {v1, p1}, Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelper;->markConversationRead(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V

    .line 187
    iput-boolean v5, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->needUpdate:Z

    .line 188
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    invoke-interface {v1, v0, v5}, Lcom/google/android/apps/googlevoice/vvm/database/SyncState;->updateConversationIsRead(Ljava/lang/String;Z)V

    goto :goto_4

    .line 195
    :cond_3c
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->isRead()Z

    move-result v1

    if-nez v1, :cond_6f

    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/vvm/database/SyncState;->isInsertedConversationRead(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 197
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->createForUpdate(J)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setIsRead(Z)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->build()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;->update(Landroid/net/Uri;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)I

    .line 199
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    invoke-interface {v1, v0, v5}, Lcom/google/android/apps/googlevoice/vvm/database/SyncState;->updateConversationIsRead(Ljava/lang/String;Z)V

    goto :goto_4

    .line 206
    :cond_6f
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->isRead()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/core/Conversation;->isRead()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/vvm/database/SyncState;->isInsertedConversationRead(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 208
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->voicemailProviderHelper:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->createForUpdate(J)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setIsRead(Z)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->build()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;->update(Landroid/net/Uri;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)I

    .line 210
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncerImpl;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    invoke-interface {v1, v0, v6}, Lcom/google/android/apps/googlevoice/vvm/database/SyncState;->updateConversationIsRead(Ljava/lang/String;Z)V

    goto/16 :goto_4
.end method
