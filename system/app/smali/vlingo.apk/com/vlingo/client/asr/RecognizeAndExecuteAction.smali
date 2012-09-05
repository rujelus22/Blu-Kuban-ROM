.class public Lcom/vlingo/client/asr/RecognizeAndExecuteAction;
.super Landroid/app/Activity;
.source "RecognizeAndExecuteAction.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/high16 v5, 0x10a

    const v6, 0x10a0001

    invoke-virtual {p0, v5, v6}, Lcom/vlingo/client/asr/RecognizeAndExecuteAction;->overridePendingTransition(II)V

    .line 26
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 27
    .local v2, recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;
    invoke-virtual {v2}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 28
    invoke-virtual {p0}, Lcom/vlingo/client/asr/RecognizeAndExecuteAction;->finish()V

    .line 53
    :goto_1a
    return-void

    .line 32
    :cond_1b
    invoke-static {}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->isIUXComplete()Z

    move-result v5

    if-nez v5, :cond_34

    .line 33
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/vlingo/client/iux/StartIUXFlowActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v1, i:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v1}, Lcom/vlingo/client/asr/RecognizeAndExecuteAction;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/vlingo/client/asr/RecognizeAndExecuteAction;->finish()V

    goto :goto_1a

    .line 40
    .end local v1           #i:Landroid/content/Intent;
    :cond_34
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/core/asr/RecognitionTarget;

    .line 41
    .local v4, target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    invoke-interface {v4}, Lcom/vlingo/client/core/asr/RecognitionTarget;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v3

    .line 42
    .local v3, srContext:Lcom/vlingo/client/core/recognizer/SRContext;
    const-string v5, "HomeScreen"

    invoke-virtual {v3, v5}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldContext(Ljava/lang/String;)V

    .line 43
    const-string v5, "vp_main"

    invoke-virtual {v3, v5}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldID(Ljava/lang/String;)V

    .line 44
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/vlingo/client/core/recognizer/SRContext;->setCursorPos(I)V

    .line 45
    const-string v5, ""

    invoke-virtual {v3, v5}, Lcom/vlingo/client/core/recognizer/SRContext;->setCurText(Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/vlingo/client/vvs/VVSDispatcher;

    invoke-direct {v0}, Lcom/vlingo/client/vvs/VVSDispatcher;-><init>()V

    .line 47
    .local v0, d:Lcom/vlingo/client/vvs/VVSDispatcher;
    const-string v5, "SearchKey"

    invoke-virtual {v0, v5}, Lcom/vlingo/client/vvs/VVSDispatcher;->setCustom6Context(Ljava/lang/String;)V

    .line 48
    invoke-static {v0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setResultDispatcher(Lcom/vlingo/client/asr/ResultDispatcher;)V

    .line 49
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->resetDialogs()V

    .line 50
    invoke-static {p0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->initiateRecognition(Landroid/content/Context;)Z

    .line 51
    invoke-virtual {p0}, Lcom/vlingo/client/asr/RecognizeAndExecuteAction;->finish()V

    goto :goto_1a
.end method
