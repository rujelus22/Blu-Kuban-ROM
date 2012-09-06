.class final Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult$1;
.super Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
.source "ImeHandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getCompletions()Lcom/google/research/handwriting/gui/SuggestedWords;
    .registers 2

    .prologue
    .line 206
    sget-object v0, Lcom/google/research/handwriting/gui/SuggestedWords;->EMPTY:Lcom/google/research/handwriting/gui/SuggestedWords;

    return-object v0
.end method

.method public getStrokes()Lcom/google/research/handwriting/base/StrokeList;
    .registers 2

    .prologue
    .line 201
    sget-object v0, Lcom/google/research/handwriting/base/StrokeList;->EMPTY:Lcom/google/research/handwriting/base/StrokeList;

    return-object v0
.end method

.method public getWords()Lcom/google/research/handwriting/gui/SuggestedWords;
    .registers 2

    .prologue
    .line 196
    sget-object v0, Lcom/google/research/handwriting/gui/SuggestedWords;->EMPTY:Lcom/google/research/handwriting/gui/SuggestedWords;

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    const-string v0, "RecognitionResult.EMPTY"

    return-object v0
.end method
