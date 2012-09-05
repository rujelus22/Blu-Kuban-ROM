.class public interface abstract Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onSendPhoto(Ljava/lang/String;I)V
.end method

.method public abstract onSendTextMessage(Ljava/lang/String;)V
.end method

.method public abstract onTypingStatusChanged(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V
.end method
