.class Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer$1;
.super Ljava/lang/Object;
.source "AndroidSpeechSynthesizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->onUtteranceCompleted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;

.field final synthetic val$utteranceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer$1;->this$0:Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;

    iput-object p2, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer$1;->val$utteranceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer$1;->this$0:Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;

    #getter for: Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mCompletionCallback:Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechCompletionCallback;
    invoke-static {v0}, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->access$000(Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;)Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechCompletionCallback;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer$1;->this$0:Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;

    #getter for: Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->mCompletionCallback:Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechCompletionCallback;
    invoke-static {v0}, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;->access$000(Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer;)Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechCompletionCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer$1;->val$utteranceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/tts/TextToSpeechController$SpeechCompletionCallback;->onPhraseFinished(Ljava/lang/String;)V

    .line 102
    :cond_13
    :goto_13
    return-void

    .line 99
    :cond_14
    const-string v0, "AndroidTTS"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 100
    const-string v0, "AndroidTTS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing completion callback for phrase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/tts/AndroidSpeechSynthesizer$1;->val$utteranceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method
