.class public Lcom/vlingo/client/asr/service/VLRecognitionService;
.super Landroid/app/Service;
.source "VLRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/asr/service/VLRecognitionService$NullMessageDialogImpl;,
        Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;,
        Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;,
        Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;,
        Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;
    }
.end annotation


# static fields
.field public static final MSG_UPDATE_TEXT:I = 0x0

.field public static final STATE_GETTING_READY:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_LISTENING:I = 0x3

.field public static final STATE_THINKING:I = 0x4

.field public static final STATE_WAITING_FOR_TOS:I = 0x1


# instance fields
.field handler:Landroid/os/Handler;

.field private volatile lastRecoIntent:Landroid/content/Intent;

.field lastTOSReceiver:Landroid/content/BroadcastReceiver;

.field private final mBinder:Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;

.field private mMessageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

.field private mStateListener:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

.field private mStatusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

.field private m_lastResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vlingo/client/asr/service/VLRecognitionResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;

.field private volatile m_state:I

.field recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    new-instance v0, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;

    invoke-direct {v0, p0}, Lcom/vlingo/client/asr/service/VLRecognitionService$NullStatusDialogImpl;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    iput-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->mStatusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    .line 48
    new-instance v0, Lcom/vlingo/client/asr/service/VLRecognitionService$NullMessageDialogImpl;

    invoke-direct {v0, p0}, Lcom/vlingo/client/asr/service/VLRecognitionService$NullMessageDialogImpl;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    iput-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->mMessageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    .line 49
    new-instance v0, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService;Lcom/vlingo/client/asr/service/VLRecognitionService$1;)V

    iput-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->mStateListener:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I

    .line 64
    iput-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->m_lastResults:Ljava/util/List;

    .line 66
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    iput-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 92
    new-instance v0, Lcom/vlingo/client/asr/service/VLRecognitionService$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/asr/service/VLRecognitionService$1;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService;)V

    iput-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->mBinder:Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;

    .line 311
    iput-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->lastTOSReceiver:Landroid/content/BroadcastReceiver;

    .line 569
    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/asr/service/VLRecognitionService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I

    return v0
.end method

