.class Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;
.super Landroid/os/AsyncTask;
.source "ImeHandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->askTheSecondaryRecognizer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/research/handwriting/base/StrokeList;",
        "Ljava/lang/Object;",
        "Lcom/google/research/handwriting/gui/AsyncTaskResult",
        "<",
        "Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

.field final synthetic this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;


# direct methods
.method constructor <init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)V
    .registers 2
    .parameter

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/AsyncTaskResult;
    .registers 7
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/research/handwriting/base/StrokeList;",
            ")",
            "Lcom/google/research/handwriting/gui/AsyncTaskResult",
            "<",
            "Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1123
    new-instance v1, Lcom/google/research/handwriting/base/StrokeList;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/research/handwriting/base/StrokeList;-><init>(Lcom/google/research/handwriting/base/StrokeList;Z)V

    iput-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;->strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

    .line 1125
    :try_start_b
    new-instance v1, Lcom/google/research/handwriting/gui/AsyncTaskResult;

    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, v2, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v2}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSecondaryRecognizer()Lcom/google/research/handwriting/base/HandwritingRecognizer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;->strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

    sget-object v4, Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct;->UNCANCELABLE:Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct;

    invoke-interface {v2, v3, v4}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->recognize(Lcom/google/research/handwriting/base/StrokeList;Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct;)Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/research/handwriting/gui/AsyncTaskResult;-><init>(Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_20} :catch_21

    .line 1130
    :goto_20
    return-object v1

    .line 1129
    :catch_21
    move-exception v0

    .line 1130
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/google/research/handwriting/gui/AsyncTaskResult;

    invoke-direct {v1, v0}, Lcom/google/research/handwriting/gui/AsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    goto :goto_20
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1115
    check-cast p1, [Lcom/google/research/handwriting/base/StrokeList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;->doInBackground([Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/AsyncTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/research/handwriting/gui/AsyncTaskResult;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/research/handwriting/gui/AsyncTaskResult",
            "<",
            "Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1137
    .local p1, result:Lcom/google/research/handwriting/gui/AsyncTaskResult;,"Lcom/google/research/handwriting/gui/AsyncTaskResult<Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;>;"
    iget-object v1, p1, Lcom/google/research/handwriting/gui/AsyncTaskResult;->exception:Ljava/lang/Exception;

    if-nez v1, :cond_1c

    .line 1138
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    const/4 v3, 0x0

    iget-object v1, p1, Lcom/google/research/handwriting/gui/AsyncTaskResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;

    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;->strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->convertResult(ILcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    invoke-static {v2, v3, v1, v4}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$700(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v0

    .line 1139
    .local v0, fromServer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v1, v1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, v2, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-interface {v1, v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->onRecognitionEnd(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;)V

    .line 1141
    .end local v0           #fromServer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    :cond_1c
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1115
    check-cast p1, Lcom/google/research/handwriting/gui/AsyncTaskResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;->onPostExecute(Lcom/google/research/handwriting/gui/AsyncTaskResult;)V

    return-void
.end method
