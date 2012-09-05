.class Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;
.super Ljava/lang/Object;
.source "RecognitionManager.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/asr/RecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecognitionManagerFlowActor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/asr/RecognitionManager;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V
    .registers 2
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/asr/RecognitionManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 569
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;-><init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V

    return-void
.end method


# virtual methods
.method public abortRecognition()V
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v0, v0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->abortRecognition()V

    .line 612
    return-void
.end method

.method public connectBluetooth()V
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    #calls: Lcom/vlingo/client/core/asr/RecognitionManager;->connectBluetooth()V
    invoke-static {v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->access$700(Lcom/vlingo/client/core/asr/RecognitionManager;)V

    .line 624
    return-void
.end method

.method public displayMessage(Ljava/lang/String;II)V
    .registers 6
    .parameter "message"
    .parameter "failureMessageCode"
    .parameter "failureMessageType"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v0, v0, Lcom/vlingo/client/core/asr/RecognitionManager;->messageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p3}, Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;->displayMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 587
    return-void
.end method

.method public displayRecordingStatus()V
    .registers 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v0, v0, Lcom/vlingo/client/core/asr/RecognitionManager;->statusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v2, v2, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    invoke-virtual {v2}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->getListeningMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;->setMessage(ZLjava/lang/String;)V

    .line 600
    return-void
.end method

.method public hideStatusDialog()V
    .registers 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v0, v0, Lcom/vlingo/client/core/asr/RecognitionManager;->statusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    invoke-interface {v0}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;->hide()V

    .line 581
    return-void
.end method

.method public ignoreListeningNotifications()V
    .registers 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vlingo/client/core/asr/RecognitionManager;->ignoreListeningNotifications:Z

    .line 636
    return-void
.end method

.method public playStartRecordTone()V
    .registers 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    #calls: Lcom/vlingo/client/core/asr/RecognitionManager;->playStartRecordTone()V
    invoke-static {v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->access$600(Lcom/vlingo/client/core/asr/RecognitionManager;)V

    .line 618
    return-void
.end method

.method public playStopRecordTone()V
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    #calls: Lcom/vlingo/client/core/asr/RecognitionManager;->playStopRecordTone()V
    invoke-static {v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->access$800(Lcom/vlingo/client/core/asr/RecognitionManager;)V

    .line 630
    return-void
.end method

.method public resumeListeningNoticications()V
    .registers 5

    .prologue
    .line 641
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vlingo/client/core/asr/RecognitionManager;->ignoreListeningNotifications:Z

    .line 644
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v0, v0, Lcom/vlingo/client/core/asr/RecognitionManager;->statusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v2, v2, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    invoke-virtual {v2}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->getListeningMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    #getter for: Lcom/vlingo/client/core/asr/RecognitionManager;->iRecognizerListener:Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;
    invoke-static {v3}, Lcom/vlingo/client/core/asr/RecognitionManager;->access$900(Lcom/vlingo/client/core/asr/RecognitionManager;)Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;

    move-result-object v3

    #getter for: Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->currentNote:Ljava/lang/String;
    invoke-static {v3}, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->access$1000(Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;->setMessageAndNote(ZLjava/lang/String;Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public showStatusDialog(Ljava/lang/String;)V
    .registers 3
    .parameter "warmupMessage"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    iget-object v0, v0, Lcom/vlingo/client/core/asr/RecognitionManager;->statusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;->show(Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method public startRecording()V
    .registers 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    invoke-virtual {v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->startRecording()V

    .line 593
    return-void
.end method

.method public stopRecording()V
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    invoke-virtual {v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->stopRecording()V

    .line 606
    return-void
.end method
