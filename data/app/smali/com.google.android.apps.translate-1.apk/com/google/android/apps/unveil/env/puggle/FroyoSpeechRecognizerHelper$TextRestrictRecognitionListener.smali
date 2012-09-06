.class Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$TextRestrictRecognitionListener;
.super Ljava/lang/Object;
.source "FroyoSpeechRecognizerHelper.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextRestrictRecognitionListener"
.end annotation


# instance fields
.field private final speechButton:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;Landroid/widget/TextView;)V
    .registers 3
    .parameter
    .parameter "speechButton"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$TextRestrictRecognitionListener;->this$0:Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$TextRestrictRecognitionListener;->speechButton:Landroid/widget/TextView;

    .line 37
    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 1

    .prologue
    .line 40
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2
    .parameter "buffer"

    .prologue
    .line 44
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$TextRestrictRecognitionListener;->speechButton:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/unveil/R$string;->analyzing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    return-void
.end method

.method public onError(I)V
    .registers 6
    .parameter "error"

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-static {}, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$TextRestrictRecognitionListener;->speechButton:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/unveil/R$string;->speak:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$TextRestrictRecognitionListener;->this$0:Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;

    #getter for: Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->access$100(Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/apps/unveil/R$string;->no_speech_recognized:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 57
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 3
    .parameter "eventType"
    .parameter "params"

    .prologue
    .line 61
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 2
    .parameter "partialResults"

    .prologue
    .line 65
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$TextRestrictRecognitionListener;->speechButton:Landroid/widget/TextView;

    sget v1, Lcom/google/android/apps/unveil/R$string;->listening:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 6
    .parameter "results"

    .prologue
    .line 74
    invoke-static {}, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "onResults"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 77
    .local v0, textRestricts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$TextRestrictRecognitionListener;->this$0:Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;

    iget-object v1, v1, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper;->speechRecognizerListener:Lcom/google/android/apps/unveil/env/puggle/SpeechRecognizerHelper$SpeechRecognizerListener;

    invoke-interface {v1, v0}, Lcom/google/android/apps/unveil/env/puggle/SpeechRecognizerHelper$SpeechRecognizerListener;->onRecognizedTextRestricts(Ljava/util/List;)V

    .line 79
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/puggle/FroyoSpeechRecognizerHelper$TextRestrictRecognitionListener;->speechButton:Landroid/widget/TextView;

    sget v2, Lcom/google/android/apps/unveil/R$string;->speak:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 80
    return-void
.end method

.method public onRmsChanged(F)V
    .registers 2
    .parameter "rmsdB"

    .prologue
    .line 84
    return-void
.end method
