.class Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;
.super Ljava/lang/Object;
.source "VoiceModelListenerHelper.java"


# instance fields
.field private final registeredListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 3
    .parameter "voiceModel"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->registeredListeners:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 33
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->registeredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_16

    move-result v0

    if-eqz v0, :cond_f

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->registeredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_d

    .line 37
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyListenersActionUpdated(Lcom/google/android/apps/googlevoice/core/Action;)V
    .registers 6
    .parameter "action"

    .prologue
    .line 96
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->registeredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;

    .line 98
    .local v1, l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    :try_start_12
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v1, v3, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;->actionUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Action;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_6

    .line 99
    :catch_18
    move-exception v2

    .line 100
    .local v2, runtimeException:Ljava/lang/RuntimeException;
    const-string v3, "Unexpected exception from VoiceModel.Listener"

    invoke-static {v3, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 103
    .end local v1           #l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    .end local v2           #runtimeException:Ljava/lang/RuntimeException;
    :cond_1f
    return-void
.end method

.method public notifyListenersActionsUpdated()V
    .registers 5

    .prologue
    .line 107
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->registeredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;

    .line 109
    .local v1, l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    :try_start_12
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v1, v3}, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;->actionsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_6

    .line 110
    :catch_18
    move-exception v2

    .line 111
    .local v2, runtimeException:Ljava/lang/RuntimeException;
    const-string v3, "Unexpected exception from VoiceModel.Listener"

    invoke-static {v3, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 114
    .end local v1           #l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    .end local v2           #runtimeException:Ljava/lang/RuntimeException;
    :cond_1f
    return-void
.end method

.method public notifyListenersContactsUpdated()V
    .registers 5

    .prologue
    .line 85
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->registeredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;

    .line 87
    .local v1, l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    :try_start_12
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v1, v3}, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;->contactsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_6

    .line 88
    :catch_18
    move-exception v2

    .line 89
    .local v2, runtimeException:Ljava/lang/RuntimeException;
    const-string v3, "Unexpected exception from VoiceModel.Listener"

    invoke-static {v3, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 92
    .end local v1           #l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    .end local v2           #runtimeException:Ljava/lang/RuntimeException;
    :cond_1f
    return-void
.end method

.method public notifyListenersConversationUpdated(Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 6
    .parameter "conversation"

    .prologue
    .line 74
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->registeredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;

    .line 76
    .local v1, l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    :try_start_12
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v1, v3, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;->conversationUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Conversation;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_6

    .line 77
    :catch_18
    move-exception v2

    .line 78
    .local v2, runtimeException:Ljava/lang/RuntimeException;
    const-string v3, "Unexpected exception from VoiceModel.Listener"

    invoke-static {v3, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 81
    .end local v1           #l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    .end local v2           #runtimeException:Ljava/lang/RuntimeException;
    :cond_1f
    return-void
.end method

.method public notifyListenersLabelUpdated(Lcom/google/android/apps/googlevoice/core/Label;)V
    .registers 6
    .parameter "label"

    .prologue
    .line 63
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->registeredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;

    .line 65
    .local v1, l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    :try_start_12
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v1, v3, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;->labelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Label;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_6

    .line 66
    :catch_18
    move-exception v2

    .line 67
    .local v2, runtimeException:Ljava/lang/RuntimeException;
    const-string v3, "Unexpected exception from VoiceModel.Listener"

    invoke-static {v3, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 70
    .end local v1           #l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    .end local v2           #runtimeException:Ljava/lang/RuntimeException;
    :cond_1f
    return-void
.end method

.method public notifyListenersModelUpdated()V
    .registers 5

    .prologue
    .line 52
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->registeredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;

    .line 54
    .local v2, l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    :try_start_12
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v2, v3}, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;->modelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_6

    .line 55
    :catch_18
    move-exception v0

    .line 56
    .local v0, exception:Ljava/lang/RuntimeException;
    const-string v3, "Unexpected exception from VoiceModel.Listener"

    invoke-static {v3, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 59
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v2           #l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    :cond_1f
    return-void
.end method

.method public notifyListenersUpdateCompleted()V
    .registers 5

    .prologue
    .line 129
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->registeredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;

    .line 131
    .local v1, l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    :try_start_12
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v1, v3}, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;->updateCompleted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_6

    .line 132
    :catch_18
    move-exception v2

    .line 133
    .local v2, runtimeException:Ljava/lang/RuntimeException;
    const-string v3, "Unexpected exception from VoiceModel.Listener"

    invoke-static {v3, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 136
    .end local v1           #l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    .end local v2           #runtimeException:Ljava/lang/RuntimeException;
    :cond_1f
    return-void
.end method

.method public notifyListenersUpdateException(Ljava/lang/Exception;)V
    .registers 6
    .parameter "exception"

    .prologue
    .line 140
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->registeredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;

    .line 142
    .local v1, l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    :try_start_12
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v1, v3, p1}, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;->updateException(Lcom/google/android/apps/googlevoice/model/VoiceModel;Ljava/lang/Exception;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_6

    .line 143
    :catch_18
    move-exception v2

    .line 144
    .local v2, runtimeException:Ljava/lang/RuntimeException;
    const-string v3, "Unexpected exception from VoiceModel.Listener"

    invoke-static {v3, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 147
    .end local v1           #l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    .end local v2           #runtimeException:Ljava/lang/RuntimeException;
    :cond_1f
    return-void
.end method

.method public notifyListenersUpdateStarted()V
    .registers 5

    .prologue
    .line 118
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->registeredListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;

    .line 120
    .local v1, l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    :try_start_12
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v1, v3}, Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;->updateStarted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_6

    .line 121
    :catch_18
    move-exception v2

    .line 122
    .local v2, runtimeException:Ljava/lang/RuntimeException;
    const-string v3, "Unexpected exception from VoiceModel.Listener"

    invoke-static {v3, v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 125
    .end local v1           #l:Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    .end local v2           #runtimeException:Ljava/lang/RuntimeException;
    :cond_1f
    return-void
.end method

.method public declared-synchronized removeListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z
    .registers 3
    .parameter "listener"

    .prologue
    .line 46
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/model/VoiceModelListenerHelper;->registeredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 46
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
