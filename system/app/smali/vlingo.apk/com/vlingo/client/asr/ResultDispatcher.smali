.class public abstract Lcom/vlingo/client/asr/ResultDispatcher;
.super Ljava/lang/Object;
.source "ResultDispatcher.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyWorking()V
    .registers 1

    .prologue
    .line 14
    return-void
.end method

.method public abstract resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z
.end method
