.class public interface abstract Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;
.super Ljava/lang/Object;
.source "VoiceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/model/VoiceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract actionUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Action;)V
.end method

.method public abstract actionsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
.end method

.method public abstract contactsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
.end method

.method public abstract conversationUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Conversation;)V
.end method

.method public abstract labelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Label;)V
.end method

.method public abstract modelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
.end method

.method public abstract updateCompleted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
.end method

.method public abstract updateException(Lcom/google/android/apps/googlevoice/model/VoiceModel;Ljava/lang/Exception;)V
.end method

.method public abstract updateStarted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
.end method
