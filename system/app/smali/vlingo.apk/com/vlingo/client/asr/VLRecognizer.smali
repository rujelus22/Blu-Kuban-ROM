.class public Lcom/vlingo/client/asr/VLRecognizer;
.super Ljava/lang/Object;
.source "VLRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/asr/VLRecognizer$1;,
        Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl;,
        Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;,
        Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;,
        Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;
    }
.end annotation


# static fields
.field public static final STATE_GETTING_READY:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_LISTENING:I = 0x2

.field public static final STATE_THINKING:I = 0x3


# instance fields
.field private final flowPolicyFactory:Lcom/vlingo/client/asr/VLRecognizerFlowPolicyFactory;

.field private final handler:Landroid/os/Handler;

.field private mMessageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

.field private mStateListener:Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;

.field private mStatusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

.field private m_listener:Lcom/vlingo/client/asr/VLRecognizerListener;

.field private volatile m_state:I

.field private final recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;

    invoke-direct {v0, p0}, Lcom/vlingo/client/asr/VLRecognizer$NullStatusDialogImpl;-><init>(Lcom/vlingo/client/asr/VLRecognizer;)V

    iput-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->mStatusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    .line 34
    new-instance v0, Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl;

    invoke-direct {v0, p0}, Lcom/vlingo/client/asr/VLRecognizer$NullMessageDialogImpl;-><init>(Lcom/vlingo/client/asr/VLRecognizer;)V

    iput-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->mMessageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    .line 35
    new-instance v0, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;-><init>(Lcom/vlingo/client/asr/VLRecognizer;Lcom/vlingo/client/asr/VLRecognizer$1;)V

    iput-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->mStateListener:Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->m_state:I

    .line 51
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    iput-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->handler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/vlingo/client/asr/VLRecognizerFlowPolicyFactory;

    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/VLRecognizerFlowPolicyFactory;-><init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V

    iput-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->flowPolicyFactory:Lcom/vlingo/client/asr/VLRecognizerFlowPolicyFactory;

    .line 60
    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/asr/VLRecognizer;)Lcom/vlingo/client/asr/VLRecognizerListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->m_listener:Lcom/vlingo/client/asr/VLRecognizerListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/asr/VLRecognizer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vlingo/client/asr/VLRecognizer;->endRecognition()V

    return-void
.end method

