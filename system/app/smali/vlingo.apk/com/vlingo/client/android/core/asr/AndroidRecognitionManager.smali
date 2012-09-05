.class public Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;
.super Lcom/vlingo/client/core/asr/RecognitionManager;
.source "AndroidRecognitionManager.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/RecognitionServerResponseTarget;


# instance fields
.field private currentPolicyFactory:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;

.field private final defaultPolicyFactory:Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;

.field private m_RecognitionContext:Lcom/vlingo/client/asr/AndroidSRContext;

.field private m_ResultDispatcher:Lcom/vlingo/client/asr/ResultDispatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/vlingo/client/core/asr/RecognitionManager;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->m_RecognitionContext:Lcom/vlingo/client/asr/AndroidSRContext;

    .line 41
    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->m_ResultDispatcher:Lcom/vlingo/client/asr/ResultDispatcher;

    .line 47
    invoke-static {}, Lcom/vlingo/client/core/recognizer/SRContext;->newInstance()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/asr/AndroidSRContext;

    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->m_RecognitionContext:Lcom/vlingo/client/asr/AndroidSRContext;

    .line 48
    new-instance v0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;

    invoke-direct {v0, p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;-><init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V

    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->defaultPolicyFactory:Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;

    .line 49
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->defaultPolicyFactory:Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;

    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->currentPolicyFactory:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->resetFlowPolicyIfRequired(Z)V

    .line 51
    invoke-virtual {p0, p0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setRecognitionTarget(Lcom/vlingo/client/core/asr/RecognitionTarget;)V

    .line 52
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setMessageDialog(Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;)V

    .line 53
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setStatusDialog(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V

    .line 54
    return-void
.end method

.method public static cancelRecognition()V
    .registers 1

    .prologue
    .line 132
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 133
    .local v0, me:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;
    invoke-virtual {v0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->abortRecognition()V

    .line 134
    return-void
.end method

.method public static initiateRecognition(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->initiateRecognition(Landroid/content/Context;ZLcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;)Z

    move-result v0

    return v0
.end method

.method public static initiateRecognition(Landroid/content/Context;Z)Z
    .registers 3
    .parameter "context"
    .parameter "resetMessageDialogs"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->initiateRecognition(Landroid/content/Context;ZLcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;)Z

    move-result v0

    return v0
.end method

.method public static initiateRecognition(Landroid/content/Context;ZLcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;)Z
    .registers 12
    .parameter "context"
    .parameter "resetMessageDialogs"
    .parameter "flowPolicyFactory"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v4, 0x0

    .line 89
    if-eqz p1, :cond_8

    .line 90
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->resetDialogs()V

    .line 93
    :cond_8
    invoke-static {v4}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->setIgnored(Z)V

    .line 95
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 96
    const v5, 0x7f090443

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 123
    :goto_1b
    return v4

    .line 101
    :cond_1c
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 102
    .local v2, mgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eqz v5, :cond_38

    .line 103
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vlingo/client/core/asr/RecognitionManager;->getMessageDialog()Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    move-result-object v5

    const-string v6, "/res/text/phoneInUse.xml"

    invoke-interface {v5, v6, v8, v7}, Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;->displayMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1b

    .line 107
    :cond_38
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 108
    .local v0, conMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 109
    .local v3, netInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_4e

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_5c

    .line 110
    :cond_4e
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vlingo/client/core/asr/RecognitionManager;->getMessageDialog()Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    move-result-object v5

    const-string v6, "/res/text/cantConnect.xml"

    invoke-interface {v5, v6, v8, v7}, Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;->displayMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1b

    .line 114
    :cond_5c
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 116
    .local v1, me:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;
    if-nez p2, :cond_6c

    .line 117
    invoke-virtual {v1}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setDefaultFlowPolicyFactory()V

    .line 123
    :goto_67
    invoke-virtual {v1}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->startRecognition()Z

    move-result v4

    goto :goto_1b

    .line 120
    :cond_6c
    invoke-virtual {v1, p2}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setFlowPolicyFactory(Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;)V

    goto :goto_67
.end method

.method public static processRecognition()V
    .registers 1

    .prologue
    .line 127
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 128
    .local v0, me:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;
    invoke-virtual {v0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->stopRecognition()V

    .line 129
    return-void
.end method

.method public static resetDialogs()V
    .registers 2

    .prologue
    .line 57
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->setMessageDialog(Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;)V

    .line 58
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidRecoDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->setStatusDialog(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V

    .line 59
    return-void
.end method

.method public static setResultDispatcher(Lcom/vlingo/client/asr/ResultDispatcher;)V
    .registers 5
    .parameter "dispatcher"

    .prologue
    .line 137
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 138
    .local v2, me:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;
    iput-object p0, v2, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->m_ResultDispatcher:Lcom/vlingo/client/asr/ResultDispatcher;

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, custom6Context:Ljava/lang/String;
    instance-of v3, p0, Lcom/vlingo/client/vvs/VVSDispatcher;

    if-eqz v3, :cond_14

    move-object v1, p0

    .line 141
    check-cast v1, Lcom/vlingo/client/vvs/VVSDispatcher;

    .line 142
    .local v1, d:Lcom/vlingo/client/vvs/VVSDispatcher;
    invoke-virtual {v1}, Lcom/vlingo/client/vvs/VVSDispatcher;->custom6Context()Ljava/lang/String;

    move-result-object v0

    .line 144
    .end local v1           #d:Lcom/vlingo/client/vvs/VVSDispatcher;
    :cond_14
    iget-object v3, v2, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->m_RecognitionContext:Lcom/vlingo/client/asr/AndroidSRContext;

    invoke-virtual {v3, v0}, Lcom/vlingo/client/asr/AndroidSRContext;->setCustom6Context(Ljava/lang/String;)V

    .line 145
    return-void
.end method


# virtual methods
.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->m_RecognitionContext:Lcom/vlingo/client/asr/AndroidSRContext;

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    invoke-virtual {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->isIdle()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onRecognitionEvent(Lcom/vlingo/client/core/asr/RecognitionManager;IILjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 10
    .parameter "manager"
    .parameter "state"
    .parameter "type"
    .parameter "message"
    .parameter "note"
    .parameter "recognizing"
    .parameter "recording"

    .prologue
    const/16 v1, 0x68

    .line 179
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getStatusDialog()Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    move-result-object v0

    invoke-interface {v0, p7}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;->setRecording(Z)V

    .line 180
    if-ne p2, v1, :cond_1c

    .line 181
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getStatusDialog()Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;->setProcessing()V

    .line 182
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->m_ResultDispatcher:Lcom/vlingo/client/asr/ResultDispatcher;

    if-eqz v0, :cond_1b

    .line 183
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->m_ResultDispatcher:Lcom/vlingo/client/asr/ResultDispatcher;

    invoke-virtual {v0}, Lcom/vlingo/client/asr/ResultDispatcher;->notifyWorking()V

    .line 189
    :cond_1b
    :goto_1b
    return-void

    .line 184
    :cond_1c
    if-le p2, v1, :cond_1b

    const/16 v0, 0x70

    if-eq p2, v0, :cond_1b

    .line 186
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->m_ResultDispatcher:Lcom/vlingo/client/asr/ResultDispatcher;

    if-eqz v0, :cond_1b

    .line 187
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->m_ResultDispatcher:Lcom/vlingo/client/asr/ResultDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/asr/ResultDispatcher;->resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z

    goto :goto_1b
.end method

.method public onRecognitionResponse(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V
    .registers 11
    .parameter "manager"
    .parameter "results"

    .prologue
    .line 149
    const-string v3, ""

    .line 150
    .local v3, resStr:Ljava/lang/String;
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v4

    .local v4, tagged:Lcom/vlingo/client/core/recognizer/results/TaggedResults;
    if-eqz v4, :cond_30

    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_30

    .line 151
    invoke-virtual {p2}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getGUttId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/microedition/media/control/RecordControl;->OnFinishedRecognition(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vlingo/client/VlingoApplication;->getNBestManager()Lcom/vlingo/client/NBestManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/vlingo/client/NBestManager;->registerResults(Lcom/vlingo/client/core/recognizer/results/TaggedResults;)V

    .line 153
    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getUttResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v5

    if-eqz v5, :cond_30

    .line 154
    invoke-virtual {v4}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getUttResults()Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getString()Ljava/lang/String;

    move-result-object v3

    .line 156
    .end local v4           #tagged:Lcom/vlingo/client/core/recognizer/results/TaggedResults;
    :cond_30
    const-string v5, "Vlingo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_PLATFORM: RESULTS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v5, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->m_ResultDispatcher:Lcom/vlingo/client/asr/ResultDispatcher;

    if-eqz v5, :cond_6a

    iget-object v5, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->m_ResultDispatcher:Lcom/vlingo/client/asr/ResultDispatcher;

    invoke-virtual {v5, p2}, Lcom/vlingo/client/asr/ResultDispatcher;->resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 158
    invoke-virtual {p2}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getActionList()Lcom/vlingo/client/core/vlservice/response/ActionList;

    move-result-object v1

    .line 159
    .local v1, actions:Lcom/vlingo/client/core/vlservice/response/ActionList;
    if-eqz v1, :cond_6a

    .line 160
    const-string v5, "ShowMessage"

    invoke-virtual {v1, v5}, Lcom/vlingo/client/core/vlservice/response/ActionList;->getActionByName(Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/response/Action;

    move-result-object v0

    .line 161
    .local v0, a:Lcom/vlingo/client/core/vlservice/response/Action;
    if-eqz v0, :cond_6a

    .line 162
    new-instance v2, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;

    invoke-direct {v2}, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;-><init>()V

    .line 163
    .local v2, handler:Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;
    invoke-virtual {v2, v0}, Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;->execute(Lcom/vlingo/client/core/vlservice/response/Action;)Landroid/content/Intent;

    .line 167
    .end local v0           #a:Lcom/vlingo/client/core/vlservice/response/Action;
    .end local v1           #actions:Lcom/vlingo/client/core/vlservice/response/ActionList;
    .end local v2           #handler:Lcom/vlingo/client/vvs/handlers/ShowMessageHandler;
    :cond_6a
    return-void
.end method

.method public onRecognitionResults(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)Z
    .registers 4
    .parameter "manager"
    .parameter "results"

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public onRecognitionWillBegin(Lcom/vlingo/client/core/asr/RecognitionManager;)Z
    .registers 3
    .parameter "manager"

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method protected resetFlowPolicyIfRequired(Z)V
    .registers 3
    .parameter "useBluetooth"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->currentPolicyFactory:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;

    invoke-interface {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;->getFlowPolicy()Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setRecognitionFlowPolicy(Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;)V

    .line 64
    return-void
.end method

.method protected setDefaultFlowPolicyFactory()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->defaultPolicyFactory:Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;

    invoke-virtual {p0, v0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setFlowPolicyFactory(Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;)V

    .line 68
    return-void
.end method

.method protected setFlowPolicyFactory(Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;)V
    .registers 3
    .parameter "factory"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->currentPolicyFactory:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;

    if-eq v0, p1, :cond_f

    .line 72
    iput-object p1, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->currentPolicyFactory:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;

    .line 73
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->currentPolicyFactory:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;

    invoke-interface {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;->getFlowPolicy()Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setRecognitionFlowPolicy(Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;)V

    .line 75
    :cond_f
    return-void
.end method
