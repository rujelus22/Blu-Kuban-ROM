.class public Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;
.super Ljava/lang/Object;
.source "BookKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/BookKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionRequestWithResults"
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;


# instance fields
.field public final recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

.field public final selectedWord:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    new-instance v0, Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;

    sget-object v1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->EMPTY:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;-><init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;Ljava/lang/String;)V

    sput-object v0, Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;->EMPTY:Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;

    return-void
.end method

.method public constructor <init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;Ljava/lang/String;)V
    .registers 3
    .parameter "recognitionResult"
    .parameter "selectedWord"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;->recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    .line 68
    iput-object p2, p0, Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;->selectedWord:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognitionResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;->recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selectedWord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;->selectedWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
