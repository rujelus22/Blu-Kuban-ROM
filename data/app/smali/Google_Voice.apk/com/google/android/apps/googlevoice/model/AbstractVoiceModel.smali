.class public abstract Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;
.super Ljava/lang/Object;
.source "AbstractVoiceModel.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/model/VoiceModel;


# instance fields
.field private final listenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;-><init>(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;->listenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 25
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;->listenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->addListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyListenersActionUpdated(Lcom/google/android/apps/googlevoice/core/Action;)V
    .registers 3
    .parameter "action"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;->listenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->notifyListenersActionUpdated(Lcom/google/android/apps/googlevoice/core/Action;)V

    .line 71
    return-void
.end method

.method protected notifyListenersActionsUpdated()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;->listenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->notifyListenersActionsUpdated()V

    .line 76
    return-void
.end method

.method public notifyListenersContactsUpdated()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;->listenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->notifyListenersContactsUpdated()V

    .line 66
    return-void
.end method

.method public notifyListenersConversationUpdated(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 3
    .parameter "conversation"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;->listenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->notifyListenersConversationUpdated(Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 61
    return-void
.end method

.method public notifyListenersLabelUpdated(Lcom/google/android/apps/googlevoice/core/Label;)V
    .registers 3
    .parameter "label"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;->listenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->notifyListenersLabelUpdated(Lcom/google/android/apps/googlevoice/core/Label;)V

    .line 56
    return-void
.end method

.method public notifyListenersModelUpdated()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;->listenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->notifyListenersModelUpdated()V

    .line 51
    return-void
.end method

.method public notifyListenersUpdateCompleted()V
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;->listenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->notifyListenersUpdateCompleted()V

    .line 36
    return-void
.end method

.method public notifyListenersUpdateException(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;->listenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->notifyListenersUpdateException(Ljava/lang/Exception;)V

    .line 41
    return-void
.end method

.method public notifyListenersUpdateStarted()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;->listenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->notifyListenersUpdateStarted()V

    .line 46
    return-void
.end method

.method public declared-synchronized removeListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 30
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/AbstractVoiceModel;->listenerHelper:Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->removeListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
