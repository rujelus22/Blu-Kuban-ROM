.class public interface abstract Lcom/google/android/apps/googlevoice/model/LocalModelView;
.super Ljava/lang/Object;
.source "LocalModelView.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/model/VoiceModel;


# virtual methods
.method public abstract createLocalConversation()Lcom/google/android/apps/googlevoice/core/Conversation;
.end method

.method public abstract createLocalConversation(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;
.end method

.method public abstract getConversationWithId(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Conversation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getConversationsWithLabel(Lcom/google/android/apps/googlevoice/core/Label;)[Lcom/google/android/apps/googlevoice/core/Conversation;
.end method

.method public abstract getPhoneCallsWithConversationId(Ljava/lang/String;)[Lcom/google/android/apps/googlevoice/core/PhoneCall;
.end method

.method public abstract isLocalConversation(Ljava/lang/String;)Z
.end method

.method public abstract loadConversationMappingsFromDatabase()V
.end method
