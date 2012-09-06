.class public interface abstract Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;
.super Ljava/lang/Object;
.source "SmsOutboxManager.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/sms/SmsInfoRetriever;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;)V
.end method

.method public abstract addPendingSms(Ljava/lang/String;Lcom/google/android/apps/googlevoice/sms/PendingSms;)V
.end method

.method public abstract clearOutbox(Ljava/lang/String;)V
.end method

.method public abstract clearOutboxes()V
.end method

.method public abstract getNextSmsMessagesToSend()[Lcom/google/android/apps/googlevoice/sms/PendingSms;
.end method

.method public abstract getSmsWithConversationId(Ljava/lang/String;)[Lcom/google/android/apps/googlevoice/sms/PendingSms;
.end method

.method public abstract hasOutboxWithConversationId(Ljava/lang/String;)Z
.end method

.method public abstract loadOutboxesFromDatabase(Lcom/google/android/apps/googlevoice/model/LocalModelView;)V
.end method

.method public abstract onModelDownloadCompleted([Lcom/google/android/apps/googlevoice/core/Conversation;J)V
.end method

.method public abstract onSendSmsFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onSendSmsStarted(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSendSmsSucceeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeListener(Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;)V
.end method

.method public abstract removePendingSms(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/googlevoice/sms/PendingSms;
.end method

.method public abstract retryPendingSms(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract saveOutboxesToDatabase()V
.end method
