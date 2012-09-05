.class public Lcom/vlingo/client/car/vvs/handlers/CarMemoHandler;
.super Ljava/lang/Object;
.source "CarMemoHandler.java"

# interfaces
.implements Lcom/vlingo/client/car/vvs/CarVVSActionHandler;


# instance fields
.field public final delegate:Lcom/vlingo/client/car/CarActivityDelegate;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/vlingo/client/car/vvs/handlers/CarMemoHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 30
    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 4
    .parameter "action"
    .parameter "dispacher"

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 12
    .parameter "action"

    .prologue
    const/4 v9, 0x1

    .line 33
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v4

    const-string v5, "car-reco-memo"

    invoke-virtual {v4, v5}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 35
    const-string v4, "Message"

    invoke-virtual {p1, v4}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, memo:Ljava/lang/String;
    const-string v4, "Type"

    invoke-virtual {p1, v4}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, memoType:Ljava/lang/String;
    const-string v4, "memo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isGaudiPhone()Z

    move-result v4

    if-nez v4, :cond_63

    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isEpic2Phone()Z

    move-result v4

    if-nez v4, :cond_63

    .line 39
    invoke-static {v2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 40
    iget-object v4, p0, Lcom/vlingo/client/car/vvs/handlers/CarMemoHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v4}, Lcom/vlingo/client/car/CarActivityDelegate;->taskCleanup()V

    .line 41
    iget-object v4, p0, Lcom/vlingo/client/car/vvs/handlers/CarMemoHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v5, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v6, "vp_car_main_memo"

    invoke-direct {v5, v6}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MEMO_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v7, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MEMO_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v7}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/vlingo/client/car/vvs/handlers/CarMemoHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v8}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/vlingo/client/car/PromptContent;->getMemoPrompt(Landroid/content/res/Resources;)Lcom/vlingo/client/car/PromptContent;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/vlingo/client/car/CarActivityDelegate;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;Lcom/vlingo/client/car/PromptContent;)V

    .line 51
    :goto_57
    return v9

    .line 45
    :cond_58
    new-instance v0, Lcom/vlingo/client/car/memo/MemoController;

    iget-object v4, p0, Lcom/vlingo/client/car/vvs/handlers/CarMemoHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-direct {v0, v4}, Lcom/vlingo/client/car/memo/MemoController;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 46
    .local v0, controller:Lcom/vlingo/client/car/memo/MemoController;
    invoke-virtual {v0, v2}, Lcom/vlingo/client/car/memo/MemoController;->startMemoFlow(Ljava/lang/String;)V

    goto :goto_57

    .line 49
    .end local v0           #controller:Lcom/vlingo/client/car/memo/MemoController;
    :cond_63
    iget-object v4, p0, Lcom/vlingo/client/car/vvs/handlers/CarMemoHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v4}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09023b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/car/vvs/handlers/CarMemoHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-static {v1, v4}, Lcom/vlingo/client/car/util/CarActivityUtil;->showToastAndTTS(Ljava/lang/String;Lcom/vlingo/client/car/CarActivityDelegate;)V

    goto :goto_57
.end method
