.class Lcom/vlingo/client/car/CarActivity$5;
.super Ljava/lang/Object;
.source "CarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarActivity;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;Lcom/vlingo/client/car/PromptContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/CarActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/CarActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity$5;->this$0:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1352
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$5;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->recoTTSPrompt:Lcom/vlingo/client/core/tts/TTSDemand;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$2100(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 1353
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$5;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v0

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->ttsManager:Lcom/vlingo/client/car/tts/CarTTSManager;

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$5;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->recoTTSPrompt:Lcom/vlingo/client/core/tts/TTSDemand;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$2100(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/tts/CarTTSManager;->playDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 1354
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$5;->this$0:Lcom/vlingo/client/car/CarActivity;

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$5;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->currentShownPrompt:Ljava/lang/String;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$2200(Lcom/vlingo/client/car/CarActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity$5;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->currentPromptContent:Lcom/vlingo/client/car/PromptContent;
    invoke-static {v2}, Lcom/vlingo/client/car/CarActivity;->access$2300(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/PromptContent;

    move-result-object v2

    #calls: Lcom/vlingo/client/car/CarActivity;->onShowListeningStarting(ZLjava/lang/String;Lcom/vlingo/client/car/PromptContent;)V
    invoke-static {v0, v4, v1, v2}, Lcom/vlingo/client/car/CarActivity;->access$2400(Lcom/vlingo/client/car/CarActivity;ZLjava/lang/String;Lcom/vlingo/client/car/PromptContent;)V

    .line 1360
    :goto_2b
    return-void

    .line 1356
    :cond_2c
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->cancel(Z)V

    .line 1357
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$5;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;
    invoke-static {v0}, Lcom/vlingo/client/car/CarActivity;->access$900(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/asr/CarRecognizer;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$5;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->curContext:Lcom/vlingo/client/core/recognizer/SRContext;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$2500(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity$5;->this$0:Lcom/vlingo/client/car/CarActivity;

    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity$5;->this$0:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vlingo/client/car/asr/CarRecognizer;->startListening(Lcom/vlingo/client/core/recognizer/SRContext;Landroid/content/Context;Lcom/vlingo/client/car/asr/CarRecognizerListener;)V

    .line 1358
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity$5;->this$0:Lcom/vlingo/client/car/CarActivity;

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity$5;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->currentShownPrompt:Ljava/lang/String;
    invoke-static {v1}, Lcom/vlingo/client/car/CarActivity;->access$2200(Lcom/vlingo/client/car/CarActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity$5;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->currentPromptContent:Lcom/vlingo/client/car/PromptContent;
    invoke-static {v2}, Lcom/vlingo/client/car/CarActivity;->access$2300(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/PromptContent;

    move-result-object v2

    #calls: Lcom/vlingo/client/car/CarActivity;->onShowListeningStarting(ZLjava/lang/String;Lcom/vlingo/client/car/PromptContent;)V
    invoke-static {v0, v4, v1, v2}, Lcom/vlingo/client/car/CarActivity;->access$2400(Lcom/vlingo/client/car/CarActivity;ZLjava/lang/String;Lcom/vlingo/client/car/PromptContent;)V

    goto :goto_2b
.end method
