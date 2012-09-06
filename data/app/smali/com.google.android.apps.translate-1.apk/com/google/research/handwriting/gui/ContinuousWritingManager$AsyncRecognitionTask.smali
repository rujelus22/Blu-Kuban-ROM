.class Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;
.super Landroid/os/AsyncTask;
.source "ContinuousWritingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/ContinuousWritingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRecognitionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final id:I

.field private final strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

.field final synthetic this$0:Lcom/google/research/handwriting/gui/ContinuousWritingManager;


# direct methods
.method public constructor <init>(Lcom/google/research/handwriting/gui/ContinuousWritingManager;ILcom/google/research/handwriting/base/StrokeList;)V
    .registers 4
    .parameter
    .parameter "id"
    .parameter "strokes"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ContinuousWritingManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 91
    iput p2, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;->id:I

    .line 92
    iput-object p3, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;->strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

    .line 93
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    .registers 4
    .parameter "params"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ContinuousWritingManager;

    iget-object v0, v0, Lcom/google/research/handwriting/gui/ContinuousWritingManager;->recognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;->strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognize(Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;->doInBackground([Ljava/lang/Object;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)V
    .registers 8
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 102
    sget-object v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->EMPTY:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    if-eq p1, v0, :cond_1d

    .line 103
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ContinuousWritingManager;

    iget-object v0, v0, Lcom/google/research/handwriting/gui/ContinuousWritingManager;->recognizer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-virtual {p1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getWords()Lcom/google/research/handwriting/gui/SuggestedWords;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/research/handwriting/gui/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onkey-cont"

    const-string v5, ""

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;ZLjava/lang/String;)V

    .line 106
    :cond_1d
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ContinuousWritingManager;

    #getter for: Lcom/google/research/handwriting/gui/ContinuousWritingManager;->callbacks:Lcom/google/research/handwriting/gui/ContinuousWritingManager$ContinuousWritingCallbacks;
    invoke-static {v0}, Lcom/google/research/handwriting/gui/ContinuousWritingManager;->access$000(Lcom/google/research/handwriting/gui/ContinuousWritingManager;)Lcom/google/research/handwriting/gui/ContinuousWritingManager$ContinuousWritingCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;->id:I

    iget-object v2, p0, Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;->strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/research/handwriting/gui/ContinuousWritingManager$ContinuousWritingCallbacks;->onRecognitionDone(ILcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;)V

    .line 107
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    check-cast p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/research/handwriting/gui/ContinuousWritingManager$AsyncRecognitionTask;->onPostExecute(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)V

    return-void
.end method
