.class public interface abstract Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechSynthesizer;
.super Ljava/lang/Object;
.source "TextToSpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/tts/TextToSpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SpeechSynthesizer"
.end annotation


# virtual methods
.method public abstract clearQueue()V
.end method

.method public abstract enqueuePhrase(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setCompletionCallback(Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechCompletionCallback;)V
.end method
