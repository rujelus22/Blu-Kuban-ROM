.class public interface abstract Lcom/google/android/apps/translate/VoiceInput$UiListener;
.super Ljava/lang/Object;
.source "VoiceInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/VoiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UiListener"
.end annotation


# virtual methods
.method public abstract onCancelVoice()V
.end method

.method public abstract onError()V
.end method

.method public abstract onVoiceResults(Ljava/util/List;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZ)V"
        }
    .end annotation
.end method
