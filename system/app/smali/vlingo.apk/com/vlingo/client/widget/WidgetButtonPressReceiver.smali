.class public Lcom/vlingo/client/widget/WidgetButtonPressReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WidgetButtonPressReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 25
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 26
    .local v2, recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;
    invoke-virtual {v2}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->isActive()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 49
    :goto_d
    return-void

    .line 30
    :cond_e
    invoke-static {}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->isIUXComplete()Z

    move-result v5

    if-nez v5, :cond_34

    .line 31
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/vlingo/client/iux/StartIUXFlowActivity;

    invoke-direct {v1, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v1, i:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 33
    sget-object v5, Lcom/vlingo/client/iux/StartIUXFlowActivity;->EXTRA_PENDING_INTENT:Ljava/lang/String;

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v8, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 37
    .end local v1           #i:Landroid/content/Intent;
    :cond_34
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/core/asr/RecognitionTarget;

    .line 38
    .local v4, target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    invoke-interface {v4}, Lcom/vlingo/client/core/asr/RecognitionTarget;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v3

    .line 39
    .local v3, srContext:Lcom/vlingo/client/core/recognizer/SRContext;
    const-string v5, "HomeScreen"

    invoke-virtual {v3, v5}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldContext(Ljava/lang/String;)V

    .line 40
    const-string v5, "vp_main"

    invoke-virtual {v3, v5}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldID(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3, v8}, Lcom/vlingo/client/core/recognizer/SRContext;->setCursorPos(I)V

    .line 42
    const-string v5, ""

    invoke-virtual {v3, v5}, Lcom/vlingo/client/core/recognizer/SRContext;->setCurText(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/vlingo/client/vvs/VVSDispatcher;

    invoke-direct {v0}, Lcom/vlingo/client/vvs/VVSDispatcher;-><init>()V

    .line 44
    .local v0, d:Lcom/vlingo/client/vvs/VVSDispatcher;
    const-string v5, "Widget"

    invoke-virtual {v0, v5}, Lcom/vlingo/client/vvs/VVSDispatcher;->setCustom6Context(Ljava/lang/String;)V

    .line 45
    invoke-static {v0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setResultDispatcher(Lcom/vlingo/client/asr/ResultDispatcher;)V

    .line 46
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->resetDialogs()V

    .line 47
    invoke-static {p1}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->initiateRecognition(Landroid/content/Context;)Z

    goto :goto_d
.end method
