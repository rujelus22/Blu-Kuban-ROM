.class public interface abstract Lcom/vlingo/client/car/asr/RecoResponder;
.super Ljava/lang/Object;
.source "RecoResponder.java"


# virtual methods
.method public abstract getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
.end method

.method public abstract getShownPrompt()Ljava/lang/String;
.end method

.method public abstract getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
.end method

.method public abstract handleLPAction(Ljava/lang/String;)Z
.end method

.method public abstract handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
.end method
