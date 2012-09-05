.class public interface abstract Lcom/google/android/apps/books/tts/TextToSpeechController$VisualReader;
.super Ljava/lang/Object;
.source "TextToSpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/tts/TextToSpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VisualReader"
.end annotation


# virtual methods
.method public abstract beganSpeakingPhrase(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;Lcom/google/android/apps/books/render/TextRange;)V
.end method

.method public abstract finishedSpeaking(Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V
.end method
