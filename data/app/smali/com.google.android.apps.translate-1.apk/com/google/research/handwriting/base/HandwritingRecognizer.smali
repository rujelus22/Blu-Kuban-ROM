.class public interface abstract Lcom/google/research/handwriting/base/HandwritingRecognizer;
.super Ljava/lang/Object;
.source "HandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct;,
        Lcom/google/research/handwriting/base/HandwritingRecognizer$SendingFeedbackFailedException;,
        Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;,
        Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;,
        Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;,
        Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;
    }
.end annotation


# virtual methods
.method public abstract feedback(Ljava/lang/String;Lcom/google/research/handwriting/base/StrokeList;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/research/handwriting/base/HandwritingRecognizer$SendingFeedbackFailedException;
        }
    .end annotation
.end method

.method public abstract feedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/research/handwriting/base/HandwritingRecognizer$SendingFeedbackFailedException;
        }
    .end annotation
.end method

.method public abstract getSecondaryRecognizer()Lcom/google/research/handwriting/base/HandwritingRecognizer;
.end method

.method public abstract getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;
.end method

.method public abstract hasSecondaryRecognizer()Z
.end method

.method public abstract recognize(Lcom/google/research/handwriting/base/StrokeList;Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct;)Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;
        }
    .end annotation
.end method

.method public abstract setSecondaryRecognizer(Lcom/google/research/handwriting/base/HandwritingRecognizer;)V
.end method
