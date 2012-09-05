.class Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;
.super Ljava/lang/Object;
.source "CarRecognizer.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/asr/CarRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NullStatusDialogImpl"
.end annotation


# instance fields
.field private m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

.field final synthetic this$0:Lcom/vlingo/client/car/asr/CarRecognizer;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/asr/CarRecognizer;)V
    .registers 3
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 1

    .prologue
    .line 300
    return-void
.end method

.method public onRecordInfo(III)V
    .registers 6
    .parameter "lastSpeechSample"
    .parameter "numSamples"
    .parameter "lastEnergy"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$400(Lcom/vlingo/client/car/asr/CarRecognizer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$2;

    invoke-direct {v1, p0, p3}, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$2;-><init>(Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method

.method public setCallback(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    .line 297
    return-void
.end method

.method public setMessage(ZLjava/lang/String;)V
    .registers 5
    .parameter "recording"
    .parameter "message"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/car/asr/CarRecognizer;

    #getter for: Lcom/vlingo/client/car/asr/CarRecognizer;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->access$400(Lcom/vlingo/client/car/asr/CarRecognizer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$1;

    invoke-direct {v1, p0, p2}, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl$1;-><init>(Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    return-void
.end method

.method public setMessageAndNote(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "recording"
    .parameter "message"
    .parameter "note"

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;->setMessage(ZLjava/lang/String;)V

    .line 287
    return-void
.end method

.method public setNoteText(Ljava/lang/String;)V
    .registers 2
    .parameter "note"

    .prologue
    .line 326
    return-void
.end method

.method public setProcessing()V
    .registers 1

    .prologue
    .line 306
    return-void
.end method

.method public setRecording(Z)V
    .registers 2
    .parameter "recording"

    .prologue
    .line 303
    return-void
.end method

.method public setTimings(Lcom/vlingo/client/core/recognizer/TimingRepository;)V
    .registers 2
    .parameter "timings"

    .prologue
    .line 329
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .registers 3
    .parameter "initialMessage"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    if-eqz v0, :cond_9

    .line 291
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    invoke-interface {v0, p0}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;->onStatusDialogPainted(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V

    .line 293
    :cond_9
    return-void
.end method