.method static synthetic access$102(Lcom/vlingo/client/asr/service/VLRecognitionService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I

    return p1
.end method

.method static synthetic access$200(Lcom/vlingo/client/asr/service/VLRecognitionService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->cancelRecognition()V

    return-void
.end method

.method static synthetic access$300(Lcom/vlingo/client/asr/service/VLRecognitionService;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->m_lastResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vlingo/client/asr/service/VLRecognitionService;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->m_lastResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$402(Lcom/vlingo/client/asr/service/VLRecognitionService;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->lastRecoIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vlingo/client/asr/service/VLRecognitionService;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vlingo/client/asr/service/VLRecognitionService;Lcom/vlingo/client/asr/service/IVLRecognitionListener;)Lcom/vlingo/client/asr/service/IVLRecognitionListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vlingo/client/asr/service/VLRecognitionService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->runTOSAcceptFlow()V

    return-void
.end method

.method static synthetic access$700(Lcom/vlingo/client/asr/service/VLRecognitionService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->startRecognition()V

    return-void
.end method

.method static synthetic access$800(Lcom/vlingo/client/asr/service/VLRecognitionService;Ljava/util/Vector;)Ljava/util/List;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->convertNBestListToStringList(Ljava/util/Vector;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/vlingo/client/asr/service/VLRecognitionService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->endRecognition()V

    return-void
.end method

.method private declared-synchronized cancelRecognition()V
    .registers 2

    .prologue
    .line 298
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I

    if-eqz v0, :cond_b

    .line 301
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->cancelRecognition()V

    .line 302
    invoke-direct {p0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->endRecognition()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 309
    :cond_b
    monitor-exit p0

    return-void

    .line 298
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private convertNBestListToStringList(Ljava/util/Vector;)Ljava/util/List;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    .local p1, nbest:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 582
    :cond_8
    const/4 v1, 0x0

    .line 589
    :cond_9
    return-object v1

    .line 583
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 586
    .local v2, nbestChoices:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    if-ge v0, v2, :cond_9

    .line 587
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method private declared-synchronized endRecognition()V
    .registers 3

    .prologue
    .line 281
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I

    if-eqz v0, :cond_11

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I

    .line 285
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->mStateListener:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->removeRecognitionStateListener(Lcom/vlingo/client/core/asr/RecognitionStateListener;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 292
    :cond_11
    monitor-exit p0

    return-void

    .line 281
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private runTOSAcceptFlow()V
    .registers 5

    .prologue
    .line 315
    new-instance v2, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vlingo/client/asr/service/VLRecognitionService$TOSAcceptBroadcastReceiver;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService;Lcom/vlingo/client/asr/service/VLRecognitionService$1;)V

    iput-object v2, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->lastTOSReceiver:Landroid/content/BroadcastReceiver;

    .line 316
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    .local v1, in:Landroid/content/IntentFilter;
    sget-object v2, Lcom/vlingo/client/iux/StartIUXFlowActivity;->ACTION_TOS_ACCEPTED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    sget-object v2, Lcom/vlingo/client/iux/StartIUXFlowActivity;->ACTION_TOS_DECLINED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->lastTOSReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/vlingo/client/asr/service/VLRecognitionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vlingo/client/iux/StartIUXFlowActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    .local v0, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 330
    sget-object v2, Lcom/vlingo/client/iux/StartIUXFlowActivity;->EXTRA_ONLY_TOS:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->startActivity(Landroid/content/Intent;)V

    .line 333
    return-void
.end method

.method private declared-synchronized startRecognition()V
    .registers 6

    .prologue
    .line 247
    monitor-enter p0

    :try_start_1
    iget v3, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->m_state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_51

    .line 251
    iget-object v3, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->mMessageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    invoke-virtual {v3, v4}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setMessageDialog(Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;)V

    .line 252
    iget-object v3, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->mStatusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    invoke-virtual {v3, v4}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setStatusDialog(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V

    .line 254
    iget-object v2, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->recoMgr:Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;

    .line 255
    .local v2, target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    invoke-interface {v2}, Lcom/vlingo/client/core/asr/RecognitionTarget;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v0

    .line 257
    .local v0, ctx:Lcom/vlingo/client/core/recognizer/SRContext;
    iget-object v3, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->lastRecoIntent:Landroid/content/Intent;

    invoke-static {v0, v3, p0}, Lcom/vlingo/client/asr/VLRecognizerIntent;->fillSRContextFromIntent(Lcom/vlingo/client/core/recognizer/SRContext;Landroid/content/Intent;Landroid/content/Context;)V

    .line 259
    new-instance v3, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/vlingo/client/asr/service/VLRecognitionService$ServiceResultsHandler;-><init>(Lcom/vlingo/client/asr/service/VLRecognitionService;Lcom/vlingo/client/asr/service/VLRecognitionService$1;)V

    invoke-static {v3}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->setResultDispatcher(Lcom/vlingo/client/asr/ResultDispatcher;)V

    .line 260
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->mStateListener:Lcom/vlingo/client/asr/service/VLRecognitionService$RecognitionStateListenerImpl;

    invoke-virtual {v3, v4}, Lcom/vlingo/client/core/asr/RecognitionManager;->addRecognitionStateListener(Lcom/vlingo/client/core/asr/RecognitionStateListener;)V

    .line 262
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->initiateRecognition(Landroid/content/Context;Z)Z

    move-result v3

    if-nez v3, :cond_41

    .line 263
    invoke-direct {p0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->endRecognition()V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_4e

    .line 265
    :try_start_3b
    iget-object v3, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/vlingo/client/asr/service/IVLRecognitionListener;->onError(I)V
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_4e
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_41} :catch_43

    .line 276
    .end local v0           #ctx:Lcom/vlingo/client/core/recognizer/SRContext;
    .end local v2           #target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    :cond_41
    :goto_41
    monitor-exit p0

    return-void

    .line 266
    .restart local v0       #ctx:Lcom/vlingo/client/core/recognizer/SRContext;
    .restart local v2       #target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    :catch_43
    move-exception v1

    .line 267
    .local v1, ex:Landroid/os/RemoteException;
    :try_start_44
    const-string v3, "VLG_EXCEPTION"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_4e

    goto :goto_41

    .line 247
    .end local v0           #ctx:Lcom/vlingo/client/core/recognizer/SRContext;
    .end local v1           #ex:Landroid/os/RemoteException;
    .end local v2           #target:Lcom/vlingo/client/core/asr/RecognitionTarget;
    :catchall_4e
    move-exception v3

    monitor-exit p0

    throw v3

    .line 274
    :cond_51
    :try_start_51
    invoke-direct {p0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->cancelRecognition()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    goto :goto_41
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 72
    const-class v0, Lcom/vlingo/client/asr/service/IVLRecognitionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "com.vlingo.client.actions.RECOGNIZE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 73
    :cond_1c
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->handler:Landroid/os/Handler;

    .line 74
    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->mBinder:Lcom/vlingo/client/asr/service/IVLRecognitionService$Stub;

    .line 76
    :goto_25
    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public declared-synchronized onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .parameter "intent"

    .prologue
    .line 83
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionService;->m_listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    .line 84
    invoke-direct {p0}, Lcom/vlingo/client/asr/service/VLRecognitionService;->endRecognition()V

    .line 85
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->resetDialogs()V

    .line 86
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit p0

    return v0

    .line 83
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
