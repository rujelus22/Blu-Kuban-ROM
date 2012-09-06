.class public interface abstract Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager$Listener;
.super Ljava/lang/Object;
.source "SmsOutboxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/sms/SmsOutboxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onConversationsMapped(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSmsAdded(Ljava/lang/String;Lcom/google/android/apps/googlevoice/sms/PendingSms;)V
.end method

.method public abstract onSmsRemoved(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSmsRetry(Ljava/lang/String;Ljava/lang/String;)V
.end method
