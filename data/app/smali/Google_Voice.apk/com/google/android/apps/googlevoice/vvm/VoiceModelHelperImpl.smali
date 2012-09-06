.class public Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelperImpl;
.super Ljava/lang/Object;
.source "VoiceModelHelperImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelper;


# instance fields
.field private final syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

.field private final voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/vvm/database/SyncState;)V
    .registers 3
    .parameter "voiceModel"
    .parameter "syncState"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelperImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 25
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelperImpl;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    .line 26
    return-void
.end method


# virtual methods
.method public deleteConversation(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V
    .registers 5
    .parameter "voicemail"

    .prologue
    .line 46
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelperImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .line 47
    .local v0, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v0, :cond_1b

    .line 48
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelperImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->markConversationAsArchived(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V

    .line 49
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelperImpl;->syncState:Lcom/google/android/apps/googlevoice/vvm/database/SyncState;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Conversation;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/vvm/database/SyncState;->deleteConversation(Ljava/lang/String;)V

    .line 51
    :cond_1b
    return-void
.end method

.method public markConversationRead(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V
    .registers 5
    .parameter "voicemail"

    .prologue
    .line 30
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelperImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .line 31
    .local v0, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v0, :cond_12

    .line 32
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelperImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->markConversationAsRead(Lcom/google/android/apps/googlevoice/core/Conversation;Z)Z

    .line 34
    :cond_12
    return-void
.end method

.method public markConversationUnread(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V
    .registers 5
    .parameter "voicemail"

    .prologue
    .line 38
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelperImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v0

    .line 39
    .local v0, conversation:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-eqz v0, :cond_12

    .line 40
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/VoiceModelHelperImpl;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->markConversationAsRead(Lcom/google/android/apps/googlevoice/core/Conversation;Z)Z

    .line 42
    :cond_12
    return-void
.end method
