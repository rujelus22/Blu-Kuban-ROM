.class Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;
.super Ljava/lang/Object;
.source "VLRecognitionService.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/service/VLRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NullStatusDialogImpl"
.end annotation


# instance fields
.field private m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

.field final synthetic this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/service/VLRecognitionService;)V
    .registers 3
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 1

    .prologue
    .line 550
    return-void
.end method

.method public onRecordInfo(III)V
    .registers 4
    .parameter "lastSpeechSample"
    .parameter "numSamples"
    .parameter "lastEnergy"

    .prologue
    .line 559
    return-void
.end method

.method public setCallback(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 546
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    .line 547
    return-void
.end method

.method public setMessage(ZLjava/lang/String;)V
    .registers 5
    .parameter "recording"
    .parameter "message"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/asr/service/VLRecognitionService;

    iget-object v0, v0, Lcom/vlingo/client/asr/service/VLRecognitionService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl$1;

    invoke-direct {v1, p0, p2}, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl$1;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    return-void
.end method

.method public setMessageAndNote(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "recording"
    .parameter "message"
    .parameter "note"

    .prologue
    .line 536
    invoke-virtual {p0, p1, p2}, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;->setMessage(ZLjava/lang/String;)V

    .line 537
    return-void
.end method

.method public setNoteText(Ljava/lang/String;)V
    .registers 2
    .parameter "note"

    .prologue
    .line 562
    return-void
.end method

.method public setProcessing()V
    .registers 1

    .prologue
    .line 556
    return-void
.end method

.method public setRecording(Z)V
    .registers 2
    .parameter "recording"

    .prologue
    .line 553
    return-void
.end method

.method public setTimings(Lcom/vlingo/client/core/recognizer/TimingRepository;)V
    .registers 2
    .parameter "timings"

    .prologue
    .line 565
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .registers 3
    .parameter "initialMessage"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    if-eqz v0, :cond_9

    .line 541
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    invoke-interface {v0, p0}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;->onStatusDialogPainted(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V

    .line 543
    :cond_9
    return-void
.end method
