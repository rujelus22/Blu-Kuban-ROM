.class public Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;
.super Landroid/os/AsyncTask;
.source "ImeHandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AsyncLogTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/research/handwriting/gui/AsyncTaskResult",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected final completion:Ljava/lang/String;

.field protected final debugInfo:Ljava/lang/String;

.field protected final feedback:Ljava/lang/String;

.field protected final inkHash:Ljava/lang/String;

.field protected final logStrokes:Lcom/google/research/handwriting/base/StrokeList;

.field protected final selectionMode:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;


# direct methods
.method public constructor <init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;Lcom/google/research/handwriting/base/StrokeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter "strokes"
    .parameter "feedback"
    .parameter "completion"
    .parameter "selectionMode"
    .parameter "debugInfo"

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 428
    new-instance v0, Lcom/google/research/handwriting/base/StrokeList;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/google/research/handwriting/base/StrokeList;-><init>(Lcom/google/research/handwriting/base/StrokeList;Z)V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->logStrokes:Lcom/google/research/handwriting/base/StrokeList;

    .line 429
    iput-object p3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->feedback:Ljava/lang/String;

    .line 430
    iput-object p5, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->selectionMode:Ljava/lang/String;

    .line 431
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->inkHash:Ljava/lang/String;

    .line 432
    iput-object p4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->completion:Ljava/lang/String;

    .line 433
    iput-object p6, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->debugInfo:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public constructor <init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter "inkHash"
    .parameter "feedback"
    .parameter "completion"
    .parameter "selectionMode"
    .parameter "debugInfo"

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 418
    iput-object p2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->inkHash:Ljava/lang/String;

    .line 419
    iput-object p3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->feedback:Ljava/lang/String;

    .line 420
    iput-object p5, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->selectionMode:Ljava/lang/String;

    .line 421
    iput-object p6, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->debugInfo:Ljava/lang/String;

    .line 422
    iput-object p4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->completion:Ljava/lang/String;

    .line 423
    sget-object v0, Lcom/google/research/handwriting/base/StrokeList;->EMPTY:Lcom/google/research/handwriting/base/StrokeList;

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->logStrokes:Lcom/google/research/handwriting/base/StrokeList;

    .line 424
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/research/handwriting/gui/AsyncTaskResult;
    .registers 11
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/google/research/handwriting/gui/AsyncTaskResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    const/4 v1, 0x0

    .line 439
    .local v1, result:Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 441
    .local v2, startTime:J
    :try_start_5
    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->logStrokes:Lcom/google/research/handwriting/base/StrokeList;

    sget-object v5, Lcom/google/research/handwriting/base/StrokeList;->EMPTY:Lcom/google/research/handwriting/base/StrokeList;

    if-ne v4, v5, :cond_30

    .line 442
    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v4, v4, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    iget-object v5, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->feedback:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->inkHash:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->selectionMode:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->debugInfo:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->feedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Lcom/google/research/handwriting/base/HandwritingRecognizer$SendingFeedbackFailedException; {:try_start_5 .. :try_end_1a} :catch_40

    .line 449
    :goto_1a
    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v4, v4, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->csi:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

    const-string v5, "fb"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->recordRecognition(Ljava/lang/String;J)V

    .line 450
    new-instance v4, Lcom/google/research/handwriting/gui/AsyncTaskResult;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/google/research/handwriting/gui/AsyncTaskResult;-><init>(Ljava/lang/Object;)V

    :goto_2f
    return-object v4

    .line 444
    :cond_30
    :try_start_30
    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v4, v4, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    iget-object v5, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->feedback:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->logStrokes:Lcom/google/research/handwriting/base/StrokeList;

    iget-object v7, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->selectionMode:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->debugInfo:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->feedback(Ljava/lang/String;Lcom/google/research/handwriting/base/StrokeList;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Lcom/google/research/handwriting/base/HandwritingRecognizer$SendingFeedbackFailedException; {:try_start_30 .. :try_end_3f} :catch_40

    goto :goto_1a

    .line 446
    :catch_40
    move-exception v0

    .line 447
    .local v0, e:Lcom/google/research/handwriting/base/HandwritingRecognizer$SendingFeedbackFailedException;
    new-instance v4, Lcom/google/research/handwriting/gui/AsyncTaskResult;

    invoke-direct {v4, v0}, Lcom/google/research/handwriting/gui/AsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    goto :goto_2f
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 405
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->doInBackground([Ljava/lang/Void;)Lcom/google/research/handwriting/gui/AsyncTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/research/handwriting/gui/AsyncTaskResult;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/research/handwriting/gui/AsyncTaskResult",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Lcom/google/research/handwriting/gui/AsyncTaskResult;,"Lcom/google/research/handwriting/gui/AsyncTaskResult<Ljava/lang/String;>;"
    const/4 v5, 0x3

    .line 455
    iget-object v1, p1, Lcom/google/research/handwriting/gui/AsyncTaskResult;->exception:Ljava/lang/Exception;

    if-nez v1, :cond_9

    .line 465
    :goto_5
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 466
    return-void

    .line 460
    :cond_9
    new-instance v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$SendingFeedbackException;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, p1, Lcom/google/research/handwriting/gui/AsyncTaskResult;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$SendingFeedbackException;-><init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;Ljava/lang/Exception;)V

    .line 461
    .local v0, e:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$SendingFeedbackException;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    const/4 v2, 0x0

    const-string v3, "sending feedback"

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->handleException(ILjava/lang/Exception;Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    const-string v2, "ImeHandwritingRecognizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/research/handwriting/gui/AsyncTaskResult;->exception:Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v5, v2, v3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$100(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    const-string v2, "ImeHandwritingRecognizer"

    const-string v3, "exception"

    iget-object v4, p1, Lcom/google/research/handwriting/gui/AsyncTaskResult;->exception:Ljava/lang/Exception;

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v1, v5, v2, v3, v4}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$200(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 405
    check-cast p1, Lcom/google/research/handwriting/gui/AsyncTaskResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;->onPostExecute(Lcom/google/research/handwriting/gui/AsyncTaskResult;)V

    return-void
.end method
