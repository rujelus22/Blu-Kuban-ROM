.class public Lcom/vlingo/client/car/vvs/handlers/CarVoiceDialHandler;
.super Ljava/lang/Object;
.source "CarVoiceDialHandler.java"

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
    iput-object p1, p0, Lcom/vlingo/client/car/vvs/handlers/CarVoiceDialHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 30
    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 4
    .parameter "action"
    .parameter "dispacher"

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 13
    .parameter "action"

    .prologue
    const/4 v10, 0x1

    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, contact:Ljava/lang/String;
    const/4 v3, 0x0

    .line 36
    .local v3, type:Ljava/lang/String;
    const-string v5, "Action"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, actionType:Ljava/lang/String;
    if-eqz v0, :cond_66

    const-string v5, "redial"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 38
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarVoiceDialHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/vlingo/client/vvs/handlers/RedialHandler;->getRedialContactName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 39
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarVoiceDialHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/vlingo/client/vvs/handlers/RedialHandler;->getRedialPhoneType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 49
    :goto_2f
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v5

    const-string v6, "car-reco-voicedial"

    invoke-virtual {v5, v6}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 51
    invoke-static {v1}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 53
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarVoiceDialHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->taskCleanup()V

    .line 54
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarVoiceDialHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v6, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v7, "vp_car_main_dial"

    invoke-direct {v6, v7}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->CALL_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v8, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->CALL_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v8}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vlingo/client/car/vvs/handlers/CarVoiceDialHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v9}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9}, Lcom/vlingo/client/car/PromptContent;->getDialPrompt(Landroid/content/res/Resources;)Lcom/vlingo/client/car/PromptContent;

    move-result-object v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/vlingo/client/car/CarActivityDelegate;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;Lcom/vlingo/client/car/PromptContent;)V

    .line 71
    :goto_65
    return v10

    .line 41
    :cond_66
    const-string v5, "To"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    if-nez v1, :cond_74

    .line 43
    const-string v5, "Query"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    :cond_74
    if-nez v1, :cond_7c

    .line 45
    const-string v5, "Number"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_7c
    const-string v5, "PhoneType"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2f

    .line 59
    :cond_83
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarVoiceDialHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->getCurrentTaskController()Lcom/vlingo/client/car/TaskController;

    move-result-object v2

    .line 60
    .local v2, controller:Lcom/vlingo/client/car/TaskController;
    if-eqz v2, :cond_93

    invoke-interface {v2}, Lcom/vlingo/client/car/TaskController;->getType()Lcom/vlingo/client/car/TaskController$TaskType;

    move-result-object v5

    sget-object v6, Lcom/vlingo/client/car/TaskController$TaskType;->TypeVoiceDial:Lcom/vlingo/client/car/TaskController$TaskType;

    if-eq v5, v6, :cond_a4

    .line 62
    :cond_93
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarVoiceDialHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->taskCleanup()V

    .line 63
    new-instance v4, Lcom/vlingo/client/car/voicedial/VDController;

    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarVoiceDialHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-direct {v4, v5}, Lcom/vlingo/client/car/voicedial/VDController;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 64
    .local v4, vdController:Lcom/vlingo/client/car/voicedial/VDController;
    move-object v2, v4

    .line 69
    :goto_a0
    invoke-virtual {v4, v1, v3}, Lcom/vlingo/client/car/voicedial/VDController;->startVoiceDialFlow(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .end local v4           #vdController:Lcom/vlingo/client/car/voicedial/VDController;
    :cond_a4
    move-object v4, v2

    .line 67
    check-cast v4, Lcom/vlingo/client/car/voicedial/VDController;

    .restart local v4       #vdController:Lcom/vlingo/client/car/voicedial/VDController;
    goto :goto_a0
.end method
