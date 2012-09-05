.class public interface abstract Lcom/vlingo/client/core/recognizer/SRRequest;
.super Ljava/lang/Object;
.source "SRRequest.java"


# virtual methods
.method public abstract addListener(Lcom/vlingo/client/core/recognizer/SRRequestListener;)V
.end method

.method public abstract cancel(Z)V
.end method

.method public abstract finish()V
.end method

.method public abstract getTimeGotResult()J
.end method

.method public abstract getTimeSendFinish()J
.end method

.method public abstract getTimeSendStart()J
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isResponseReceived()Z
.end method

.method public abstract removeListener(Lcom/vlingo/client/core/recognizer/SRRequestListener;)V
.end method

.method public abstract sendAudio([BII)V
.end method
