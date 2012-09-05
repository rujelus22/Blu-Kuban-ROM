.class Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;
.super Ljava/lang/Object;
.source "Recognizer.java"

# interfaces
.implements Lcom/vlingo/client/core/recognizer/SRRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/recognizer/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SRRequestListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/recognizer/Recognizer;


# direct methods
.method constructor <init>(Lcom/vlingo/client/core/recognizer/Recognizer;)V
    .registers 2
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestFailed(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #calls: Lcom/vlingo/client/core/recognizer/Recognizer;->handleRecognitionFailure(I)V
    invoke-static {v0, p1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1300(Lcom/vlingo/client/core/recognizer/Recognizer;I)V

    .line 735
    return-void
.end method

.method public resultReceived(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V
    .registers 7
    .parameter "response"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->timeoutTask:Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$2000(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 720
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->timeoutTask:Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$2000(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;->cancel()Z

    .line 723
    :cond_11
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/vlingo/client/core/recognizer/Recognizer;->notifyRecognizerListener(ILjava/lang/Object;)V

    .line 724
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->parseResultDelta:I
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$2100(Lcom/vlingo/client/core/recognizer/Recognizer;)I

    move-result v0

    if-gez v0, :cond_7f

    .line 725
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->currentRequest:Lcom/vlingo/client/core/recognizer/SRRequest;
    invoke-static {v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$500(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/SRRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/vlingo/client/core/recognizer/SRRequest;->getTimeSendStart()J

    move-result-wide v1

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->startTime:J
    invoke-static {v3}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$400(Lcom/vlingo/client/core/recognizer/Recognizer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    #setter for: Lcom/vlingo/client/core/recognizer/Recognizer;->sendStartDelta:I
    invoke-static {v0, v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$2202(Lcom/vlingo/client/core/recognizer/Recognizer;I)I

    .line 726
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->currentRequest:Lcom/vlingo/client/core/recognizer/SRRequest;
    invoke-static {v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$500(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/SRRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/vlingo/client/core/recognizer/SRRequest;->getTimeSendFinish()J

    move-result-wide v1

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->startTime:J
    invoke-static {v3}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$400(Lcom/vlingo/client/core/recognizer/Recognizer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    #setter for: Lcom/vlingo/client/core/recognizer/Recognizer;->sendFinishDelta:I
    invoke-static {v0, v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$2302(Lcom/vlingo/client/core/recognizer/Recognizer;I)I

    .line 727
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->currentRequest:Lcom/vlingo/client/core/recognizer/SRRequest;
    invoke-static {v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$500(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/SRRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/vlingo/client/core/recognizer/SRRequest;->getTimeGotResult()J

    move-result-wide v1

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->startTime:J
    invoke-static {v3}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$400(Lcom/vlingo/client/core/recognizer/Recognizer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    #setter for: Lcom/vlingo/client/core/recognizer/Recognizer;->gotResultDelta:I
    invoke-static {v0, v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$2402(Lcom/vlingo/client/core/recognizer/Recognizer;I)I

    .line 728
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->startTime:J
    invoke-static {v3}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$400(Lcom/vlingo/client/core/recognizer/Recognizer;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    #setter for: Lcom/vlingo/client/core/recognizer/Recognizer;->parseResultDelta:I
    invoke-static {v0, v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$2102(Lcom/vlingo/client/core/recognizer/Recognizer;I)I

    .line 729
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getGUttId()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/vlingo/client/core/recognizer/Recognizer;->sendRecTiming(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$2500(Lcom/vlingo/client/core/recognizer/Recognizer;Ljava/lang/String;)V

    .line 731
    :cond_7f
    return-void
.end method

.method public stateChanged(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->notifyRecognizerListener(ILjava/lang/Object;)V

    .line 739
    return-void
.end method
