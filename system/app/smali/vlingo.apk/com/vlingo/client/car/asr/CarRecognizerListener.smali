.class public interface abstract Lcom/vlingo/client/car/asr/CarRecognizerListener;
.super Ljava/lang/Object;
.source "CarRecognizerListener.java"


# virtual methods
.method public abstract onBeginningOfSpeech()V
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onReadyForSpeech()V
.end method

.method public abstract onResults(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V
.end method

.method public abstract onRmsChanged(F)V
.end method

.method public abstract onStatusMessage(Ljava/lang/String;)V
.end method
