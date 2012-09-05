.class public abstract Lcom/vlingo/client/core/asr/RecognitionManager;
.super Ljava/lang/Object;
.source "RecognitionManager.java"

# interfaces
.implements Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;,
        Lcom/vlingo/client/core/asr/RecognitionManager$KeyHandlerCallback;,
        Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;,
        Lcom/vlingo/client/core/asr/RecognitionManager$StatusDialogCallback;,
        Lcom/vlingo/client/core/asr/RecognitionManager$AudioCallbackImpl;
    }
.end annotation


# static fields
.field private static ImplClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected static final PREPARE_MAX_THRESH:J = 0x3e8L

.field private static instance:Lcom/vlingo/client/core/asr/RecognitionManager;


# instance fields
.field protected flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

.field private final iAudioCallback:Lcom/vlingo/client/core/asr/RecognitionManager$AudioCallbackImpl;

.field private final iFlowChangeListener:Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;

.field private final iKeyCallback:Lcom/vlingo/client/core/asr/RecognitionManager$KeyHandlerCallback;

.field private final iRecognizerListener:Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;

.field private final iStatusDialogCallback:Lcom/vlingo/client/core/asr/RecognitionManager$StatusDialogCallback;

.field protected volatile ignoreListeningNotifications:Z

.field private initialized:Z

.field private keyHandler:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;

.field private lastGuttID:Ljava/lang/String;

.field protected messageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

.field protected prepareStartTime:J

.field private final recognitionStateListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/asr/RecognitionStateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected recognitionTarget:Lcom/vlingo/client/core/asr/RecognitionTarget;

.field protected final recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

.field protected statusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

.field private final timings:Lcom/vlingo/client/core/recognizer/TimingRepository;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 99
    sput-object v0, Lcom/vlingo/client/core/asr/RecognitionManager;->instance:Lcom/vlingo/client/core/asr/RecognitionManager;

    .line 102
    sput-object v0, Lcom/vlingo/client/core/asr/RecognitionManager;->ImplClass:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->keyHandler:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionStateListeners:Ljava/util/Vector;

    .line 64
    iput-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionTarget:Lcom/vlingo/client/core/asr/RecognitionTarget;

    .line 67
    iput-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    .line 86
    iput-boolean v3, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->initialized:Z

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->prepareStartTime:J

    .line 96
    iput-boolean v3, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->ignoreListeningNotifications:Z

    .line 105
    iput-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->lastGuttID:Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/vlingo/client/core/asr/RecognitionManager$AudioCallbackImpl;

    invoke-direct {v0, p0, v2}, Lcom/vlingo/client/core/asr/RecognitionManager$AudioCallbackImpl;-><init>(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/asr/RecognitionManager$1;)V

    iput-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->iAudioCallback:Lcom/vlingo/client/core/asr/RecognitionManager$AudioCallbackImpl;

    .line 138
    new-instance v0, Lcom/vlingo/client/core/asr/RecognitionManager$StatusDialogCallback;

    invoke-direct {v0, p0, v2}, Lcom/vlingo/client/core/asr/RecognitionManager$StatusDialogCallback;-><init>(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/asr/RecognitionManager$1;)V

    iput-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->iStatusDialogCallback:Lcom/vlingo/client/core/asr/RecognitionManager$StatusDialogCallback;

    .line 139
    new-instance v0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;

    invoke-direct {v0, p0, v2}, Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;-><init>(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/asr/RecognitionManager$1;)V

    iput-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->iFlowChangeListener:Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;

    .line 140
    new-instance v0, Lcom/vlingo/client/core/asr/RecognitionManager$KeyHandlerCallback;

    invoke-direct {v0, p0, v2}, Lcom/vlingo/client/core/asr/RecognitionManager$KeyHandlerCallback;-><init>(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/asr/RecognitionManager$1;)V

    iput-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->iKeyCallback:Lcom/vlingo/client/core/asr/RecognitionManager$KeyHandlerCallback;

    .line 141
    new-instance v0, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;

    invoke-direct {v0, p0, v2}, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;-><init>(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/asr/RecognitionManager$1;)V

    iput-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->iRecognizerListener:Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;

    .line 143
    new-instance v0, Lcom/vlingo/client/core/recognizer/TimingRepository;

    invoke-direct {v0}, Lcom/vlingo/client/core/recognizer/TimingRepository;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    .line 144
    new-instance v0, Lcom/vlingo/client/core/recognizer/Recognizer;

    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    invoke-direct {v0, v1, p0}, Lcom/vlingo/client/core/recognizer/Recognizer;-><init>(Lcom/vlingo/client/core/recognizer/TimingRepository;Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;)V

    iput-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    .line 145
    return-void
