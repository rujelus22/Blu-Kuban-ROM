.class public interface abstract Lcom/google/android/apps/googlevoice/vvm/database/SyncState;
.super Ljava/lang/Object;
.source "SyncState.java"


# virtual methods
.method public abstract deleteAllConversations()V
.end method

.method public abstract deleteConversation(Ljava/lang/String;)V
.end method

.method public abstract insertConversation(Ljava/lang/String;Z)V
.end method

.method public abstract isConversationAlreadyInserted(Ljava/lang/String;)Z
.end method

.method public abstract isInsertedConversationRead(Ljava/lang/String;)Z
.end method

.method public abstract updateConversationIsRead(Ljava/lang/String;Z)V
.end method
