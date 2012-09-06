.class public Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;
.super Ljava/lang/Object;
.source "HandwritingRecognizer.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/base/HandwritingRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;",
        ">;"
    }
.end annotation


# static fields
.field public static final CANCELED:Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;


# instance fields
.field private debugInfo:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final scoredResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 93
    new-instance v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;

    const-string v1, "cancelled"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->CANCELED:Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "id"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->id:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->scoredResults:Ljava/util/List;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
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
    .line 84
    .local p2, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->id:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->scoredResults:Ljava/util/List;

    .line 87
    return-void
.end method


# virtual methods
.method public add(Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->scoredResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public get(I)Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;
    .registers 3
    .parameter "i"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->scoredResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;

    return-object v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->id:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->scoredResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public numResult()I
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->scoredResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setDebugInfo(Ljava/lang/String;)V
    .registers 2
    .parameter "debugInfo"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;

    .line 122
    return-void
.end method
