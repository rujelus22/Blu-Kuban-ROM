.class Lcom/swype/android/voice/VLingoSpeechManager$1;
.super Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub;
.source "VLingoSpeechManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/voice/VLingoSpeechManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private endpointed:Z

.field final synthetic this$0:Lcom/swype/android/voice/VLingoSpeechManager;


# direct methods
.method constructor <init>(Lcom/swype/android/voice/VLingoSpeechManager;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/swype/android/voice/VLingoSpeechManager$1;->this$0:Lcom/swype/android/voice/VLingoSpeechManager;

    invoke-direct {p0}, Lcom/vlingo/client/asr/service/IVLRecognitionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/voice/VLingoSpeechManager$1;->endpointed:Z

    .line 135
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/voice/VLingoSpeechManager$1;->endpointed:Z

    .line 139
    iget-object v0, p0, Lcom/swype/android/voice/VLingoSpeechManager$1;->this$0:Lcom/swype/android/voice/VLingoSpeechManager;

    iget-object v0, v0, Lcom/swype/android/voice/VLingoSpeechManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    invoke-virtual {v0}, Lcom/swype/android/voice/VoiceKeyboardView;->setWorking()V

    .line 140
    return-void
.end method

.method public onError(I)V
    .registers 5
    .parameter "error"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v1, p0, Lcom/swype/android/voice/VLingoSpeechManager$1;->this$0:Lcom/swype/android/voice/VLingoSpeechManager;

    iget-boolean v2, p0, Lcom/swype/android/voice/VLingoSpeechManager$1;->endpointed:Z

    #calls: Lcom/swype/android/voice/VLingoSpeechManager;->getErrorStringId(IZ)I
    invoke-static {v1, p1, v2}, Lcom/swype/android/voice/VLingoSpeechManager;->access$000(Lcom/swype/android/voice/VLingoSpeechManager;IZ)I

    move-result v0

    .line 144
    .local v0, id:I
    iget-object v1, p0, Lcom/swype/android/voice/VLingoSpeechManager$1;->this$0:Lcom/swype/android/voice/VLingoSpeechManager;

    iget-object v1, v1, Lcom/swype/android/voice/VLingoSpeechManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    iget-object v2, p0, Lcom/swype/android/voice/VLingoSpeechManager$1;->this$0:Lcom/swype/android/voice/VLingoSpeechManager;

    iget-object v2, v2, Lcom/swype/android/voice/VLingoSpeechManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    invoke-virtual {v2}, Lcom/swype/android/voice/VoiceKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/swype/android/voice/VoiceKeyboardView;->setError(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 3
    .parameter "noiseParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/swype/android/voice/VLingoSpeechManager$1;->this$0:Lcom/swype/android/voice/VLingoSpeechManager;

    iget-object v0, v0, Lcom/swype/android/voice/VLingoSpeechManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    invoke-virtual {v0}, Lcom/swype/android/voice/VoiceKeyboardView;->setListening()V

    .line 131
    return-void
.end method

.method public onResults(Ljava/util/List;J)V
    .registers 6
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vlingo/client/asr/service/VLRecognitionResult;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Lcom/vlingo/client/asr/service/VLRecognitionResult;>;"
    iget-object v0, p0, Lcom/swype/android/voice/VLingoSpeechManager$1;->this$0:Lcom/swype/android/voice/VLingoSpeechManager;

    invoke-virtual {v0}, Lcom/swype/android/voice/VLingoSpeechManager;->hideVoiceKeyboard()V

    .line 150
    iget-object v0, p0, Lcom/swype/android/voice/VLingoSpeechManager$1;->this$0:Lcom/swype/android/voice/VLingoSpeechManager;

    iget-object v1, p0, Lcom/swype/android/voice/VLingoSpeechManager$1;->this$0:Lcom/swype/android/voice/VLingoSpeechManager;

    invoke-virtual {v1, p1}, Lcom/swype/android/voice/VLingoSpeechManager;->getFirstResult(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/voice/VLingoSpeechManager;->sendResultsToIME(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onRmsChanged(F)V
    .registers 2
    .parameter "rmsdB"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    return-void
.end method

.method public onStatusMessage(Ljava/lang/String;)V
    .registers 3
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/swype/android/voice/VLingoSpeechManager$1;->this$0:Lcom/swype/android/voice/VLingoSpeechManager;

    iget-object v0, v0, Lcom/swype/android/voice/VLingoSpeechManager;->view:Lcom/swype/android/voice/VoiceKeyboardView;

    invoke-virtual {v0, p1}, Lcom/swype/android/voice/VoiceKeyboardView;->setMessage(Ljava/lang/String;)V

    .line 155
    return-void
.end method
