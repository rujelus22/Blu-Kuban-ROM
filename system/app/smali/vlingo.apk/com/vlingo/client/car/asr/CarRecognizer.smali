.class public Lcom/vlingo/client/car/asr/CarRecognizer;
.super Ljava/lang/Object;
.source "CarRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/asr/CarRecognizer$1;,
        Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl;,
        Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;,
        Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;,
        Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;
    }
.end annotation


# static fields
.field public static final STATE_GETTING_READY:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_LISTENING:I = 0x2

.field public static final STATE_THINKING:I = 0x3


# instance fields
.field private final flowPolicyFactory:Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;

.field private final handler:Landroid/os/Handler;

.field private mMessageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

.field private mStateListener:Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;

.field private mStatusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

.field private m_listener:Lcom/vlingo/client/car/asr/CarRecognizerListener;

.field private volatile m_state:I

.field private final recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/asr/CarRecognizer$NullStatusDialogImpl;-><init>(Lcom/vlingo/client/car/asr/CarRecognizer;)V

    iput-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->mStatusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    .line 37
    new-instance v0, Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/asr/CarRecognizer$NullMessageDialogImpl;-><init>(Lcom/vlingo/client/car/asr/CarRecognizer;)V

    iput-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->mMessageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    .line 38
    new-instance v0, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;-><init>(Lcom/vlingo/client/car/asr/CarRecognizer;Lcom/vlingo/client/car/asr/CarRecognizer$1;)V

    iput-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->mStateListener:Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->m_state:I

    .line 51
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    iput-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->handler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;

    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;-><init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V

    iput-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->flowPolicyFactory:Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;

    .line 61
    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/asr/CarRecognizer;)Lcom/vlingo/client/car/asr/CarRecognizerListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->m_listener:Lcom/vlingo/client/car/asr/CarRecognizerListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/car/asr/CarRecognizer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vlingo/client/car/asr/CarRecognizer;->endRecognition()V

    return-void
.end method

