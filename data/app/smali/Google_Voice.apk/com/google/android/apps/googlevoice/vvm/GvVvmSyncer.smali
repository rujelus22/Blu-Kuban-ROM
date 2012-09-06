.class public interface abstract Lcom/google/android/apps/googlevoice/vvm/GvVvmSyncer;
.super Ljava/lang/Object;
.source "GvVvmSyncer.java"


# virtual methods
.method public abstract requestFullSync()Z
.end method

.method public abstract reset()V
.end method

.method public abstract syncMessageInCallLogAndGoogleVoice(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;Lcom/google/android/apps/googlevoice/core/Conversation;)V
.end method

.method public abstract syncMessageInCallLogNotInGoogleVoice(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V
.end method

.method public abstract syncMessageInGoogleVoiceNotInCallLog(Lcom/google/android/apps/googlevoice/core/Conversation;)Z
.end method

.method public abstract syncReadStatus(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;Lcom/google/android/apps/googlevoice/core/Conversation;)V
.end method
