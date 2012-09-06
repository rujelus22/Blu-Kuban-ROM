.class public Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;
.super Ljava/lang/Object;
.source "HandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/base/HandwritingRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScoredCandidate"
.end annotation


# instance fields
.field public final completions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final score:F

.field public final word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .registers 5
    .parameter "word"
    .parameter "score"

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;-><init>(Ljava/lang/String;FLjava/util/List;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLjava/util/List;)V
    .registers 4
    .parameter "word"
    .parameter "score"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p3, completions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;->word:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;->score:F

    .line 69
    iput-object p3, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;->completions:Ljava/util/List;

    .line 70
    return-void
.end method
