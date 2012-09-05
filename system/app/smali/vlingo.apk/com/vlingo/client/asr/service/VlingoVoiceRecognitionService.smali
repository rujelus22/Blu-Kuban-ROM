.class public Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;
.super Landroid/speech/RecognitionService;
.source "VlingoVoiceRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$1;,
        Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullMessageDialogImpl;,
        Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullStatusDialogImpl;,
        Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;,
        Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$ServiceResultsHandler;
    }
.end annotation


# static fields
.field public static final STATE_GETTING_READY:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_LISTENING:I = 0x3

.field public static final STATE_THINKING:I = 0x4

.field public static final STATE_WAITING_FOR_TOS:I = 0x1


# instance fields
.field private audioFocusManager:Lcom/vlingo/client/core/audio/AudioFocusManager;

.field private listener:Landroid/speech/RecognitionService$Callback;

.field private mMessageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

.field private mStateListener:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;

.field private mStatusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

.field private m_state:I

.field recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/speech/RecognitionService;-><init>()V

    .line 42
    new-instance v0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullStatusDialogImpl;

    invoke-direct {v0, p0}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullStatusDialogImpl;-><init>(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V

    iput-object v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->mStatusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    .line 43
    new-instance v0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullMessageDialogImpl;

    invoke-direct {v0, p0}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullMessageDialogImpl;-><init>(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V

    iput-object v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->mMessageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    .line 44
    new-instance v0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;

    invoke-direct {v0, p0}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;-><init>(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V

    iput-object v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->mStateListener:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I

    .line 58
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    iput-object v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 411
    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I

    return v0
.end method

.method static synthetic access$102(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I

    return p1
.end method

.method static synthetic access$200(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)Landroid/speech/RecognitionService$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->endRecognition()V

    return-void
.end method

.method private declared-synchronized endRecognition()V
    .registers 3

    .prologue
    .line 233
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I

    if-eqz v0, :cond_18

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I

    .line 237
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->mStateListener:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->removeRecognitionStateListener(Lcom/vlingo/client/core/asr/RecognitionStateListener;)V

    .line 238
    invoke-virtual {p0}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->getAudioFocusManager()Lcom/vlingo/client/core/audio/AudioFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->abandonAudioFocus()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 245
    :cond_18
    monitor-exit p0

    return-void

    .line 233
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized getAudioFocusManager()Lcom/vlingo/client/core/audio/AudioFocusManager;
    .registers 2

    .prologue
    .line 61
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->audioFocusManager:Lcom/vlingo/client/core/audio/AudioFocusManager;

    if-nez v0, :cond_b

    .line 62
    invoke-static {p0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->getInstance(Landroid/content/Context;)Lcom/vlingo/client/core/audio/AudioFocusManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->audioFocusManager:Lcom/vlingo/client/core/audio/AudioFocusManager;

    .line 64
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->audioFocusManager:Lcom/vlingo/client/core/audio/AudioFocusManager;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 61
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onCancel(Landroid/speech/RecognitionService$Callback;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 72
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->mStateListener:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->removeRecognitionStateListener(Lcom/vlingo/client/core/asr/RecognitionStateListener;)V

    .line 74
    monitor-enter p0

    .line 75
    :try_start_a
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;

    .line 76
    iget v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I

    if-eqz v0, :cond_16

    .line 80
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->cancelRecognition()V

    .line 81
    invoke-direct {p0}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->endRecognition()V

    .line 86
    :cond_16
    monitor-exit p0

    .line 87
    return-void

    .line 86
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v0
.end method

.method protected declared-synchronized onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
    .registers 15
    .parameter "recognizerIntent"
    .parameter "listener"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    iget v9, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I

    if-nez v9, :cond_d

    iget-object v9, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    invoke-virtual {v9}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->isActive()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1f

    move-result v9

    if-eqz v9, :cond_22

    .line 96
    :cond_d
    const/16 v9, 0x8

    :try_start_f
    invoke-virtual {p2, v9}, Landroid/speech/RecognitionService$Callback;->error(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14

    .line 171
    :goto_12
    monitor-exit p0

    return-void

    .line 96
    :catch_14
    move-exception v2

    .local v2, ex:Landroid/os/RemoteException;
    :try_start_15
    const-string v9, "VLG_EXCEPTION"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1f

    goto :goto_12

    .line 95
    .end local v2           #ex:Landroid/os/RemoteException;
    :catchall_1f
    move-exception v9

    monitor-exit p0

    throw v9

    .line 100
    :cond_22
    :try_start_22
    iput-object p2, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;

    .line 102
    invoke-static {}, Lcom/vlingo/client/tos/TermsOfServiceManager;->isTOSRequired()Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 105
    new-instance v5, Landroid/content/Intent;

    const-class v9, Lcom/vlingo/client/iux/StartIUXFlowActivity;

    invoke-direct {v5, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v5, i:Landroid/content/Intent;
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    sget-object v9, Lcom/vlingo/client/iux/StartIUXFlowActivity;->EXTRA_ONLY_TOS:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v5}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->startActivity(Landroid/content/Intent;)V
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_1f

    .line 109
    const/4 v9, 0x7

    :try_start_40
    invoke-virtual {p2, v9}, Landroid/speech/RecognitionService$Callback;->error(I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_1f
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_12

    :catch_44
    move-exception v2

    .restart local v2       #ex:Landroid/os/RemoteException;
    :try_start_45
    const-string v9, "VLG_EXCEPTION"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 113
    .end local v2           #ex:Landroid/os/RemoteException;
    .end local v5           #i:Landroid/content/Intent;
    :cond_4f
    const/4 v9, 0x1

    iput v9, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I

    .line 115
    iget-object v9, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    iget-object v10, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->mMessageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    invoke-virtual {v9, v10}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setMessageDialog(Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;)V

    .line 116
    iget-object v9, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    iget-object v10, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->mStatusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    invoke-virtual {v9, v10}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setStatusDialog(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V

    .line 118
    iget-object v8, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 119
    .local v8, target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    invoke-interface {v8}, Lcom/vlingo/client/core/asr/RecognitionTarget;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v0

    .line 121
    .local v0, ctx:Lcom/vlingo/client/core/recognizer/SRContext;
    invoke-static {v0, p1, p0}, Lcom/vlingo/client/asr/VLRecognizerIntent;->fillSRContextFromIntent(Lcom/vlingo/client/core/recognizer/SRContext;Landroid/content/Intent;Landroid/content/Context;)V

    .line 126
    new-instance v6, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$ServiceResultsHandler;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v9}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$ServiceResultsHandler;-><init>(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$1;)V

    .line 127
    .local v6, myResultsHandler:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$ServiceResultsHandler;
    invoke-static {v6}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setResultDispatcher(Lcom/vlingo/client/asr/ResultDispatcher;)V

    .line 128
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v9

    iget-object v10, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->mStateListener:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$RecognitionStateListenerImpl;

    invoke-virtual {v9, v10}, Lcom/vlingo/client/core/asr/RecognitionManager;->addRecognitionStateListener(Lcom/vlingo/client/core/asr/RecognitionStateListener;)V

    .line 131
    const/4 v4, 0x0

    .line 132
    .local v4, fileName:Ljava/lang/String;
    const-string v9, "com.vlingo.client.actions.RECOGNIZE.pcm_wavefile"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    const v1, 0xd6d8

    .line 134
    .local v1, duration:I
    if-eqz v4, :cond_a4

    .line 139
    invoke-static {v4}, Ljavax/microedition/media/control/RecordControl;->setFakeUtterance(Ljava/lang/String;)V

    .line 151
    :cond_8a
    :goto_8a
    const-string v9, "com.vlingo.client.actions.RECOGNIZE.field_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, fieldId:Ljava/lang/String;
    if-nez v3, :cond_94

    const-string v3, "vp_main"

    .line 156
    :cond_94
    if-eqz v4, :cond_b9

    .line 157
    iget-object v9, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    invoke-virtual {v9, v4, v3, v1}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->doCannedAMRRecognition(Ljava/lang/String;Ljava/lang/String;I)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    move-result-object v7

    .line 160
    .local v7, srResponse:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    const/4 v9, 0x4

    iput v9, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I

    .line 161
    invoke-virtual {v6, v7}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$ServiceResultsHandler;->resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z

    goto/16 :goto_12

    .line 141
    .end local v3           #fieldId:Ljava/lang/String;
    .end local v7           #srResponse:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    :cond_a4
    const-string v9, "com.vlingo.client.actions.RECOGNIZE.amr_wavefile"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    if-eqz v4, :cond_8a

    .line 145
    const-string v9, "com.vlingo.client.actions.RECOGNIZE.duration_ms"

    const v10, 0xd6d8

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 146
    invoke-static {v4, v1}, Ljavax/microedition/media/control/RecordControl;->setFakeAMRFile(Ljava/lang/String;I)V

    goto :goto_8a

    .line 163
    .restart local v3       #fieldId:Ljava/lang/String;
    :cond_b9
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->initiateRecognition(Landroid/content/Context;Z)Z

    move-result v9

    if-nez v9, :cond_d5

    .line 164
    invoke-direct {p0}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->endRecognition()V
    :try_end_c3
    .catchall {:try_start_45 .. :try_end_c3} :catchall_1f

    .line 165
    const/4 v9, 0x2

    :try_start_c4
    invoke-virtual {p2, v9}, Landroid/speech/RecognitionService$Callback;->error(I)V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_1f
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_c7} :catch_c9

    goto/16 :goto_12

    :catch_c9
    move-exception v2

    .restart local v2       #ex:Landroid/os/RemoteException;
    :try_start_ca
    const-string v9, "VLG_EXCEPTION"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 168
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_d5
    invoke-virtual {p0}, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->getAudioFocusManager()Lcom/vlingo/client/core/audio/AudioFocusManager;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Lcom/vlingo/client/core/audio/AudioFocusManager;->requestAudioFocus(II)V
    :try_end_de
    .catchall {:try_start_ca .. :try_end_de} :catchall_1f

    goto/16 :goto_12
.end method

.method protected declared-synchronized onStopListening(Landroid/speech/RecognitionService$Callback;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 223
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->listener:Landroid/speech/RecognitionService$Callback;

    .line 224
    iget v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 225
    const/4 v0, 0x4

    iput v0, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;->m_state:I

    .line 226
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->processRecognition()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 228
    :cond_e
    monitor-exit p0

    return-void

    .line 223
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
