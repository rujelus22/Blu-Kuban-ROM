.class public interface abstract Lcom/google/android/apps/googlevoice/net/SearchConversationsRpc;
.super Ljava/lang/Object;
.source "SearchConversationsRpc.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/net/ApiRpc;


# virtual methods
.method public abstract getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;
.end method

.method public abstract getRemainingConversations()I
.end method

.method public abstract setLimit(I)V
.end method

.method public abstract setOffset(I)V
.end method

.method public abstract setQuery(Ljava/lang/String;)V
.end method

.method public abstract setWantTranscript(Z)V
.end method
