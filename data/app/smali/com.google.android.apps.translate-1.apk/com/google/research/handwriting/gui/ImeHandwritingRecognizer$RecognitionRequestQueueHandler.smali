.class Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;
.super Landroid/os/Handler;
.source "ImeHandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecognitionRequestQueueHandler"
.end annotation


# static fields
.field private static final MSG_START_RECOGNITION_REQUEST:I = 0x1


# instance fields
.field private final logTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;


# direct methods
.method private constructor <init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)V
    .registers 3
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 627
    const-class v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->logTag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;-><init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->scheduleRecognition()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->cancelRecognitionRequests()V

    return-void
.end method

.method private cancelRecognitionRequests()V
    .registers 5

    .prologue
    .line 651
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->logTag:Ljava/lang/String;

    const-string v3, "clearing Queue"

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$100(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    .line 652
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->removeMessages(I)V

    .line 653
    return-void
.end method

.method private scheduleRecognition()V
    .registers 6

    .prologue
    .line 660
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->logTag:Ljava/lang/String;

    const-string v4, "scheduling"

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$100(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 662
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v1, v1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v1}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v1

    iget v1, v1, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->timeoutBeforeNextRequest:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 663
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x3

    .line 631
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_52

    .line 641
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->logTag:Ljava/lang/String;

    const-string v2, "Unknown message received. Passing to super."

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v5, v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$100(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 645
    :goto_12
    return-void

    .line 633
    :pswitch_13
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "starting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$100(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v0, v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v0}, Lcom/google/research/handwriting/base/StrokeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    .line 635
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    invoke-static {v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$304(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)I

    move-result v1

    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v2, v2, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v0, v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->startRecognitionTask(ILcom/google/research/handwriting/base/StrokeList;)V

    goto :goto_12

    .line 637
    :cond_48
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->this$0:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->logTag:Ljava/lang/String;

    const-string v2, "No strokes, no recognition started."

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v5, v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->access$100(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 631
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_13
    .end packed-switch
.end method
