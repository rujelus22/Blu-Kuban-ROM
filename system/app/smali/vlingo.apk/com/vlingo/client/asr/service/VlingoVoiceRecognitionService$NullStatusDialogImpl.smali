.class Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullStatusDialogImpl;
.super Ljava/lang/Object;
.source "VlingoVoiceRecognitionService.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NullStatusDialogImpl"
.end annotation


# instance fields
.field private m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

.field final synthetic this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V
    .registers 3
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 1

    .prologue
    .line 387
    return-void
.end method

.method public onRecordInfo(III)V
    .registers 7
    .parameter "lastSpeechSample"
    .parameter "numSamples"
    .parameter "lastEnergy"

    .prologue
    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    #getter for: Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;
    invoke-static {v1}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1e

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/speech/RecognitionService$Callback;->rmsChanged(F)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 401
    :goto_c
    return-void

    .line 398
    :catch_d
    move-exception v0

    .line 399
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public setCallback(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    .line 384
    return-void
.end method

.method public setMessage(ZLjava/lang/String;)V
    .registers 3
    .parameter "recording"
    .parameter "message"

    .prologue
    .line 370
    return-void
.end method

.method public setMessageAndNote(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "recording"
    .parameter "message"
    .parameter "note"

    .prologue
    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullStatusDialogImpl;->setMessage(ZLjava/lang/String;)V

    .line 374
    return-void
.end method

.method public setNoteText(Ljava/lang/String;)V
    .registers 2
    .parameter "note"

    .prologue
    .line 404
    return-void
.end method

.method public setProcessing()V
    .registers 1

    .prologue
    .line 393
    return-void
.end method

.method public setRecording(Z)V
    .registers 2
    .parameter "recording"

    .prologue
    .line 390
    return-void
.end method

.method public setTimings(Lcom/vlingo/client/core/recognizer/TimingRepository;)V
    .registers 2
    .parameter "timings"

    .prologue
    .line 407
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .registers 3
    .parameter "initialMessage"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    if-eqz v0, :cond_9

    .line 378
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    invoke-interface {v0, p0}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;->onStatusDialogPainted(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V

    .line 380
    :cond_9
    return-void
.end method
