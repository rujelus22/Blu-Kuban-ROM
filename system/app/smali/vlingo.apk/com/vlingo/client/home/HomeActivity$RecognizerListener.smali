.class Lcom/vlingo/client/home/HomeActivity$RecognizerListener;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/vlingo/client/asr/VLRecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/home/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecognizerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/home/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/home/HomeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;->this$0:Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/home/HomeActivity;Lcom/vlingo/client/home/HomeActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;-><init>(Lcom/vlingo/client/home/HomeActivity;)V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;->this$0:Lcom/vlingo/client/home/HomeActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/home/HomeActivity;->onBeginningOfSpeech()V

    .line 530
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;->this$0:Lcom/vlingo/client/home/HomeActivity;

    iget-object v0, v0, Lcom/vlingo/client/home/HomeActivity;->recognizer:Lcom/vlingo/client/asr/VLRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/asr/VLRecognizer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    .line 536
    :goto_a
    return-void

    .line 535
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;->this$0:Lcom/vlingo/client/home/HomeActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/home/HomeActivity;->onEndOfSpeech()V

    goto :goto_a
.end method

.method public onError(I)V
    .registers 6
    .parameter "errorCode"

    .prologue
    .line 539
    sget-object v1, Lcom/vlingo/client/asr/service/VLRecognitionResult;->ERROR_IDS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 540
    .local v0, id:Ljava/lang/Integer;
    if-nez v0, :cond_15

    .line 541
    const v1, 0x7f09033a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 542
    :cond_15
    iget-object v1, p0, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;->this$0:Lcom/vlingo/client/home/HomeActivity;

    iget-object v2, p0, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;->this$0:Lcom/vlingo/client/home/HomeActivity;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vlingo/client/home/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/home/HomeActivity;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public onReadyForSpeech()V
    .registers 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;->this$0:Lcom/vlingo/client/home/HomeActivity;

    iget-object v0, v0, Lcom/vlingo/client/home/HomeActivity;->recognizer:Lcom/vlingo/client/asr/VLRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/asr/VLRecognizer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    .line 549
    :goto_a
    return-void

    .line 548
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;->this$0:Lcom/vlingo/client/home/HomeActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/home/HomeActivity;->onReadyForSpeech()V

    goto :goto_a
.end method

.method public onRecognitionCanceled()V
    .registers 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;->this$0:Lcom/vlingo/client/home/HomeActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/home/HomeActivity;->resetRecognitionUI()V

    .line 576
    return-void
.end method

.method public onRecognitionStopped()V
    .registers 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;->this$0:Lcom/vlingo/client/home/HomeActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/home/HomeActivity;->resetRecognitionUI()V

    .line 572
    return-void
.end method

.method public onResults(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V
    .registers 3
    .parameter "results"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;->this$0:Lcom/vlingo/client/home/HomeActivity;

    iget-object v0, v0, Lcom/vlingo/client/home/HomeActivity;->recognizer:Lcom/vlingo/client/asr/VLRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/asr/VLRecognizer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    .line 555
    :goto_a
    return-void

    .line 554
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;->this$0:Lcom/vlingo/client/home/HomeActivity;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/home/HomeActivity;->onResults(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V

    goto :goto_a
.end method

.method public onRmsChanged(F)V
    .registers 3
    .parameter "rmsdB"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;->this$0:Lcom/vlingo/client/home/HomeActivity;

    iget-object v0, v0, Lcom/vlingo/client/home/HomeActivity;->recognizer:Lcom/vlingo/client/asr/VLRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/asr/VLRecognizer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    .line 561
    :goto_a
    return-void

    .line 560
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/home/HomeActivity$RecognizerListener;->this$0:Lcom/vlingo/client/home/HomeActivity;

    #getter for: Lcom/vlingo/client/home/HomeActivity;->recoStatusArea:Lcom/vlingo/client/home/RecoStatusArea;
    invoke-static {v0}, Lcom/vlingo/client/home/HomeActivity;->access$300(Lcom/vlingo/client/home/HomeActivity;)Lcom/vlingo/client/home/RecoStatusArea;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vlingo/client/home/RecoStatusArea;->onRMSChange(F)V

    goto :goto_a
.end method

.method public onStatusMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 565
    return-void
.end method
