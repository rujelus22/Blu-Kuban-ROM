.class Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;
.super Landroid/os/AsyncTask;
.source "ImeHandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRecognitionTask"
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
.field private final discardObsoleteRequests:Z

.field private final feedbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final logTag:Ljava/lang/String;

.field private final myRequestId:I

.field private strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

.field final synthetic this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;


# direct methods
.method public constructor <init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;IZ)V
    .registers 8
    .parameter
    .parameter "requestId"
    .parameter "discardObsoleteRequests"

    .prologue
    .line 514
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 495
    const-class v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->logTag:Ljava/lang/String;

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->feedbacks:Ljava/util/List;

    .line 515
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpRecognitionTask("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$100(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    .line 516
    iput p2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->myRequestId:I

    .line 518
    iput-boolean p3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->discardObsoleteRequests:Z

    .line 519
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->feedbacks:Ljava/util/List;

    iget-object v1, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->unsentFeedbacks:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 520
    iget-object v0, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->unsentFeedbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 521
    return-void
.end method

.method private pendingRequests()I
    .registers 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    #getter for: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I
    invoke-static {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$300(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)I

    move-result v0

    iget v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->myRequestId:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/AsyncTaskResult;
    .registers 9
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
    .line 528
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground(...) START:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->myRequestId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$100(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    .line 529
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

    .line 530
    const/4 v1, 0x0

    .line 531
    .local v1, result:Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v2}, Lcom/google/research/handwriting/base/StrokeList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_77

    .line 532
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_6c

    .line 533
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground(...) REQSTART:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->myRequestId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$100(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    .line 536
    :try_start_4e
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, v2, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    iget-object v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

    new-instance v4, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask$1;

    invoke-direct {v4, p0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask$1;-><init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;)V

    invoke-interface {v2, v3, v4}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->recognize(Lcom/google/research/handwriting/base/StrokeList;Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct;)Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;
    :try_end_5c
    .catch Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException; {:try_start_4e .. :try_end_5c} :catch_63

    move-result-object v1

    .line 552
    :goto_5d
    new-instance v2, Lcom/google/research/handwriting/gui/AsyncTaskResult;

    invoke-direct {v2, v1}, Lcom/google/research/handwriting/gui/AsyncTaskResult;-><init>(Ljava/lang/Object;)V

    :goto_62
    return-object v2

    .line 542
    :catch_63
    move-exception v0

    .line 543
    .local v0, e:Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;
    new-instance v2, Lcom/google/research/handwriting/gui/AsyncTaskResult;

    iget-object v3, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;->e:Ljava/lang/Exception;

    invoke-direct {v2, v3}, Lcom/google/research/handwriting/gui/AsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    goto :goto_62

    .line 547
    .end local v0           #e:Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;
    :cond_6c
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->logTag:Ljava/lang/String;

    const-string v5, "Request was canceled."

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$100(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 550
    :cond_77
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->logTag:Ljava/lang/String;

    const-string v3, "No strokes"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 492
    check-cast p1, [Lcom/google/research/handwriting/base/StrokeList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->doInBackground([Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/AsyncTaskResult;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Lcom/google/research/handwriting/gui/AsyncTaskResult;)V
    .registers 10
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
    .local p1, response:Lcom/google/research/handwriting/gui/AsyncTaskResult;,"Lcom/google/research/handwriting/gui/AsyncTaskResult<Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;>;"
    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 570
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->logTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPostExecute("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->myRequestId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v7, v4, v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$100(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    #getter for: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->runningRecognitionTasks:Ljava/util/Set;
    invoke-static {v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$400(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 573
    iget-object v2, p1, Lcom/google/research/handwriting/gui/AsyncTaskResult;->exception:Ljava/lang/Exception;

    if-eqz v2, :cond_60

    .line 574
    iget-object v0, p1, Lcom/google/research/handwriting/gui/AsyncTaskResult;->exception:Ljava/lang/Exception;

    .line 576
    .local v0, e:Ljava/lang/Exception;
    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-nez v2, :cond_4b

    instance-of v2, v0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v2, :cond_4b

    instance-of v2, v0, Ljava/net/SocketException;

    if-eqz v2, :cond_54

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The operation timed out"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 578
    :cond_4b
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, v2, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->csi:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

    iget v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->myRequestId:I

    invoke-virtual {v2, v3}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->stopRecognition(I)V

    .line 580
    :cond_54
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->myRequestId:I

    iget-object v4, p1, Lcom/google/research/handwriting/gui/AsyncTaskResult;->exception:Ljava/lang/Exception;

    const-string v5, "recognizing"

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->handleException(ILjava/lang/Exception;Ljava/lang/String;)V

    .line 616
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5f
    :goto_5f
    return-void

    .line 584
    :cond_60
    iget-object v2, p1, Lcom/google/research/handwriting/gui/AsyncTaskResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_6e

    iget-object v2, p1, Lcom/google/research/handwriting/gui/AsyncTaskResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;

    invoke-virtual {v2}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->numResult()I

    move-result v2

    if-nez v2, :cond_84

    .line 585
    :cond_6e
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->logTag:Ljava/lang/String;

    const-string v5, "No or empty response."

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$100(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, v2, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    iget v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->myRequestId:I

    const/4 v4, 0x0

    const-string v5, "No response from server. Network problems?"

    invoke-interface {v2, v3, v4, v5}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    goto :goto_5f

    .line 591
    :cond_84
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 593
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->logTag:Ljava/lang/String;

    const-string v5, "Task was cancelled."

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$100(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    .line 597
    :cond_94
    iget-boolean v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->discardObsoleteRequests:Z

    if-eqz v2, :cond_d7

    iget v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->myRequestId:I

    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    #getter for: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    invoke-static {v4}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$500(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v4

    #getter for: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I
    invoke-static {v4}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->access$600(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)I

    move-result v4

    if-ge v2, v4, :cond_d7

    .line 599
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Obsolete request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->myRequestId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    #getter for: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    invoke-static {v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$500(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v5

    #getter for: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I
    invoke-static {v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->access$600(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v7, v3, v4}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$100(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    .line 603
    :cond_d7
    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget v5, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->myRequestId:I

    iget-object v2, p1, Lcom/google/research/handwriting/gui/AsyncTaskResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;

    iget-object v6, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->convertResult(ILcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    invoke-static {v4, v5, v2, v6}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$700(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v1

    .line 605
    .local v1, fromServer:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, v2, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->csi:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

    iget v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->myRequestId:I

    invoke-virtual {v2, v4}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->stopRecognition(I)V

    .line 606
    iget-boolean v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->discardObsoleteRequests:Z

    if-nez v2, :cond_133

    .line 607
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, v2, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    iget-object v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

    invoke-interface {v2, v1, v3}, Lcom/google/research/handwriting/gui/RecognizerClient;->onRecognitionEnd(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;)V

    .line 612
    :cond_fb
    :goto_fb
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, v2, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    invoke-interface {v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->isShowDebugInfo()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 613
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, v2, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pending requests: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->pendingRequests()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->access$800(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/research/handwriting/gui/RecognizerClient;->setStatusText(Ljava/lang/String;)V

    goto/16 :goto_5f

    .line 608
    :cond_133
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    #getter for: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    invoke-static {v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$500(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->pendingRequests()I

    move-result v2

    if-nez v2, :cond_156

    move v2, v3

    :goto_140
    invoke-virtual {v4, v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->update(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;Z)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 609
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, v2, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    iget-object v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    #getter for: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    invoke-static {v3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$500(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v3

    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->strokesToRecognize:Lcom/google/research/handwriting/base/StrokeList;

    invoke-interface {v2, v3, v4}, Lcom/google/research/handwriting/gui/RecognizerClient;->onRecognitionEnd(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;)V

    goto :goto_fb

    .line 608
    :cond_156
    const/4 v2, 0x0

    goto :goto_140
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 492
    check-cast p1, Lcom/google/research/handwriting/gui/AsyncTaskResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->onPostExecute(Lcom/google/research/handwriting/gui/AsyncTaskResult;)V

    return-void
.end method
