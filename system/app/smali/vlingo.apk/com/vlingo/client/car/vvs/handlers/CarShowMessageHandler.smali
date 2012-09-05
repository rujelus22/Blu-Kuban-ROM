.class public Lcom/vlingo/client/car/vvs/handlers/CarShowMessageHandler;
.super Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;
.source "CarShowMessageHandler.java"

# interfaces
.implements Lcom/vlingo/client/car/vvs/CarVVSActionHandler;


# instance fields
.field private final delegate:Lcom/vlingo/client/car/CarActivityDelegate;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivityDelegate;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/vlingo/client/car/vvs/handlers/CarShowMessageHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    .line 28
    return-void
.end method


# virtual methods
.method public handleAction(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 10
    .parameter "action"

    .prologue
    const/4 v7, 0x0

    .line 31
    const-string v5, "Message"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, message:Ljava/lang/String;
    const-string v5, "Type"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, type:Ljava/lang/String;
    const-string v5, "Code"

    invoke-virtual {p1, v5}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, codeStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarShowMessageHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->getLastResults()Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    move-result-object v3

    .line 36
    .local v3, results:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    const/4 v1, 0x0

    .line 37
    .local v1, hasResults:Z
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasNonMessageActions()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 38
    const/4 v1, 0x1

    .line 41
    :cond_23
    const-string v5, "yesnodialog"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3c

    .line 42
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarShowMessageHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-static {v2}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 45
    :cond_3c
    const-string v5, "error"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 46
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarShowMessageHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->playErrorTone()V

    .line 47
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarShowMessageHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    sget-object v6, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->ERROR_OCCURRED:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v5, v6}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 62
    :cond_50
    :goto_50
    invoke-virtual {p0, v2, v4, v0}, Lcom/vlingo/client/car/vvs/handlers/CarShowMessageHandler;->localizeMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    const-string v5, "error"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_64

    const-string v5, "warning"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 66
    :cond_64
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_7c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 68
    :cond_7c
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarShowMessageHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v5}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 77
    :cond_89
    const/4 v5, 0x1

    return v5

    .line 49
    :cond_8b
    const-string v5, "warning"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 50
    if-nez v1, :cond_50

    .line 55
    iget-object v5, p0, Lcom/vlingo/client/car/vvs/handlers/CarShowMessageHandler;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-static {v2}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarError(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_50
.end method