.method static synthetic access$400(Lcom/vlingo/client/asr/VLRecognizer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vlingo/client/asr/VLRecognizer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->m_state:I

    return v0
.end method

.method static synthetic access$502(Lcom/vlingo/client/asr/VLRecognizer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/vlingo/client/asr/VLRecognizer;->m_state:I

    return p1
.end method

.method private attachRecoDialogs()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    iget-object v1, p0, Lcom/vlingo/client/asr/VLRecognizer;->mMessageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setMessageDialog(Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;)V

    .line 131
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    iget-object v1, p0, Lcom/vlingo/client/asr/VLRecognizer;->mStatusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setStatusDialog(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V

    .line 132
    return-void
.end method

.method private declared-synchronized endRecognition()V
    .registers 3

    .prologue
    .line 122
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->m_state:I

    if-eqz v0, :cond_11

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->m_state:I

    .line 124
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/asr/VLRecognizer;->mStateListener:Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->removeRecognitionStateListener(Lcom/vlingo/client/core/asr/RecognitionStateListener;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 127
    :cond_11
    monitor-exit p0

    return-void

    .line 122
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->m_state:I

    if-eqz v0, :cond_b

    .line 80
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->cancelRecognition()V

    .line 81
    invoke-direct {p0}, Lcom/vlingo/client/asr/VLRecognizer;->endRecognition()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 83
    :cond_b
    monitor-exit p0

    return-void

    .line 79
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->flowPolicyFactory:Lcom/vlingo/client/asr/VLRecognizerFlowPolicyFactory;

    invoke-virtual {v0}, Lcom/vlingo/client/asr/VLRecognizerFlowPolicyFactory;->close()V

    .line 64
    return-void
.end method

.method public declared-synchronized getState()I
    .registers 2

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->m_state:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->flowPolicyFactory:Lcom/vlingo/client/asr/VLRecognizerFlowPolicyFactory;

    invoke-virtual {v0}, Lcom/vlingo/client/asr/VLRecognizerFlowPolicyFactory;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isRunning()Z
    .registers 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->m_state:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startListening(Lcom/vlingo/client/core/recognizer/SRContext;Landroid/content/Context;Lcom/vlingo/client/asr/VLRecognizerListener;)V
    .registers 8
    .parameter "srContext"
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 90
    monitor-enter p0

    :try_start_1
    iput-object p3, p0, Lcom/vlingo/client/asr/VLRecognizer;->m_listener:Lcom/vlingo/client/asr/VLRecognizerListener;

    .line 92
    iget-object v2, p0, Lcom/vlingo/client/asr/VLRecognizer;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    invoke-virtual {v2}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 93
    const/16 v2, 0x8

    invoke-interface {p3, v2}, Lcom/vlingo/client/asr/VLRecognizerListener;->onError(I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_62

    .line 119
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 97
    :cond_12
    const/4 v2, 0x1

    :try_start_13
    iput v2, p0, Lcom/vlingo/client/asr/VLRecognizer;->m_state:I

    .line 99
    invoke-direct {p0}, Lcom/vlingo/client/asr/VLRecognizer;->attachRecoDialogs()V

    .line 101
    iget-object v1, p0, Lcom/vlingo/client/asr/VLRecognizer;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 102
    .local v1, target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    invoke-interface {v1}, Lcom/vlingo/client/core/asr/RecognitionTarget;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v0

    .line 103
    .local v0, ctx:Lcom/vlingo/client/core/recognizer/SRContext;
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/SRContext;->getFieldID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldID(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/SRContext;->getCursorPositionInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setCursorPos(I)V

    .line 105
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/SRContext;->getFieldContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldContext(Ljava/lang/String;)V

    .line 106
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setCurText(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/SRContext;->getFieldType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldType(Ljava/lang/String;)V

    .line 108
    iget-boolean v2, p1, Lcom/vlingo/client/core/recognizer/SRContext;->customFlag:Z

    iput-boolean v2, v0, Lcom/vlingo/client/core/recognizer/SRContext;->customFlag:Z

    .line 110
    new-instance v2, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vlingo/client/asr/VLRecognizer$ServiceResultsHandler;-><init>(Lcom/vlingo/client/asr/VLRecognizer;Lcom/vlingo/client/asr/VLRecognizer$1;)V

    invoke-static {v2}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setResultDispatcher(Lcom/vlingo/client/asr/ResultDispatcher;)V

    .line 112
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/asr/VLRecognizer;->mStateListener:Lcom/vlingo/client/asr/VLRecognizer$RecognitionStateListenerImpl;

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/asr/RecognitionManager;->addRecognitionStateListener(Lcom/vlingo/client/core/asr/RecognitionStateListener;)V

    .line 115
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vlingo/client/asr/VLRecognizer;->flowPolicyFactory:Lcom/vlingo/client/asr/VLRecognizerFlowPolicyFactory;

    invoke-static {p2, v2, v3}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->initiateRecognition(Landroid/content/Context;ZLcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 116
    invoke-direct {p0}, Lcom/vlingo/client/asr/VLRecognizer;->endRecognition()V
    :try_end_61
    .catchall {:try_start_13 .. :try_end_61} :catchall_62

    goto :goto_10

    .line 90
    .end local v0           #ctx:Lcom/vlingo/client/core/recognizer/SRContext;
    .end local v1           #target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    :catchall_62
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stopListening()V
    .registers 3

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->m_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 136
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->processRecognition()V

    .line 137
    const/4 v0, 0x3

    iput v0, p0, Lcom/vlingo/client/asr/VLRecognizer;->m_state:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 139
    :cond_c
    monitor-exit p0

    return-void

    .line 135
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
