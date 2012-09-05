.class public Lcom/vlingo/client/asr/RecognizeActivity;
.super Landroid/app/Activity;
.source "RecognizeActivity.java"


# instance fields
.field m_pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/asr/RecognizeActivity;->m_pendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vlingo/client/asr/RecognizeActivity;->requestWindowFeature(I)Z

    .line 31
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 32
    .local v0, recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;
    invoke-virtual {v0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 33
    invoke-virtual {p0}, Lcom/vlingo/client/asr/RecognizeActivity;->finish()V

    .line 43
    :goto_16
    return-void

    .line 37
    :cond_17
    invoke-static {}, Lcom/vlingo/client/tos/TermsOfServiceManager;->isTOSRequired()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 38
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vlingo/client/asr/RecognizeActivity;->showDialog(I)V

    goto :goto_16

    .line 41
    :cond_22
    invoke-virtual {p0}, Lcom/vlingo/client/asr/RecognizeActivity;->runRecognition()V

    goto :goto_16
.end method

.method runRecognition()V
    .registers 9

    .prologue
    .line 46
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v5

    check-cast v5, Lcom/vlingo/client/core/asr/RecognitionTarget;

    .line 47
    .local v5, target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    invoke-interface {v5}, Lcom/vlingo/client/core/asr/RecognitionTarget;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v4

    .line 49
    .local v4, srContext:Lcom/vlingo/client/core/recognizer/SRContext;
    invoke-virtual {p0}, Lcom/vlingo/client/asr/RecognizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 51
    .local v2, i:Landroid/content/Intent;
    const-string v6, "com.vlingo.client.actions.RECOGNIZE.pending_intent"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    iput-object v6, p0, Lcom/vlingo/client/asr/RecognizeActivity;->m_pendingIntent:Landroid/app/PendingIntent;

    .line 53
    invoke-virtual {p0}, Lcom/vlingo/client/asr/RecognizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v4, v6, p0}, Lcom/vlingo/client/asr/VLRecognizerIntent;->fillSRContextFromIntent(Lcom/vlingo/client/core/recognizer/SRContext;Landroid/content/Intent;Landroid/content/Context;)V

    .line 55
    const-string v6, "com.vlingo.client.actions.RECOGNIZE.app_id"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, appid:Ljava/lang/String;
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_36

    .line 57
    invoke-static {}, Lcom/vlingo/client/asr/VlingoSoftwareMeta;->getInstance()Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    move-result-object v6

    check-cast v6, Lcom/vlingo/client/asr/VlingoSoftwareMeta;

    invoke-virtual {v6, v0}, Lcom/vlingo/client/asr/VlingoSoftwareMeta;->setAppId(Ljava/lang/String;)V

    .line 60
    :cond_36
    const-string v6, "com.vlingo.client.actions.RECOGNIZE.server"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, server:Ljava/lang/String;
    if-eqz v3, :cond_47

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_47

    .line 62
    invoke-static {v3}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->setServerName(Ljava/lang/String;)V

    .line 65
    :cond_47
    const-string v6, "com.vlingo.client.actions.RECOGNIZE.execute_action"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 67
    .local v1, executeAction:Z
    if-eqz v1, :cond_62

    .line 68
    new-instance v6, Lcom/vlingo/client/vvs/VVSDispatcher;

    invoke-direct {v6}, Lcom/vlingo/client/vvs/VVSDispatcher;-><init>()V

    invoke-static {v6}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setResultDispatcher(Lcom/vlingo/client/asr/ResultDispatcher;)V

    .line 69
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->resetDialogs()V

    .line 70
    invoke-static {p0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->initiateRecognition(Landroid/content/Context;)Z

    .line 71
    invoke-virtual {p0}, Lcom/vlingo/client/asr/RecognizeActivity;->finish()V

    .line 108
    :cond_61
    :goto_61
    return-void

    .line 74
    :cond_62
    new-instance v6, Lcom/vlingo/client/asr/RecognizeActivity$1;

    invoke-direct {v6, p0}, Lcom/vlingo/client/asr/RecognizeActivity$1;-><init>(Lcom/vlingo/client/asr/RecognizeActivity;)V

    invoke-static {v6}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setResultDispatcher(Lcom/vlingo/client/asr/ResultDispatcher;)V

    .line 99
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->resetDialogs()V

    .line 100
    invoke-static {p0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->initiateRecognition(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_76

    .line 102
    invoke-virtual {p0}, Lcom/vlingo/client/asr/RecognizeActivity;->finish()V

    .line 104
    :cond_76
    iget-object v6, p0, Lcom/vlingo/client/asr/RecognizeActivity;->m_pendingIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_61

    .line 105
    invoke-virtual {p0}, Lcom/vlingo/client/asr/RecognizeActivity;->finish()V

    goto :goto_61
.end method
