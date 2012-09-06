.class public interface abstract Lcom/google/android/apps/googlevoice/widget/WidgetState;
.super Ljava/lang/Object;
.source "WidgetState.java"


# virtual methods
.method public abstract canComposeSms()Z
.end method

.method public abstract canUseDoNotDisturb()Z
.end method

.method public abstract getAccount()Ljava/lang/String;
.end method

.method public abstract getAccountBalance()Ljava/lang/String;
.end method

.method public abstract getCallingMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
.end method

.method public abstract getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCurrentConversation()Lcom/google/android/apps/googlevoice/core/Conversation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCurrentConversationIndex()I
.end method

.method public abstract getDoNotDisturb()Z
.end method

.method public abstract getInboxTimestamp()J
.end method

.method public abstract getLastInboxTimestamp()J
.end method

.method public abstract getNextConversation()Lcom/google/android/apps/googlevoice/core/Conversation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getNotificationMessage()Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTotalCount()I
.end method

.method public abstract getUnreadCount()I
.end method

.method public abstract goToFirstMessage()V
.end method

.method public abstract goToNextMessage()V
.end method

.method public abstract goToPrevMessage()V
.end method

.method public abstract hasTelephony(Landroid/content/Context;)Z
.end method

.method public abstract isFirstMessage()Z
.end method

.method public abstract isLastMessage()Z
.end method

.method public abstract isUpdatingDoNotDisturb()Z
.end method

.method public abstract setNotificationMessage(Ljava/lang/Integer;)V
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract setUpdatingDoNotDisturb(Z)V
.end method

.method public abstract shouldInterceptCalls()Z
.end method

.method public abstract updateLastInboxTimestamp()V
.end method
