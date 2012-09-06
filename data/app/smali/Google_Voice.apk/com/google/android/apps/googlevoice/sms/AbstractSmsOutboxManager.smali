.class public abstract Lcom/google/android/apps/googlevoice/sms/AbstractSmsOutboxManager;
.super Ljava/lang/Object;
.source "AbstractSmsOutboxManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AbstractSmsOutboxManager;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 24
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AbstractSmsOutboxManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method protected notifyListenersConversationsMapped(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "oldConversationId"
    .parameter "newConversationId"

    .prologue
    .line 69
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/sms/AbstractSmsOutboxManager;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;

    .line 71
    .local v2, listener:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;
    :try_start_12
    invoke-interface {v2, p1, p2}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;->onConversationsMapped(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 72
    :catch_16
    move-exception v0

    .line 73
    .local v0, exception:Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " .onConversationsMapped failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 76
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v2           #listener:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;
    :cond_2e
    return-void
.end method

.method protected notifyListenersSmsAdded(Ljava/lang/String;Lcom/google/android/apps/googlevoice/sms/PendingSms;)V
    .registers 8
    .parameter "conversationId"
    .parameter "pendingSms"

    .prologue
    .line 36
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/sms/AbstractSmsOutboxManager;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;

    .line 38
    .local v2, listener:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;
    :try_start_12
    invoke-interface {v2, p1, p2}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;->onSmsAdded(Ljava/lang/String;Lcom/google/android/apps/googlevoice/sms/PendingSms;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 39
    :catch_16
    move-exception v0

    .line 40
    .local v0, exception:Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " .onSmsAdded failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 43
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v2           #listener:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;
    :cond_2e
    return-void
.end method

.method protected notifyListenersSmsRemoved(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "conversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 47
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/sms/AbstractSmsOutboxManager;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;

    .line 49
    .local v2, listener:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;
    :try_start_12
    invoke-interface {v2, p1, p2}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;->onSmsRemoved(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 50
    :catch_16
    move-exception v0

    .line 51
    .local v0, exception:Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " .onSmsRemoved failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 54
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v2           #listener:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;
    :cond_2e
    return-void
.end method

.method protected notifyListenersSmsRetried(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "conversationId"
    .parameter "smsPhoneCallId"

    .prologue
    .line 58
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/sms/AbstractSmsOutboxManager;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;

    .line 60
    .local v2, listener:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;
    :try_start_12
    invoke-interface {v2, p1, p2}, Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;->onSmsRetry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 61
    :catch_16
    move-exception v0

    .line 62
    .local v0, exception:Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " .onSmsRetried failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 65
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v2           #listener:Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;
    :cond_2e
    return-void
.end method

.method public removeListener(Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 30
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/sms/AbstractSmsOutboxManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method
