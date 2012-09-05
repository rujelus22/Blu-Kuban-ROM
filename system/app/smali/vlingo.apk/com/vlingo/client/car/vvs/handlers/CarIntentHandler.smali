.class public Lcom/vlingo/client/car/vvs/handlers/CarIntentHandler;
.super Lcom/vlingo/client/vvs/handlers/IntentHandler;
.source "CarIntentHandler.java"

# interfaces
.implements Lcom/vlingo/client/car/vvs/CarVVSActionHandler;


# instance fields
.field private final delegate:Lcom/vlingo/client/car/CarActivityDelegate;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 3
    .parameter "delegate"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vlingo/client/vvs/handlers/IntentHandler;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/vlingo/client/car/vvs/handlers/CarIntentHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/vvs/handlers/CarIntentHandler;->ignoreTTS:Z

    .line 34
    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 15
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    const/4 v6, 0x0

    .line 46
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 47
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {p0, p1}, Lcom/vlingo/client/car/vvs/handlers/CarIntentHandler;->getIntentName(Lcom/vlingo/client/core/vlservice/response/Action;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, intentName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/vlingo/client/car/vvs/handlers/CarIntentHandler;->getIntentArgument(Lcom/vlingo/client/core/vlservice/response/Action;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, intentArgument:Ljava/lang/String;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    const-string v7, "google.navigation"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8f

    const/16 v7, 0xf

    invoke-static {v7}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 52
    const-string v7, "Query"

    invoke-virtual {p1, v7}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, query:Ljava/lang/String;
    const v7, 0x7f090242

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, homeSpoken:Ljava/lang/String;
    invoke-static {v3}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 57
    iget-object v7, p0, Lcom/vlingo/client/car/vvs/handlers/CarIntentHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v8, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v9, "vp_car_main_nav"

    invoke-direct {v8, v9}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->NAV_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    sget-object v10, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->NAV_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v10}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/vlingo/client/car/vvs/handlers/CarIntentHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v11}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11}, Lcom/vlingo/client/car/PromptContent;->getNavPrompt(Landroid/content/res/Resources;)Lcom/vlingo/client/car/PromptContent;

    move-result-object v11

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/vlingo/client/car/CarActivityDelegate;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;Lcom/vlingo/client/car/PromptContent;)V

    .line 85
    .end local v0           #homeSpoken:Ljava/lang/String;
    .end local v3           #query:Ljava/lang/String;
    :goto_5e
    return-object v6

    .line 60
    .restart local v0       #homeSpoken:Ljava/lang/String;
    .restart local v3       #query:Ljava/lang/String;
    :cond_5f
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 61
    new-instance v7, Lcom/vlingo/client/car/nav/NavController;

    iget-object v8, p0, Lcom/vlingo/client/car/vvs/handlers/CarIntentHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-direct {v7, v8}, Lcom/vlingo/client/car/nav/NavController;-><init>(Lcom/vlingo/client/car/CarActivityDelegate;)V

    invoke-virtual {v7}, Lcom/vlingo/client/car/nav/NavController;->onGoHome()V

    goto :goto_5e

    .line 65
    :cond_70
    const v6, 0x7f09019c

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, toSpeak:Ljava/lang/String;
    iget-object v6, p0, Lcom/vlingo/client/car/vvs/handlers/CarIntentHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-static {v5}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarBackground(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 68
    invoke-virtual {p2}, Lcom/vlingo/client/vvs/VVSDispatcher;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/vlingo/client/util/GeoUtil;->getNavigateIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_5e

    .line 85
    .end local v0           #homeSpoken:Ljava/lang/String;
    .end local v3           #query:Ljava/lang/String;
    .end local v5           #toSpeak:Ljava/lang/String;
    :cond_8f
    invoke-super {p0, p1, p2}, Lcom/vlingo/client/vvs/handlers/IntentHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v6

    goto :goto_5e
.end method

.method public handleAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method protected isAnswerReadbackEnabled()Z
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method
