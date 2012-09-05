.class Lcom/vlingo/client/car/CarActivity$9;
.super Landroid/os/Handler;
.source "CarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/CarActivity;->createMessageHandler()V
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
    .line 1932
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity$9;->this$0:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1935
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_d4

    .line 1969
    :goto_7
    return-void

    .line 1937
    :pswitch_8
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity$9;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v3}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v3

    iget-object v3, v3, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v3}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpotting()V

    goto :goto_7

    .line 1940
    :pswitch_14
    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->isReadyToConnect(Z)Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    move-result-object v3

    sget-object v4, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->SUCCESS:Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    if-ne v3, v4, :cond_86

    .line 1941
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity$9;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v3}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v3

    iget-object v3, v3, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    invoke-virtual {v3}, Lcom/vlingo/client/car/asr/RecoResponderChain;->getTopResponder()Lcom/vlingo/client/car/asr/RecoResponder;

    move-result-object v3

    invoke-interface {v3}, Lcom/vlingo/client/car/asr/RecoResponder;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/asr/AndroidSRContext;

    .line 1942
    .local v0, context:Lcom/vlingo/client/asr/AndroidSRContext;
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity$9;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v3}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v3

    iget-object v3, v3, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    invoke-virtual {v3}, Lcom/vlingo/client/car/asr/RecoResponderChain;->getTopResponder()Lcom/vlingo/client/car/asr/RecoResponder;

    move-result-object v3

    invoke-interface {v3}, Lcom/vlingo/client/car/asr/RecoResponder;->getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v2

    .line 1943
    .local v2, spokenPrompt:Lcom/vlingo/client/core/tts/TTSDemand;
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity$9;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v3}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v3

    iget-object v3, v3, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    invoke-virtual {v3}, Lcom/vlingo/client/car/asr/RecoResponderChain;->getTopResponder()Lcom/vlingo/client/car/asr/RecoResponder;

    move-result-object v3

    invoke-interface {v3}, Lcom/vlingo/client/car/asr/RecoResponder;->getShownPrompt()Ljava/lang/String;

    move-result-object v1

    .line 1944
    .local v1, shownPrompt:Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/vlingo/client/asr/AndroidSRContext;->setRecoStartedByPhraseSpotter(Z)V

    .line 1945
    invoke-virtual {v0}, Lcom/vlingo/client/asr/AndroidSRContext;->getFieldID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vp_car_main_generic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1946
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale()V

    .line 1947
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity$9;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v3}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v3

    iget-object v3, v3, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    iget-object v4, p0, Lcom/vlingo/client/car/CarActivity$9;->this$0:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v4}, Lcom/vlingo/client/car/CarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/vlingo/client/car/PromptContent;->getGenericPrompt(Landroid/content/res/Resources;)Lcom/vlingo/client/car/PromptContent;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/vlingo/client/car/CarActivity;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;Lcom/vlingo/client/car/PromptContent;)V

    goto :goto_7

    .line 1950
    :cond_7a
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity$9;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v3}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v3

    iget-object v3, v3, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v3, v0, v2, v1}, Lcom/vlingo/client/car/CarActivity;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;)V

    goto :goto_7

    .line 1953
    .end local v0           #context:Lcom/vlingo/client/asr/AndroidSRContext;
    .end local v1           #shownPrompt:Ljava/lang/String;
    .end local v2           #spokenPrompt:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_86
    sget-object v3, Lcom/vlingo/client/car/CarActivity$10;->$SwitchMap$com$vlingo$client$core$deviceinfo$PhoneInfo$ConnectState:[I

    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->isReadyToConnect(Z)Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_de

    .line 1960
    :goto_99
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity$9;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v3}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v3

    iget-object v3, v3, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v3}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    goto/16 :goto_7

    .line 1955
    :pswitch_a6
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity$9;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v3}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v3

    iget-object v3, v3, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    const v4, 0x7f09033e

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_99

    .line 1958
    :pswitch_b9
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity$9;->this$0:Lcom/vlingo/client/car/CarActivity;

    #getter for: Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    invoke-static {v3}, Lcom/vlingo/client/car/CarActivity;->access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    move-result-object v3

    iget-object v3, v3, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    const v4, 0x7f09031f

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_99

    .line 1966
    :pswitch_cc
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity$9;->this$0:Lcom/vlingo/client/car/CarActivity;

    #calls: Lcom/vlingo/client/car/CarActivity;->enableOrientationChange()V
    invoke-static {v3}, Lcom/vlingo/client/car/CarActivity;->access$2700(Lcom/vlingo/client/car/CarActivity;)V

    goto/16 :goto_7

    .line 1935
    nop

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_8
        :pswitch_14
        :pswitch_cc
    .end packed-switch

    .line 1953
    :pswitch_data_de
    .packed-switch 0x2
        :pswitch_a6
        :pswitch_b9
    .end packed-switch
.end method
