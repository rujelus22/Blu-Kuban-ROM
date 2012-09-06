.class public interface abstract Lcom/google/android/apps/googlevoice/activity/conversationlist/ConversationListProvider;
.super Ljava/lang/Object;
.source "ConversationListProvider.java"


# virtual methods
.method public abstract getEmptyMessage()Ljava/lang/String;
.end method

.method public abstract getLabel()Lcom/google/android/apps/googlevoice/core/Label;
.end method

.method public abstract getProgressMessage()Ljava/lang/String;
.end method

.method public abstract getRequestStarted()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUpdateState()Lcom/google/android/apps/googlevoice/UpdateStateManager$State;
.end method

.method public abstract markConversationAsRead(Lcom/google/android/apps/googlevoice/model/LocalModelView;Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
.end method

.method public abstract noteUpdateStateFailedShown()V
.end method

.method public abstract processResponse()V
.end method

.method public abstract reloadConversationList(Landroid/os/Message;II)V
.end method
