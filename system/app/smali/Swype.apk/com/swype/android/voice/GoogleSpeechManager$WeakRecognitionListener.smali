.class Lcom/swype/android/voice/GoogleSpeechManager$WeakRecognitionListener;
.super Ljava/lang/Object;
.source "GoogleSpeechManager.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/voice/GoogleSpeechManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakRecognitionListener"
.end annotation


# instance fields
.field private final listenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/speech/RecognitionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/speech/RecognitionListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/swype/android/voice/GoogleSpeechManager$WeakRecognitionListener;->listenerRef:Ljava/lang/ref/WeakReference;

    .line 66
    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/swype/android/voice/GoogleSpeechManager$WeakRecognitionListener;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionListener;

    .line 79
    .local v0, listener:Landroid/speech/RecognitionListener;
    if-eqz v0, :cond_d

    .line 80
    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    .line 82
    :cond_d
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 4
    .parameter "buffer"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/swype/android/voice/GoogleSpeechManager$WeakRecognitionListener;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionListener;

    .line 95
    .local v0, listener:Landroid/speech/RecognitionListener;
    if-eqz v0, :cond_d

    .line 96
    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    .line 98
    :cond_d
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/swype/android/voice/GoogleSpeechManager$WeakRecognitionListener;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionListener;

    .line 103
    .local v0, listener:Landroid/speech/RecognitionListener;
    if-eqz v0, :cond_d

    .line 104
    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    .line 106
    :cond_d
    return-void
.end method

.method public onError(I)V
    .registers 4
    .parameter "error"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/swype/android/voice/GoogleSpeechManager$WeakRecognitionListener;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionListener;

    .line 111
    .local v0, listener:Landroid/speech/RecognitionListener;
    if-eqz v0, :cond_d

    .line 112
    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onError(I)V

    .line 114
    :cond_d
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 5
    .parameter "eventType"
    .parameter "params"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/swype/android/voice/GoogleSpeechManager$WeakRecognitionListener;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionListener;

    .line 135
    .local v0, listener:Landroid/speech/RecognitionListener;
    if-eqz v0, :cond_d

    .line 136
    invoke-interface {v0, p1, p2}, Landroid/speech/RecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    .line 138
    :cond_d
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 4
    .parameter "partialResults"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/swype/android/voice/GoogleSpeechManager$WeakRecognitionListener;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionListener;

    .line 127
    .local v0, listener:Landroid/speech/RecognitionListener;
    if-eqz v0, :cond_d

    .line 128
    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    .line 130
    :cond_d
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/swype/android/voice/GoogleSpeechManager$WeakRecognitionListener;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionListener;

    .line 71
    .local v0, listener:Landroid/speech/RecognitionListener;
    if-eqz v0, :cond_d

    .line 72
    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    .line 74
    :cond_d
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 4
    .parameter "results"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/swype/android/voice/GoogleSpeechManager$WeakRecognitionListener;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionListener;

    .line 119
    .local v0, listener:Landroid/speech/RecognitionListener;
    if-eqz v0, :cond_d

    .line 120
    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    .line 122
    :cond_d
    return-void
.end method

.method public onRmsChanged(F)V
    .registers 4
    .parameter "rmsdB"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/swype/android/voice/GoogleSpeechManager$WeakRecognitionListener;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/RecognitionListener;

    .line 87
    .local v0, listener:Landroid/speech/RecognitionListener;
    if-eqz v0, :cond_d

    .line 88
    invoke-interface {v0, p1}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    .line 90
    :cond_d
    return-void
.end method
