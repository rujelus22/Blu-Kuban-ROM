.class Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;
.super Ljava/lang/Object;
.source "Recognizer.java"

# interfaces
.implements Lcom/vlingo/client/core/recognizer/RecorderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/recognizer/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecorderListenerImpl"
.end annotation


# instance fields
.field info:Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;

.field final synthetic this$0:Lcom/vlingo/client/core/recognizer/Recognizer;


# direct methods
.method constructor <init>(Lcom/vlingo/client/core/recognizer/Recognizer;)V
    .registers 2
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public audioDataAvailable([BIIZZ)V
    .registers 9
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .parameter "endOfWaveform"
    .parameter "maxDurReached"

    .prologue
    const/4 v2, 0x0

    .line 627
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->recognizerState:I
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$200(Lcom/vlingo/client/core/recognizer/Recognizer;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_c

    .line 664
    :goto_b
    return-void

    .line 644
    :cond_c
    if-eqz p4, :cond_17

    .line 645
    if-eqz p5, :cond_36

    .line 646
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->notifyRecognizerListener(ILjava/lang/Object;)V

    .line 651
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->currentRequest:Lcom/vlingo/client/core/recognizer/SRRequest;
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$500(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/SRRequest;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/vlingo/client/core/recognizer/SRRequest;->sendAudio([BII)V

    .line 652
    if-eqz p4, :cond_30

    .line 653
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #calls: Lcom/vlingo/client/core/recognizer/Recognizer;->stopAudioStreaming()V
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1100(Lcom/vlingo/client/core/recognizer/Recognizer;)V

    .line 654
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->currentRequest:Lcom/vlingo/client/core/recognizer/SRRequest;
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$500(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/SRRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlingo/client/core/recognizer/SRRequest;->finish()V

    .line 657
    :cond_30
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-static {v0, p3}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1212(Lcom/vlingo/client/core/recognizer/Recognizer;I)I

    goto :goto_b

    .line 648
    :cond_36
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->notifyRecognizerListener(ILjava/lang/Object;)V

    goto :goto_17
.end method

.method public queueAction(Ljava/lang/Integer;)V
    .registers 5
    .parameter "action"

    .prologue
    .line 673
    new-instance v0, Lcom/vlingo/client/core/recognizer/Recognizer$Notification;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    const v2, 0xf4240

    invoke-direct {v0, v1, v2, p1}, Lcom/vlingo/client/core/recognizer/Recognizer$Notification;-><init>(Lcom/vlingo/client/core/recognizer/Recognizer;ILjava/lang/Object;)V

    .line 674
    .local v0, n:Lcom/vlingo/client/core/recognizer/Recognizer$Notification;
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;
    invoke-static {v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1400(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Queue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/recognizer/Queue;->add(Ljava/lang/Object;)V

    .line 675
    return-void
.end method

.method public recordError(I)V
    .registers 3
    .parameter "errorState"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #calls: Lcom/vlingo/client/core/recognizer/Recognizer;->handleRecognitionFailure(I)V
    invoke-static {v0, p1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1300(Lcom/vlingo/client/core/recognizer/Recognizer;I)V

    .line 670
    return-void
.end method

.method public recordInfo(IIIZ)V
    .registers 13
    .parameter "lastSpeechSample"
    .parameter "numSamples"
    .parameter "lastEnergy"
    .parameter "isInCarMode"

    .prologue
    .line 682
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->info:Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;

    if-nez v5, :cond_b

    new-instance v5, Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;

    invoke-direct {v5}, Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;-><init>()V

    iput-object v5, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->info:Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;

    .line 683
    :cond_b
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->info:Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;

    iput p1, v5, Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;->lastSpeechSample:I

    .line 684
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->info:Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;

    iput p2, v5, Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;->numSamples:I

    .line 685
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->info:Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;

    iput p3, v5, Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;->lastEnergy:I

    .line 688
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->info:Lcom/vlingo/client/core/recognizer/RecognizerListener$RecordingProgressInfo;

    invoke-virtual {v5, v6, v7}, Lcom/vlingo/client/core/recognizer/Recognizer;->notifyRecognizerListener(ILjava/lang/Object;)V

    .line 689
    invoke-static {}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1500()F

    move-result v0

    .line 690
    .local v0, autoEndpointingTimeWithSpeech:F
    invoke-static {}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1600()F

    move-result v1

    .line 691
    .local v1, autoEndpointingTimeWithoutSpeech:F
    if-eqz p4, :cond_31

    .line 692
    invoke-static {}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1700()F

    move-result v0

    .line 693
    invoke-static {}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1800()F

    move-result v1

    .line 695
    :cond_31
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_61

    .line 696
    sub-int v5, p2, p1

    int-to-float v5, v5

    sget v6, Ljavax/microedition/media/control/RecordControl;->SAMPLE_RATE:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 697
    .local v3, timeSinceLastSpeechSample:F
    int-to-float v5, p1

    sget v6, Ljavax/microedition/media/control/RecordControl;->SAMPLE_RATE:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 698
    .local v2, lastSpeechTime:F
    move v4, v1

    .line 699
    .local v4, timeThresholdToUse:F
    const/high16 v5, 0x3f00

    cmpl-float v5, v2, v5

    if-lez v5, :cond_4c

    .line 700
    move v4, v0

    .line 702
    :cond_4c
    cmpl-float v5, v3, v4

    if-lez v5, :cond_61

    .line 703
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->controller:Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;
    invoke-static {v5}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1900(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;

    move-result-object v5

    if-eqz v5, :cond_61

    .line 704
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->controller:Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;
    invoke-static {v5}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1900(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;

    move-result-object v5

    invoke-interface {v5}, Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;->stopRecognition()V

    .line 708
    .end local v2           #lastSpeechTime:F
    .end local v3           #timeSinceLastSpeechSample:F
    .end local v4           #timeThresholdToUse:F
    :cond_61
    return-void
.end method

.method public recordStarted()V
    .registers 6

    .prologue
    .line 586
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->recognizerState:I
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$200(Lcom/vlingo/client/core/recognizer/Recognizer;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 599
    :goto_a
    return-void

    .line 589
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->startTime:J
    invoke-static {v3}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$400(Lcom/vlingo/client/core/recognizer/Recognizer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    #setter for: Lcom/vlingo/client/core/recognizer/Recognizer;->startDelta:I
    invoke-static {v0, v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$302(Lcom/vlingo/client/core/recognizer/Recognizer;I)I

    .line 592
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;
    invoke-static {v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$700(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/SRManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->recContext:Lcom/vlingo/client/core/recognizer/SRContext;
    invoke-static {v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$600(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vlingo/client/core/recognizer/SRManager;->newRequest(Lcom/vlingo/client/core/recognizer/SRContext;)Lcom/vlingo/client/core/recognizer/SRRequest;

    move-result-object v1

    #setter for: Lcom/vlingo/client/core/recognizer/Recognizer;->currentRequest:Lcom/vlingo/client/core/recognizer/SRRequest;
    invoke-static {v0, v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$502(Lcom/vlingo/client/core/recognizer/Recognizer;Lcom/vlingo/client/core/recognizer/SRRequest;)Lcom/vlingo/client/core/recognizer/SRRequest;

    .line 594
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->isAudioStreamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 595
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #calls: Lcom/vlingo/client/core/recognizer/Recognizer;->startAudioStreaming()V
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$800(Lcom/vlingo/client/core/recognizer/Recognizer;)V

    .line 598
    :cond_40
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->notifyRecognizerListener(ILjava/lang/Object;)V

    goto :goto_a
.end method

.method public recordStarting()V
    .registers 4

    .prologue
    .line 571
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->recognizerState:I
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$200(Lcom/vlingo/client/core/recognizer/Recognizer;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 579
    :goto_a
    return-void

    .line 578
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->notifyRecognizerListener(ILjava/lang/Object;)V

    goto :goto_a
.end method

.method public recordStopped()V
    .registers 6

    .prologue
    .line 616
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->recognizerState:I
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$200(Lcom/vlingo/client/core/recognizer/Recognizer;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 621
    :goto_a
    return-void

    .line 619
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->startTime:J
    invoke-static {v3}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$400(Lcom/vlingo/client/core/recognizer/Recognizer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    #setter for: Lcom/vlingo/client/core/recognizer/Recognizer;->endStopDelta:I
    invoke-static {v0, v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1002(Lcom/vlingo/client/core/recognizer/Recognizer;I)I

    .line 620
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->notifyRecognizerListener(ILjava/lang/Object;)V

    goto :goto_a
.end method

.method public recordStopping()V
    .registers 6

    .prologue
    .line 605
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->recognizerState:I
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$200(Lcom/vlingo/client/core/recognizer/Recognizer;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 610
    :goto_a
    return-void

    .line 609
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->startTime:J
    invoke-static {v3}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$400(Lcom/vlingo/client/core/recognizer/Recognizer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    #setter for: Lcom/vlingo/client/core/recognizer/Recognizer;->beginStopDelta:I
    invoke-static {v0, v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$902(Lcom/vlingo/client/core/recognizer/Recognizer;I)I

    goto :goto_a
.end method
