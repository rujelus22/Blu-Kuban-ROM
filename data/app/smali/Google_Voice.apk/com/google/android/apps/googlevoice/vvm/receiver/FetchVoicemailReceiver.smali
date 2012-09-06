.class public Lcom/google/android/apps/googlevoice/vvm/receiver/FetchVoicemailReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FetchVoicemailReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 26
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_1a

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FetchVoicemailReceiver received intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 29
    :cond_1a
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v1

    .line 31
    .local v1, dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    const-string v4, "android.intent.action.FETCH_VOICEMAIL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 32
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getGvVvmSyncer()Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;

    move-result-object v3

    .line 33
    .local v3, syncer:Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicemailProviderHelper()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;->findVoicemailByUri(Landroid/net/Uri;)Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;

    move-result-object v0

    .line 35
    .local v0, callLogMessage:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
    if-nez v0, :cond_61

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Voicemail with Uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 49
    .end local v0           #callLogMessage:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
    .end local v3           #syncer:Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;
    :cond_60
    :goto_60
    return-void

    .line 39
    .restart local v0       #callLogMessage:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
    .restart local v3       #syncer:Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;
    :cond_61
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v2

    .line 42
    .local v2, gvMessage:Lcom/google/android/apps/googlevoice/core/Conversation;
    if-nez v2, :cond_90

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conversation with ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_60

    .line 47
    :cond_90
    invoke-interface {v3, v0, v2}, Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;->syncMessageInCallLogAndGoogleVoice(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;Lcom/google/android/apps/googlevoice/core/Conversation;)V

    goto :goto_60
.end method
