.class Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;
.super Ljava/lang/Object;
.source "VLRecognizer.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/VLRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NullStatusDialogImpl"
.end annotation


# instance fields
.field private m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

.field final synthetic this$0:Lcom/vlingo/client/asr/VLRecognizer;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/VLRecognizer;)V
    .registers 3
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 1

    .prologue
    .line 284
    return-void
.end method

.method public onRecordInfo(III)V
    .registers 6
    .parameter "lastSpeechSample"
    .parameter "numSamples"
    .parameter "lastEnergy"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/asr/VLRecognizer;->access$400(Lcom/vlingo/client/asr/VLRecognizer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$2;

    invoke-direct {v1, p0, p3}, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$2;-><init>(Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    return-void
.end method

.method public setCallback(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    .line 281
    return-void
.end method

.method public setMessage(ZLjava/lang/String;)V
    .registers 5
    .parameter "recording"
    .parameter "message"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;->this$0:Lcom/vlingo/client/asr/VLRecognizer;

    #getter for: Lcom/vlingo/client/asr/VLRecognizer;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vlingo/client/asr/VLRecognizer;->access$400(Lcom/vlingo/client/asr/VLRecognizer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$1;

    invoke-direct {v1, p0, p2}, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl$1;-><init>(Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method public setMessageAndNote(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "recording"
    .parameter "message"
    .parameter "note"

    .prologue
    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;->setMessage(ZLjava/lang/String;)V

    .line 271
    return-void
.end method

.method public setNoteText(Ljava/lang/String;)V
    .registers 2
    .parameter "note"

    .prologue
    .line 305
    return-void
.end method

.method public setProcessing()V
    .registers 1

    .prologue
    .line 290
    return-void
.end method

.method public setRecording(Z)V
    .registers 2
    .parameter "recording"

    .prologue
    .line 287
    return-void
.end method

.method public setTimings(Lcom/vlingo/client/core/recognizer/TimingRepository;)V
    .registers 2
    .parameter "timings"

    .prologue
    .line 308
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .registers 3
    .parameter "initialMessage"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    if-eqz v0, :cond_9

    .line 275
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;->m_statusCallback:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;

    invoke-interface {v0, p0}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;->onStatusDialogPainted(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V

    .line 277
    :cond_9
    return-void
.end method
