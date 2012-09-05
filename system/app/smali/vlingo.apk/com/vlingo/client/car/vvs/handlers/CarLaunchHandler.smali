.class public Lcom/vlingo/client/car/vvs/handlers/CarLaunchHandler;
.super Lcom/vlingo/client/vvs/handlers/LaunchHandler;
.source "CarLaunchHandler.java"

# interfaces
.implements Lcom/vlingo/client/car/vvs/CarVVSActionHandler;


# instance fields
.field private final delegate:Lcom/vlingo/client/car/CarActivityDelegate;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vlingo/client/vvs/handlers/LaunchHandler;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/vlingo/client/car/vvs/handlers/CarLaunchHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 25
    return-void
.end method


# virtual methods
.method public execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;
    .registers 10
    .parameter "action"
    .parameter "dispatcher"

    .prologue
    .line 36
    const-string v3, "AppName"

    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, name:Ljava/lang/String;
    const-string v3, "TTS"

    invoke-virtual {p1, v3}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, tts:Ljava/lang/String;
    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_22

    .line 39
    iget-object v3, p0, Lcom/vlingo/client/car/vvs/handlers/CarLaunchHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-static {v2}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarBackground(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 45
    :goto_1d
    invoke-super {p0, p1, p2}, Lcom/vlingo/client/vvs/handlers/LaunchHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;Lcom/vlingo/client/vvs/VVSDispatcher;)Landroid/content/Intent;

    move-result-object v3

    return-object v3

    .line 42
    :cond_22
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090243

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, openTTS:Ljava/lang/String;
    iget-object v3, p0, Lcom/vlingo/client/car/vvs/handlers/CarLaunchHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarBackground(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_1d
.end method

.method public handleAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