.end method

.method static synthetic access$1100(Lcom/vlingo/client/core/asr/RecognitionManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vlingo/client/core/asr/RecognitionManager;->processASRKeyDown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/vlingo/client/core/asr/RecognitionManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vlingo/client/core/asr/RecognitionManager;->processASRKeyUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/vlingo/client/core/asr/RecognitionManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vlingo/client/core/asr/RecognitionManager;->processAbortKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/vlingo/client/core/asr/RecognitionManager;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/vlingo/client/core/asr/RecognitionManager;->processRecognitionStateEvent(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/asr/RecognitionManager;->notifyRecognitionStateListenerOfResults(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/vlingo/client/core/asr/RecognitionManager;IILjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/vlingo/client/core/asr/RecognitionManager;->notifyRecognitionStateListenersOfEvent(IILjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/vlingo/client/core/asr/RecognitionManager;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/asr/RecognitionManager;->processAudioDone(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/vlingo/client/core/asr/RecognitionManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vlingo/client/core/asr/RecognitionManager;->playStartRecordTone()V

    return-void
.end method

.method static synthetic access$700(Lcom/vlingo/client/core/asr/RecognitionManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vlingo/client/core/asr/RecognitionManager;->connectBluetooth()V

    return-void
.end method

.method static synthetic access$800(Lcom/vlingo/client/core/asr/RecognitionManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vlingo/client/core/asr/RecognitionManager;->playStopRecordTone()V

    return-void
.end method

.method static synthetic access$900(Lcom/vlingo/client/core/asr/RecognitionManager;)Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->iRecognizerListener:Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;

    return-object v0
.end method

.method private connectBluetooth()V
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    invoke-virtual {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->connectBluetooth()V

    .line 567
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;
    .registers 5

    .prologue
    .line 116
    const-class v2, Lcom/vlingo/client/core/asr/RecognitionManager;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/vlingo/client/core/asr/RecognitionManager;->instance:Lcom/vlingo/client/core/asr/RecognitionManager;

    if-nez v1, :cond_20

    .line 117
    sget-object v1, Lcom/vlingo/client/core/asr/RecognitionManager;->ImplClass:Ljava/lang/Class;

    if-nez v1, :cond_16

    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "RecognitionManager implementation class is not set"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    .line 116
    .local v0, ex:Ljava/lang/InstantiationException;
    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1

    .line 120
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :cond_16
    :try_start_16
    sget-object v1, Lcom/vlingo/client/core/asr/RecognitionManager;->ImplClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/asr/RecognitionManager;

    sput-object v1, Lcom/vlingo/client/core/asr/RecognitionManager;->instance:Lcom/vlingo/client/core/asr/RecognitionManager;
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_13
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_20} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_20} :catch_3e

    .line 131
    :cond_20
    :try_start_20
    sget-object v1, Lcom/vlingo/client/core/asr/RecognitionManager;->instance:Lcom/vlingo/client/core/asr/RecognitionManager;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_13

    monitor-exit v2

    return-object v1

    .line 121
    :catch_24
    move-exception v0

    .line 124
    .restart local v0       #ex:Ljava/lang/InstantiationException;
    :try_start_25
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RecognitionManager InstantiationException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_3e
    move-exception v0

    .line 128
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RecognitionManager IllegalAccessException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_58
    .catchall {:try_start_25 .. :try_end_58} :catchall_13
.end method

.method private notifyRecognitionStateListenerOfResults(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V
    .registers 8
    .parameter "response"

    .prologue
    .line 297
    iget-object v4, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionTarget:Lcom/vlingo/client/core/asr/RecognitionTarget;

    if-eqz v4, :cond_20

    .line 298
    iget-object v4, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionTarget:Lcom/vlingo/client/core/asr/RecognitionTarget;

    instance-of v4, v4, Lcom/vlingo/client/core/asr/RecognitionServerResponseTarget;

    if-eqz v4, :cond_11

    .line 299
    iget-object v3, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionTarget:Lcom/vlingo/client/core/asr/RecognitionTarget;

    check-cast v3, Lcom/vlingo/client/core/asr/RecognitionServerResponseTarget;

    .line 300
    .local v3, target:Lcom/vlingo/client/core/asr/RecognitionServerResponseTarget;
    invoke-interface {v3, p0, p1}, Lcom/vlingo/client/core/asr/RecognitionServerResponseTarget;->onRecognitionResponse(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V

    .line 302
    .end local v3           #target:Lcom/vlingo/client/core/asr/RecognitionServerResponseTarget;
    :cond_11
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasResults()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 303
    iget-object v4, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionTarget:Lcom/vlingo/client/core/asr/RecognitionTarget;

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Lcom/vlingo/client/core/asr/RecognitionTarget;->onRecognitionResults(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)Z

    .line 305
    :cond_20
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasResults()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 306
    iget-object v5, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionStateListeners:Ljava/util/Vector;

    monitor-enter v5

    .line 307
    :try_start_29
    iget-object v4, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionStateListeners:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 308
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_30
    if-ge v0, v2, :cond_44

    .line 309
    iget-object v4, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionStateListeners:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/asr/RecognitionStateListener;

    .line 310
    .local v1, listener:Lcom/vlingo/client/core/asr/RecognitionStateListener;
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v4

    invoke-interface {v1, p0, v4}, Lcom/vlingo/client/core/asr/RecognitionStateListener;->onRecognitionResults(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/recognizer/results/TaggedResults;)Z

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 312
    .end local v1           #listener:Lcom/vlingo/client/core/asr/RecognitionStateListener;
    :cond_44
    monitor-exit v5

    .line 314
    .end local v0           #i:I
    .end local v2           #size:I
    :cond_45
    return-void

    .line 312
    :catchall_46
    move-exception v4

    monitor-exit v5
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_46

    throw v4
.end method

.method private notifyRecognitionStateListenersOfEvent(IILjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 18
    .parameter "recState"
    .parameter "type"
    .parameter "note"
    .parameter "message"
    .parameter "recognizing"
    .parameter "recording"

    .prologue
    .line 281
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionTarget:Lcom/vlingo/client/core/asr/RecognitionTarget;

    if-eqz v1, :cond_12

    .line 282
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionTarget:Lcom/vlingo/client/core/asr/RecognitionTarget;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/vlingo/client/core/asr/RecognitionTarget;->onRecognitionEvent(Lcom/vlingo/client/core/asr/RecognitionManager;IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 284
    :cond_12
    iget-object v10, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionStateListeners:Ljava/util/Vector;

    monitor-enter v10

    .line 285
    :try_start_15
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionStateListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v9

    .line 286
    .local v9, size:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1c
    if-ge v8, v9, :cond_35

    .line 287
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionStateListeners:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/asr/RecognitionStateListener;

    .local v0, listener:Lcom/vlingo/client/core/asr/RecognitionStateListener;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 288
    invoke-interface/range {v0 .. v7}, Lcom/vlingo/client/core/asr/RecognitionStateListener;->onRecognitionEvent(Lcom/vlingo/client/core/asr/RecognitionManager;IILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 286
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    .line 290
    .end local v0           #listener:Lcom/vlingo/client/core/asr/RecognitionStateListener;
    :cond_35
    monitor-exit v10

    .line 291
    return-void

    .line 290
    .end local v8           #i:I
    .end local v9           #size:I
    :catchall_37
    move-exception v1

    monitor-exit v10
    :try_end_39
    .catchall {:try_start_15 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private playStartRecordTone()V
    .registers 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    const-string v1, "OAI"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/recognizer/TimingRepository;->recordAndTimeStampEvent(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->iAudioCallback:Lcom/vlingo/client/core/asr/RecognitionManager$AudioCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->playStartRecordSound(Lcom/vlingo/client/core/audio/AudioCallback;)V

    .line 559
    return-void
.end method

.method private playStopRecordTone()V
    .registers 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    invoke-virtual {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->playStopRecordSound()V

    .line 563
    return-void
.end method

.method private processASRKeyDown()Z
    .registers 4

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionStartCheck()Z

    move-result v1

    if-nez v1, :cond_8

    .line 371
    const/4 v1, 0x0

    .line 385
    :goto_7
    return v1

    .line 373
    :cond_8
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    const-string v2, "RSC"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/recognizer/TimingRepository;->recordAndTimeStampEvent(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    invoke-virtual {v1}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->isIdle()Z

    move-result v1

    if-nez v1, :cond_23

    .line 378
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->abortRecognition()V

    .line 379
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    const-string v2, "ABORT"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/recognizer/TimingRepository;->recordAndTimeStampEvent(Ljava/lang/String;)V

    .line 381
    :cond_23
    invoke-virtual {p0}, Lcom/vlingo/client/core/asr/RecognitionManager;->initializeFlowPolicy()Z

    move-result v0

    .line 382
    .local v0, initializeOK:Z
    if-eqz v0, :cond_30

    .line 383
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    const/16 v2, 0xf01

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->processEvent(I)Z

    .line 385
    :cond_30
    const/4 v1, 0x1

    goto :goto_7
.end method

.method private processASRKeyUp()Z
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    const/16 v1, 0xf02

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->processEvent(I)Z

    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method private processAbortKey()Z
    .registers 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    const/16 v1, 0xf03

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->processEvent(I)Z

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method private processAudioDone(Z)V
    .registers 4
    .parameter "audioPlayed"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    const-string v1, "AUDN"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/recognizer/TimingRepository;->recordAndTimeStampEvent(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    const/16 v1, 0xf06

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->processEvent(I)Z

    .line 419
    return-void
.end method

.method private processRecognitionStateEvent(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V
    .registers 11
    .parameter "recState"
    .parameter "type"
    .parameter "note"
    .parameter "message"
    .parameter "recording"
    .parameter "response"

    .prologue
    const/16 v0, 0xf09

    const/4 v3, 0x4

    .line 428
    sparse-switch p1, :sswitch_data_86

    .line 452
    if-eq p2, v3, :cond_b

    const/4 v1, 0x3

    if-ne p2, v1, :cond_7c

    .line 453
    :cond_b
    if-ne p2, v3, :cond_79

    .line 455
    .local v0, flowEvent:I
    :goto_d
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->processEvent(I)Z

    .line 456
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->messageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    const/4 v2, 0x0

    invoke-interface {v1, p4, v2, p2}, Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;->displayMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 458
    if-ne p2, v3, :cond_38

    .line 459
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->DEBUG_errorLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .end local v0           #flowEvent:I
    .end local p6
    :cond_38
    :goto_38
    return-void

    .line 430
    .restart local p6
    :sswitch_39
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    const/16 v2, 0xf07

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->processEvent(I)Z

    goto :goto_38

    .line 434
    :sswitch_41
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    const/16 v2, 0xf08

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->processEvent(I)Z

    goto :goto_38

    .line 438
    :sswitch_49
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    const/16 v2, 0xf03

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->processEvent(I)Z

    goto :goto_38

    .line 442
    :sswitch_51
    instance-of v1, p6, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    if-eqz v1, :cond_71

    move-object v1, p6

    check-cast v1, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasResults()Z

    move-result v1

    if-nez v1, :cond_71

    check-cast p6, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    .end local p6
    invoke-virtual {p6}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasMessages()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 444
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->processEvent(I)Z

    .line 448
    :goto_6b
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    invoke-virtual {v1}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->resetFlowState()V

    goto :goto_38

    .line 446
    :cond_71
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    const/16 v2, 0xf0a

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->processEvent(I)Z

    goto :goto_6b

    .line 453
    .restart local p6
    :cond_79
    const/16 v0, 0xf0b

    goto :goto_d

    .line 464
    :cond_7c
    iget-boolean v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->ignoreListeningNotifications:Z

    if-nez v1, :cond_38

    .line 469
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->statusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    invoke-interface {v1, p5, p4, p3}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;->setMessageAndNote(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 428
    :sswitch_data_86
    .sparse-switch
        0x65 -> :sswitch_39
        0x67 -> :sswitch_41
        0x69 -> :sswitch_49
        0x70 -> :sswitch_51
    .end sparse-switch
.end method

.method public static declared-synchronized setRecoManagerImpl(Ljava/lang/Class;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, implClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/vlingo/client/core/asr/RecognitionManager;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 109
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "RecognitionManager clazz null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 108
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 110
    :cond_10
    :try_start_10
    const-class v0, Lcom/vlingo/client/core/asr/RecognitionManager;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 111
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecognitionManager invalid impl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_31
    sput-object p0, Lcom/vlingo/client/core/asr/RecognitionManager;->ImplClass:Ljava/lang/Class;
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_d

    .line 113
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public abortRecognition()V
    .registers 3

    .prologue
    .line 519
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vlingo/client/core/asr/RecognitionManager$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/core/asr/RecognitionManager$1;-><init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 525
    return-void
.end method

.method public addRecognitionStateListener(Lcom/vlingo/client/core/asr/RecognitionStateListener;)V
    .registers 4
    .parameter "recoListener"

    .prologue
    .line 261
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionStateListeners:Ljava/util/Vector;

    monitor-enter v1

    .line 262
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionStateListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 263
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionStateListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 265
    :cond_10
    monitor-exit v1

    .line 266
    return-void

    .line 265
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 492
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 495
    invoke-virtual {p0}, Lcom/vlingo/client/core/asr/RecognitionManager;->close()V

    .line 496
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->setRecognitionKeyHandler(Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;)V

    .line 497
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->setRecognitionFlowPolicy(Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;)V

    .line 498
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->setRecognitionTarget(Lcom/vlingo/client/core/asr/RecognitionTarget;)V

    .line 499
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->setMessageDialog(Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;)V

    .line 500
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->setStatusDialog(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V

    .line 501
    return-void
.end method

.method public doCannedAMRRecognition(Ljava/lang/String;Ljava/lang/String;I)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    .registers 6
    .parameter "audioFilename"
    .parameter "fieldID"
    .parameter "duration"

    .prologue
    .line 954
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/vlingo/client/core/recognizer/Recognizer;->recognizeAMR(Ljava/lang/String;Ljava/lang/String;I)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    move-result-object v0

    .line 955
    .local v0, response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    return-object v0
.end method

.method public doCannedRecognition(Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    .registers 5
    .parameter "audioFilename"
    .parameter "fieldID"

    .prologue
    .line 949
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-virtual {v1, p1, p2}, Lcom/vlingo/client/core/recognizer/Recognizer;->recognize(Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    move-result-object v0

    .line 950
    .local v0, response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    return-object v0
.end method

.method public getDefaultRecognitionFlowActor()Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->iFlowChangeListener:Lcom/vlingo/client/core/asr/RecognitionManager$RecognitionManagerFlowActor;

    return-object v0
.end method

.method public declared-synchronized getMessageDialog()Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;
    .registers 2

    .prologue
    .line 202
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->messageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecognitionFlowPolicy()Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;
    .registers 2

    .prologue
    .line 225
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecognitionKeyHandler()Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;
    .registers 2

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->keyHandler:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecognitionTarget()Lcom/vlingo/client/core/asr/RecognitionTarget;
    .registers 2

    .prologue
    .line 210
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionTarget:Lcom/vlingo/client/core/asr/RecognitionTarget;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecognizer()Lcom/vlingo/client/core/recognizer/Recognizer;
    .registers 2

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStatusDialog()Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;
    .registers 2

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->statusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Lcom/vlingo/client/core/recognizer/SRServerDetails;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V
    .registers 6
    .parameter "serverDetails"
    .parameter "clientMeta"
    .parameter "softwareMeta"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->initialized:Z

    if-eqz v0, :cond_10

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecognitionManager already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 148
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vlingo/client/core/recognizer/Recognizer;->init(Lcom/vlingo/client/core/recognizer/SRServerDetails;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V

    .line 152
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->setMaxAudioDuration(I)V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->initialized:Z
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_d

    .line 155
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized initializeFlowPolicy()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 347
    monitor-enter p0

    :try_start_2
    const-string v2, "bluetooth.enabled"

    invoke-static {v2}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 349
    .local v0, useBluetooth:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->prepareStartTime:J

    .line 350
    iget-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-virtual {v2, v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->prepare(Z)V

    .line 351
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->ignoreListeningNotifications:Z

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->prepareStartTime:J
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_2f

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_25

    .line 361
    :goto_23
    monitor-exit p0

    return v1

    .line 356
    :cond_25
    :try_start_25
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/asr/RecognitionManager;->resetFlowPolicyIfRequired(Z)V

    .line 360
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    invoke-virtual {v1}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->resetFlowState()V
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2f

    .line 361
    const/4 v1, 0x1

    goto :goto_23

    .line 347
    .end local v0           #useBluetooth:Z
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected recognitionStartCheck()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->messageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    invoke-interface {v2}, Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;->isDisplayed()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 341
    :cond_9
    :goto_9
    return v1

    .line 325
    :cond_a
    iget-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionTarget:Lcom/vlingo/client/core/asr/RecognitionTarget;

    if-eqz v2, :cond_9

    .line 331
    iget-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-virtual {v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->readyForRecognition()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 332
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090248

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, busyMsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->messageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-interface {v2, v0, v3, v4}, Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;->displayMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_9

    .line 338
    .end local v0           #busyMsg:Ljava/lang/String;
    :cond_2d
    iget-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionTarget:Lcom/vlingo/client/core/asr/RecognitionTarget;

    invoke-interface {v2, p0}, Lcom/vlingo/client/core/asr/RecognitionTarget;->onRecognitionWillBegin(Lcom/vlingo/client/core/asr/RecognitionManager;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 341
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public removeRecognitionStateListener(Lcom/vlingo/client/core/asr/RecognitionStateListener;)V
    .registers 4
    .parameter "recoListener"

    .prologue
    .line 271
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionStateListeners:Ljava/util/Vector;

    monitor-enter v1

    .line 272
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionStateListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 273
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionStateListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 275
    :cond_10
    monitor-exit v1

    .line 276
    return-void

    .line 275
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method protected abstract resetFlowPolicyIfRequired(Z)V
.end method

.method public sendStatsToServer(Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;)V
    .registers 6
    .parameter "collection"

    .prologue
    .line 475
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->getAcceptedText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 477
    iget-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-virtual {v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->getLastGuttID()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, guttID:Ljava/lang/String;
    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->lastGuttID:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->lastGuttID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 480
    :cond_1a
    new-instance v1, Lcom/vlingo/client/core/recognizer/SRStatistics;

    sget-object v2, Lcom/vlingo/client/core/recognizer/SRStatistics;->TYPE_ACCEPTED_TEXT:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/vlingo/client/core/recognizer/SRStatistics;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    .local v1, stats:Lcom/vlingo/client/core/recognizer/SRStatistics;
    sget-object v2, Lcom/vlingo/client/core/recognizer/SRStatistics;->STAT_ACCEPTED_TEXT:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->getAcceptedText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/core/recognizer/SRStatistics;->addStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->addStatistics(Lcom/vlingo/client/core/recognizer/SRStatistics;)V

    .line 483
    iput-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->lastGuttID:Ljava/lang/String;

    .line 486
    .end local v0           #guttID:Ljava/lang/String;
    .end local v1           #stats:Lcom/vlingo/client/core/recognizer/SRStatistics;
    :cond_2f
    iget-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-virtual {v2, p1}, Lcom/vlingo/client/core/recognizer/Recognizer;->sendStatsCollection(Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;)V

    .line 487
    return-void
.end method

.method public declared-synchronized setMessageDialog(Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 194
    monitor-enter p0

    if-nez p1, :cond_3

    .line 198
    :cond_3
    :try_start_3
    iput-object p1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->messageDialog:Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 199
    monitor-exit p0

    return-void

    .line 194
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setRecognitionFlowPolicy(Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;)V
    .registers 3
    .parameter "policy"

    .prologue
    .line 215
    monitor-enter p0

    if-nez p1, :cond_3

    .line 221
    :cond_3
    :try_start_3
    iput-object p1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->flowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 222
    monitor-exit p0

    return-void

    .line 215
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecognitionKeyHandler(Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;)V
    .registers 4
    .parameter "keyHandler"

    .prologue
    .line 233
    monitor-enter p0

    if-nez p1, :cond_3

    .line 240
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->keyHandler:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;

    if-eqz v0, :cond_f

    .line 241
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->keyHandler:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;

    invoke-virtual {v0}, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->destroy()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->keyHandler:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;

    .line 244
    :cond_f
    if-eqz p1, :cond_26

    .line 245
    iput-object p1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->keyHandler:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;

    .line 246
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->keyHandler:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;

    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->setTimingRepository(Lcom/vlingo/client/core/recognizer/TimingRepository;)V

    .line 247
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->keyHandler:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;

    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->iKeyCallback:Lcom/vlingo/client/core/asr/RecognitionManager$KeyHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->setRecognitionKeyHandlerCallback(Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandlerCallback;)V

    .line 248
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->keyHandler:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;

    invoke-virtual {v0}, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->initialize()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    .line 250
    :cond_26
    monitor-exit p0

    return-void

    .line 233
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecognitionTarget(Lcom/vlingo/client/core/asr/RecognitionTarget;)V
    .registers 3
    .parameter "target"

    .prologue
    .line 206
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionTarget:Lcom/vlingo/client/core/asr/RecognitionTarget;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 207
    monitor-exit p0

    return-void

    .line 206
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStatusDialog(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 176
    monitor-enter p0

    if-nez p1, :cond_3

    .line 180
    :cond_3
    :try_start_3
    iput-object p1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->statusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    .line 181
    if-eqz p1, :cond_15

    .line 182
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->statusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    invoke-interface {v0, v1}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;->setTimings(Lcom/vlingo/client/core/recognizer/TimingRepository;)V

    .line 183
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->statusDialog:Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;

    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->iStatusDialogCallback:Lcom/vlingo/client/core/asr/RecognitionManager$StatusDialogCallback;

    invoke-interface {v0, v1}, Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialog;->setCallback(Lcom/vlingo/client/core/asr/ui/RecognitionStatusDialogCallback;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    .line 185
    :cond_15
    monitor-exit p0

    return-void

    .line 176
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startRecognition()Z
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->keyHandler:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;

    invoke-virtual {v0}, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->startRecognition()Z

    move-result v0

    return v0
.end method

.method protected startRecording()V
    .registers 4

    .prologue
    .line 399
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    const-string v2, "SR"

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/recognizer/TimingRepository;->recordAndTimeStampEvent(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognitionTarget:Lcom/vlingo/client/core/asr/RecognitionTarget;

    invoke-interface {v1}, Lcom/vlingo/client/core/asr/RecognitionTarget;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v0

    .line 403
    .local v0, context:Lcom/vlingo/client/core/recognizer/SRContext;
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->iRecognizerListener:Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;

    invoke-virtual {v1}, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->reset()V

    .line 404
    iget-object v1, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    iget-object v2, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->iRecognizerListener:Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;

    invoke-virtual {v1, v0, v2}, Lcom/vlingo/client/core/recognizer/Recognizer;->startRecording(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/recognizer/RecognizerListener;)V

    .line 405
    return-void
.end method

.method public stopRecognition()V
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->keyHandler:Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;

    invoke-virtual {v0}, Lcom/vlingo/client/core/asr/handlers/RecognitionKeyHandler;->stopRecognition()V

    .line 163
    return-void
.end method

.method protected stopRecording()V
    .registers 4

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->ignoreListeningNotifications:Z

    if-eqz v0, :cond_b

    .line 410
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->iRecognizerListener:Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;

    const/4 v1, -0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/asr/RecognitionManager$RecognizerListenerImpl;->notifyRecognitionState(ILjava/lang/Object;)V

    .line 413
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->stopRecording()V

    .line 414
    return-void
.end method
