.class public Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;
.super Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;
.source "CloudRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudRecognitionResult"
.end annotation


# instance fields
.field public sourceText:Ljava/lang/String;

.field public targetTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 66
    return-void
.end method