.method static synthetic access$400(Lcom/vlingo/client/car/asr/CarRecognizer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vlingo/client/car/asr/CarRecognizer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->m_state:I

    return v0
.end method

.method static synthetic access$502(Lcom/vlingo/client/car/asr/CarRecognizer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->m_state:I

    return p1
.end method

.method private attachRecoDialogs()V
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    iget-object v1, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->mMessageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setMessageDialog(Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;)V

    .line 147
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    iget-object v1, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->mStatusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setStatusDialog(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V

    .line 148
    return-void
.end method

.method private declared-synchronized endRecognition()V
    .registers 3

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->m_state:I

    if-eqz v0, :cond_11

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->m_state:I

    .line 141
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->mStateListener:Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->removeRecognitionStateListener(Lcom/vlingo/client/core/asr/RecognitionStateListener;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 143
    :cond_11
    monitor-exit p0

    return-void

    .line 139
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->m_state:I

    if-eqz v0, :cond_b

    .line 81
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->cancelRecognition()V

    .line 82
    invoke-direct {p0}, Lcom/vlingo/client/car/asr/CarRecognizer;->endRecognition()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 84
    :cond_b
    monitor-exit p0

    return-void

    .line 80
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->flowPolicyFactory:Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;

    invoke-virtual {v0}, Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;->close()V

    .line 65
    return-void
.end method

.method public declared-synchronized getState()I
    .registers 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->m_state:I
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
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->flowPolicyFactory:Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;

    invoke-virtual {v0}, Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isRunning()Z
    .registers 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->m_state:I
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

.method public declared-synchronized startListening(Lcom/vlingo/client/core/recognizer/SRContext;Landroid/content/Context;Lcom/vlingo/client/car/asr/CarRecognizerListener;)V
    .registers 14
    .parameter "srContext"
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iput-object p3, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->m_listener:Lcom/vlingo/client/car/asr/CarRecognizerListener;

    .line 94
    iget-object v7, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    invoke-virtual {v7}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->isActive()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 95
    const/16 v7, 0x8

    invoke-interface {p3, v7}, Lcom/vlingo/client/car/asr/CarRecognizerListener;->onError(I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_69
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_28

    .line 136
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 98
    :cond_12
    :try_start_12
    const-string v7, "phone"

    invoke-virtual {p2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 99
    .local v2, mgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    if-eqz v7, :cond_6c

    .line 100
    iget-object v7, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->m_listener:Lcom/vlingo/client/car/asr/CarRecognizerListener;

    const/16 v8, 0xc

    invoke-interface {v7, v8}, Lcom/vlingo/client/car/asr/CarRecognizerListener;->onError(I)V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_69
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_27} :catch_28

    goto :goto_10

    .line 123
    .end local v2           #mgr:Landroid/telephony/TelephonyManager;
    :catch_28
    move-exception v1

    .line 125
    .local v1, e:Ljava/lang/Exception;
    :try_start_29
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, msg:Ljava/lang/String;
    if-eqz v3, :cond_37

    .line 128
    const-string v7, "VLG_CarRecognizer"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_37
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 131
    .local v5, sw:Ljava/io/StringWriter;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 132
    .local v4, pw:Ljava/io/PrintWriter;
    invoke-virtual {v1, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 133
    const-string v7, "VLG_CarRecognizer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\r"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_29 .. :try_end_68} :catchall_69

    goto :goto_10

    .line 92
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #msg:Ljava/lang/String;
    .end local v4           #pw:Ljava/io/PrintWriter;
    .end local v5           #sw:Ljava/io/StringWriter;
    :catchall_69
    move-exception v7

    monitor-exit p0

    throw v7

    .line 104
    .restart local v2       #mgr:Landroid/telephony/TelephonyManager;
    :cond_6c
    const/4 v7, 0x1

    :try_start_6d
    iput v7, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->m_state:I

    .line 106
    invoke-direct {p0}, Lcom/vlingo/client/car/asr/CarRecognizer;->attachRecoDialogs()V

    .line 108
    iget-object v6, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 109
    .local v6, target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    invoke-interface {v6}, Lcom/vlingo/client/core/asr/RecognitionTarget;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v0

    .line 110
    .local v0, ctx:Lcom/vlingo/client/core/recognizer/SRContext;
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/SRContext;->getFieldID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldID(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/SRContext;->getCursorPositionInt()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/vlingo/client/core/recognizer/SRContext;->setCursorPos(I)V

    .line 112
    const-string v7, "VlingoCar"

    invoke-virtual {v0, v7}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldContext(Ljava/lang/String;)V

    .line 113
    const-string v7, ""

    invoke-virtual {v0, v7}, Lcom/vlingo/client/core/recognizer/SRContext;->setCurText(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/SRContext;->getFieldType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldType(Ljava/lang/String;)V

    .line 115
    iget-boolean v7, p1, Lcom/vlingo/client/core/recognizer/SRContext;->customFlag:Z

    iput-boolean v7, v0, Lcom/vlingo/client/core/recognizer/SRContext;->customFlag:Z

    .line 117
    new-instance v7, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/vlingo/client/car/asr/CarRecognizer$ServiceResultsHandler;-><init>(Lcom/vlingo/client/car/asr/CarRecognizer;Lcom/vlingo/client/car/asr/CarRecognizer$1;)V

    invoke-static {v7}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setResultDispatcher(Lcom/vlingo/client/asr/ResultDispatcher;)V

    .line 118
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v7

    iget-object v8, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->mStateListener:Lcom/vlingo/client/car/asr/CarRecognizer$RecognitionStateListenerImpl;

    invoke-virtual {v7, v8}, Lcom/vlingo/client/core/asr/RecognitionManager;->addRecognitionStateListener(Lcom/vlingo/client/core/asr/RecognitionStateListener;)V

    .line 120
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->flowPolicyFactory:Lcom/vlingo/client/car/asr/CarRecognizerFlowPolicyFactory;

    invoke-static {p2, v7, v8}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->initiateRecognition(Landroid/content/Context;ZLcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 121
    invoke-direct {p0}, Lcom/vlingo/client/car/asr/CarRecognizer;->endRecognition()V
    :try_end_b9
    .catchall {:try_start_6d .. :try_end_b9} :catchall_69
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_b9} :catch_28

    goto/16 :goto_10
.end method

.method public declared-synchronized stopListening()V
    .registers 3

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->m_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 152
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->processRecognition()V

    .line 153
    const/4 v0, 0x3

    iput v0, p0, Lcom/vlingo/client/car/asr/CarRecognizer;->m_state:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 155
    :cond_c
    monitor-exit p0

    return-void

    .line 151
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
