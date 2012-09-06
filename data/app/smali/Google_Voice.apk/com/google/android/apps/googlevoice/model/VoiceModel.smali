.class public interface abstract Lcom/google/android/apps/googlevoice/model/VoiceModel;
.super Ljava/lang/Object;
.source "VoiceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
    }
.end annotation


# virtual methods
.method public abstract addAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V
.end method

.method public abstract addConversations(Lcom/google/android/apps/googlevoice/core/Label;[Lcom/google/android/apps/googlevoice/core/Conversation;)V
.end method

.method public abstract addConversations([Lcom/google/android/apps/googlevoice/core/Conversation;)V
.end method

.method public abstract addListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z
.end method

.method public abstract cachedContactInfo(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Lcom/google/android/apps/googlevoice/core/ContactInfo;
.end method

.method public abstract clear()V
.end method

.method public abstract clearSearchLabel()V
.end method

.method public abstract getAction(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Action;
.end method

.method public abstract getActions()[Lcom/google/android/apps/googlevoice/core/Action;
.end method

.method public abstract getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getLabel(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Label;
.end method

.method public abstract getLabels()[Lcom/google/android/apps/googlevoice/core/Label;
.end method

.method public abstract getRecordingFilenameForCallId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSearchLabel()Lcom/google/android/apps/googlevoice/core/Label;
.end method

.method public abstract ignoreContactsUpToDate()V
.end method

.method public abstract loadFromDatabase()V
.end method

.method public abstract markConversationAsArchived(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
.end method

.method public abstract markConversationAsDeleted(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
.end method

.method public abstract markConversationAsRead(Lcom/google/android/apps/googlevoice/core/Conversation;Z)Z
.end method

.method public abstract markConversationAsSpam(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
.end method

.method public abstract markConversationAsStarred(Lcom/google/android/apps/googlevoice/core/Conversation;Z)V
.end method

.method public abstract neverMindUpToDateContacts()V
.end method

.method public abstract notifyListenersUpdateCompleted()V
.end method

.method public abstract notifyListenersUpdateException(Ljava/lang/Exception;)V
.end method

.method public abstract notifyListenersUpdateStarted()V
.end method

.method public abstract removeAction(Lcom/google/android/apps/googlevoice/core/Conversation;I)V
.end method

.method public abstract removeListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z
.end method

.method public abstract requestUpToDateContacts()V
.end method

.method public abstract saveActionsToDatabase()V
.end method

.method public abstract saveRecordingBytesForCallId([BLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract saveToDatabase()V
.end method

.method public abstract setIsFullSubscriber(Z)V
.end method

.method public abstract updateModel(Ljava/util/Hashtable;[Lcom/google/android/apps/googlevoice/core/Label;)V
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
.end method
