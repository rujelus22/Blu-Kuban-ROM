.class public Lcom/vlingo/client/car/vvs/handlers/CarSMSHandler;
.super Ljava/lang/Object;
.source "CarSMSHandler.java"

# interfaces
.implements Lcom/vlingo/client/car/vvs/CarVVSActionHandler;


# instance fields
.field public final delegate:Lcom/vlingo/client/car/CarActivityDelegate;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/vlingo/client/car/vvs/handlers/CarSMSHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 29
    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 4
    .parameter "action"
    .parameter "dispacher"

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 13
    .parameter "action"

    .prologue
    const/4 v10, 0x1

    .line 32
    const-string v5, "PhoneType"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, type:Ljava/lang/String;
    const-string v5, "To"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, contact:Ljava/lang/String;
    const-string v5, "Message"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, message:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v5

    const-string v6, "car-reco-sms"

    invoke-virtual {v5, v6}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 38
    invoke-static {v0}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-static {v2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 39
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarSMSHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->taskCleanup()V

    .line 40
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarSMSHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v6, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v7, "vp_car_main_sms"

    invoke-direct {v6, v7}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v8, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v8}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vlingo/client/car/vvs/handlers/CarSMSHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v9}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9}, Lcom/vlingo/client/car/PromptContent;->getTextPrompt(Landroid/content/res/Resources;)Lcom/vlingo/client/car/PromptContent;

    move-result-object v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/vlingo/client/car/CarActivityDelegate;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;Lcom/vlingo/client/car/PromptContent;)V

    .line 57
    :goto_4f
    return v10

    .line 45
    :cond_50
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarSMSHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->getCurrentTaskController()Lcom/vlingo/client/car/TaskController;

    move-result-object v1

    .line 46
    .local v1, controller:Lcom/vlingo/client/car/TaskController;
    if-eqz v1, :cond_60

    invoke-interface {v1}, Lcom/vlingo/client/car/TaskController;->getType()Lcom/vlingo/client/car/TaskController$TaskType;

    move-result-object v5

    sget-object v6, Lcom/vlingo/client/car/TaskController$TaskType;->TypeSMS:Lcom/vlingo/client/car/TaskController$TaskType;

    if-eq v5, v6, :cond_71

    .line 48
    :cond_60
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarSMSHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->taskCleanup()V

    .line 49
    new-instance v3, Lcom/vlingo/client/car/sms/SMSController;

    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarSMSHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-direct {v3, v5}, Lcom/vlingo/client/car/sms/SMSController;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 50
    .local v3, smsController:Lcom/vlingo/client/car/sms/SMSController;
    move-object v1, v3

    .line 55
    :goto_6d
    invoke-virtual {v3, v0, v4, v2}, Lcom/vlingo/client/car/sms/SMSController;->startSMSFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .end local v3           #smsController:Lcom/vlingo/client/car/sms/SMSController;
    :cond_71
    move-object v3, v1

    .line 53
    check-cast v3, Lcom/vlingo/client/car/sms/SMSController;

    .restart local v3       #smsController:Lcom/vlingo/client/car/sms/SMSController;
    goto :goto_6d
.end method
