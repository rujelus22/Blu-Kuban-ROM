.class public Lcom/vlingo/client/core/recognizer/Recognizer;
.super Ljava/lang/Object;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/recognizer/Recognizer$1;,
        Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionSRContext;,
        Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;,
        Lcom/vlingo/client/core/recognizer/Recognizer$StreamingTask;,
        Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;,
        Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;,
        Lcom/vlingo/client/core/recognizer/Recognizer$Notification;,
        Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;,
        Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;,
        Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;
    }
.end annotation


# static fields
.field private static final ASR_ABORTING:I = 0x3e8

.field private static final ASR_IDLE:I = 0x0

.field public static final AUTO_ENDPOINT_TIMELIMIT_WITHOUT_SPEECH_SEC_CAR_DEFAULT:F = 3.0f

.field public static final AUTO_ENDPOINT_TIMELIMIT_WITHOUT_SPEECH_SEC_DEFAULT:F = 3.0f

.field private static final AUTO_ENDPOINT_TIMELIMIT_WITHOUT_SPEECH_SEC_DISABLED_DEFAULT:F = 30.0f

.field public static final AUTO_ENDPOINT_TIMELIMIT_WITH_SPEECH_SEC_CAR_DEFAULT:F = 2.0f

.field public static final AUTO_ENDPOINT_TIMELIMIT_WITH_SPEECH_SEC_DEFAULT:F = 1.8f

.field private static final AUTO_ENDPOINT_TIMELIMIT_WITH_SPEECH_SEC_DISABLED_DEFAULT:F = 30.0f

.field private static volatile MAX_TIMEOUT:I = 0x0

.field private static final MIN_SPEECH_TIME:F = 0.5f

.field private static volatile MIN_TIMEOUT:I = 0x0

.field static final RECORDER_NOTIFY:I = 0xf4240

.field private static m_autoEndpointingTimeWithSpeech:F

.field private static m_autoEndpointingTimeWithSpeechCar:F

.field private static m_autoEndpointingTimeWithoutSpeech:F

.field private static m_autoEndpointingTimeWithoutSpeechCar:F


# instance fields
.field private volatile beginStopDelta:I

.field private clientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

.field private connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;

.field private final controller:Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;

.field private volatile currentRequest:Lcom/vlingo/client/core/recognizer/SRRequest;

.field private volatile endStopDelta:I

.field private volatile gotResultDelta:I

.field private initialized:Z

.field private volatile listener:Lcom/vlingo/client/core/recognizer/RecognizerListener;

.field private notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;

.field private notifier:Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;

.field private parseResultDelta:I

.field private volatile recContext:Lcom/vlingo/client/core/recognizer/SRContext;

.field private volatile recognizerState:I

.field private recorder:Lcom/vlingo/client/core/recognizer/Recorder;

.field private final requestListener:Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;

.field private volatile sendFinishDelta:I

.field private volatile sendStartDelta:I

.field private softwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

.field private srManager:Lcom/vlingo/client/core/recognizer/SRManager;

.field private volatile startDelta:I

.field private volatile startTime:J

.field private streamingTask:Lcom/vlingo/client/core/recognizer/Recognizer$StreamingTask;

.field private timeoutTask:Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;

.field private final timer:Ljava/util/Timer;

.field private final timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

.field private uttBytes:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/high16 v1, 0x4040

    .line 49
    const/16 v0, 0x7530

    sput v0, Lcom/vlingo/client/core/recognizer/Recognizer;->MIN_TIMEOUT:I

    .line 51
    const v0, 0xea60

    sput v0, Lcom/vlingo/client/core/recognizer/Recognizer;->MAX_TIMEOUT:I

    .line 119
    const v0, 0x3fe66666

    sput v0, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithSpeech:F

    .line 121
    sput v1, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithoutSpeech:F

    .line 123
    const/high16 v0, 0x4000

    sput v0, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithSpeechCar:F

    .line 125
    sput v1, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithoutSpeechCar:F

    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/core/recognizer/TimingRepository;Lcom/vlingo/client/core/net/ConnectionProvider;Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;)V
    .registers 5
    .parameter "timings"
    .parameter "connectionProvider"
    .parameter "controller"

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;

    invoke-direct {v0, p0}, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;-><init>(Lcom/vlingo/client/core/recognizer/Recognizer;)V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->requestListener:Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;

    .line 91
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timer:Ljava/util/Timer;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;

    .line 158
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    .line 159
    iput-object p2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;

    .line 160
    iput-object p3, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->controller:Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;

    .line 161
    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/core/recognizer/TimingRepository;Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;)V
    .registers 4
    .parameter "timings"
    .parameter "controller"

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;

    invoke-direct {v0, p0}, Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;-><init>(Lcom/vlingo/client/core/recognizer/Recognizer;)V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->requestListener:Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;

    .line 91
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timer:Ljava/util/Timer;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;

    .line 152
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    .line 153
    iput-object p2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->controller:Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;

    .line 154
    invoke-static {}, Lcom/vlingo/client/core/net/ConnectionManager;->getInstance()Lcom/vlingo/client/core/net/ConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;

    .line 155
    return-void
.end method

.method private declared-synchronized abortRecognition(ZZ)V
    .registers 6
    .parameter "userRequested"
    .parameter "timeout"

    .prologue
    .line 357
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->currentRequest:Lcom/vlingo/client/core/recognizer/SRRequest;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->currentRequest:Lcom/vlingo/client/core/recognizer/SRRequest;

    invoke-interface {v1}, Lcom/vlingo/client/core/recognizer/SRRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->currentRequest:Lcom/vlingo/client/core/recognizer/SRRequest;

    invoke-interface {v1}, Lcom/vlingo/client/core/recognizer/SRRequest;->isResponseReceived()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 359
    :cond_15
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recContext:Lcom/vlingo/client/core/recognizer/SRContext;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_53

    .line 386
    :goto_18
    monitor-exit p0

    return-void

    .line 363
    :cond_1a
    const/16 v1, 0x3e8

    :try_start_1c
    invoke-direct {p0, v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->setState(I)V

    .line 364
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->currentRequest:Lcom/vlingo/client/core/recognizer/SRRequest;

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->requestListener:Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;

    invoke-interface {v1, v2}, Lcom/vlingo/client/core/recognizer/SRRequest;->removeListener(Lcom/vlingo/client/core/recognizer/SRRequestListener;)V

    .line 366
    if-eqz p1, :cond_34

    .line 367
    new-instance v0, Lcom/vlingo/client/core/recognizer/Recognizer$Notification;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/vlingo/client/core/recognizer/Recognizer$Notification;-><init>(Lcom/vlingo/client/core/recognizer/Recognizer;ILjava/lang/Object;)V

    .line 368
    .local v0, n:Lcom/vlingo/client/core/recognizer/Recognizer$Notification;
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/recognizer/Queue;->add(Ljava/lang/Object;)V

    .line 371
    .end local v0           #n:Lcom/vlingo/client/core/recognizer/Recognizer$Notification;
    :cond_34
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timeoutTask:Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;

    if-eqz v1, :cond_3d

    .line 372
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timeoutTask:Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;->cancel()Z

    .line 375
    :cond_3d
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recognizer;->stopAudioStreaming()V

    .line 381
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/Recorder;->stop()V

    .line 382
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/Recorder;->cleanUp()V

    .line 384
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->currentRequest:Lcom/vlingo/client/core/recognizer/SRRequest;

    invoke-interface {v1, p2}, Lcom/vlingo/client/core/recognizer/SRRequest;->cancel(Z)V

    .line 385
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recContext:Lcom/vlingo/client/core/recognizer/SRContext;
    :try_end_52
    .catchall {:try_start_1c .. :try_end_52} :catchall_53

    goto :goto_18

    .line 357
    :catchall_53
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static synthetic access$1002(Lcom/vlingo/client/core/recognizer/Recognizer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->endStopDelta:I

    return p1
.end method

.method static synthetic access$1100(Lcom/vlingo/client/core/recognizer/Recognizer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recognizer;->stopAudioStreaming()V

    return-void
.end method

.method static synthetic access$1212(Lcom/vlingo/client/core/recognizer/Recognizer;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iget v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->uttBytes:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->uttBytes:I

    return v0
.end method

.method static synthetic access$1300(Lcom/vlingo/client/core/recognizer/Recognizer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/recognizer/Recognizer;->handleRecognitionFailure(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Queue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;

    return-object v0
.end method

.method static synthetic access$1500()F
    .registers 1

    .prologue
    .line 36
    sget v0, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithSpeech:F

    return v0
.end method

.method static synthetic access$1600()F
    .registers 1

    .prologue
    .line 36
    sget v0, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithoutSpeech:F

    return v0
.end method

.method static synthetic access$1700()F
    .registers 1

    .prologue
    .line 36
    sget v0, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithSpeechCar:F

    return v0
.end method

.method static synthetic access$1800()F
    .registers 1

    .prologue
    .line 36
    sget v0, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithoutSpeechCar:F

    return v0
.end method

.method static synthetic access$1900(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->controller:Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/core/recognizer/Recognizer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recognizerState:I

    return v0
.end method

.method static synthetic access$2000(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timeoutTask:Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/vlingo/client/core/recognizer/Recognizer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->parseResultDelta:I

    return v0
.end method

.method static synthetic access$2102(Lcom/vlingo/client/core/recognizer/Recognizer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->parseResultDelta:I

    return p1
.end method

.method static synthetic access$2202(Lcom/vlingo/client/core/recognizer/Recognizer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->sendStartDelta:I

    return p1
.end method

.method static synthetic access$2302(Lcom/vlingo/client/core/recognizer/Recognizer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->sendFinishDelta:I

    return p1
.end method

.method static synthetic access$2402(Lcom/vlingo/client/core/recognizer/Recognizer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->gotResultDelta:I

    return p1
.end method

.method static synthetic access$2500(Lcom/vlingo/client/core/recognizer/Recognizer;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/recognizer/Recognizer;->sendRecTiming(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Recorder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/RecognizerListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->listener:Lcom/vlingo/client/core/recognizer/RecognizerListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vlingo/client/core/recognizer/Recognizer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->startDelta:I

    return p1
.end method

.method static synthetic access$400(Lcom/vlingo/client/core/recognizer/Recognizer;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->startTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/SRRequest;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->currentRequest:Lcom/vlingo/client/core/recognizer/SRRequest;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vlingo/client/core/recognizer/Recognizer;Lcom/vlingo/client/core/recognizer/SRRequest;)Lcom/vlingo/client/core/recognizer/SRRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->currentRequest:Lcom/vlingo/client/core/recognizer/SRRequest;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recContext:Lcom/vlingo/client/core/recognizer/SRContext;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/SRManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vlingo/client/core/recognizer/Recognizer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recognizer;->startAudioStreaming()V

    return-void
.end method

.method static synthetic access$902(Lcom/vlingo/client/core/recognizer/Recognizer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->beginStopDelta:I

    return p1
.end method

.method private declared-synchronized handleRecognitionFailure(I)V
    .registers 4
    .parameter "errorState"

    .prologue
    const/4 v0, 0x0

    .line 395
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->notifyRecognizerListener(ILjava/lang/Object;)V

    .line 397
    const/4 v1, -0x4

    if-ne p1, v1, :cond_a

    const/4 v0, 0x1

    .line 398
    .local v0, timedOut:Z
    :cond_a
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->abortRecognition(ZZ)V

    .line 400
    const/4 v1, -0x5

    if-ne p1, v1, :cond_16

    .line 401
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/Recorder;->rebuildRecorder()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    .line 402
    :cond_16
    monitor-exit p0

    return-void

    .line 395
    .end local v0           #timedOut:Z
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private initRecTimings()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->startTime:J

    .line 452
    iput v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->startDelta:I

    .line 453
    iput v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->beginStopDelta:I

    .line 454
    iput v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->endStopDelta:I

    .line 455
    iput v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->sendStartDelta:I

    .line 456
    iput v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->sendFinishDelta:I

    .line 457
    iput v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->gotResultDelta:I

    .line 458
    iput v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->parseResultDelta:I

    .line 459
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->uttBytes:I

    .line 460
    return-void
.end method

.method public static rlStateToString(I)Ljava/lang/String;
    .registers 2
    .parameter "recognizerListenerState"

    .prologue
    .line 520
    sparse-switch p0, :sswitch_data_3c

    .line 560
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 522
    :sswitch_6
    const-string v0, "RECORDER_STARTED"

    goto :goto_5

    .line 524
    :sswitch_9
    const-string v0, "RECORDING"

    goto :goto_5

    .line 526
    :sswitch_c
    const-string v0, "RECORDING AUDIO"

    goto :goto_5

    .line 528
    :sswitch_f
    const-string v0, "RECORDER_STOPPED"

    goto :goto_5

    .line 530
    :sswitch_12
    const-string v0, "RECORDED"

    goto :goto_5

    .line 532
    :sswitch_15
    const-string v0, "RECORDED_MAX"

    goto :goto_5

    .line 534
    :sswitch_18
    const-string v0, "CONNECTING"

    goto :goto_5

    .line 536
    :sswitch_1b
    const-string v0, "SENDING"

    goto :goto_5

    .line 538
    :sswitch_1e
    const-string v0, "RECEIVING"

    goto :goto_5

    .line 540
    :sswitch_21
    const-string v0, "RESULT"

    goto :goto_5

    .line 543
    :sswitch_24
    const-string v0, "UNINITIALIZED"

    goto :goto_5

    .line 545
    :sswitch_27
    const-string v0, "ABORTED"

    goto :goto_5

    .line 547
    :sswitch_2a
    const-string v0, "CONNECT_FAILURE"

    goto :goto_5

    .line 549
    :sswitch_2d
    const-string v0, "TIMEOUT"

    goto :goto_5

    .line 551
    :sswitch_30
    const-string v0, "RECORDER_ERROR"

    goto :goto_5

    .line 553
    :sswitch_33
    const-string v0, "TOO_SHORT"

    goto :goto_5

    .line 555
    :sswitch_36
    const-string v0, "TOO_LONG"

    goto :goto_5

    .line 558
    :sswitch_39
    const-string v0, "RECORDER_NOTIFY"

    goto :goto_5

    .line 520
    :sswitch_data_3c
    .sparse-switch
        -0x7 -> :sswitch_36
        -0x6 -> :sswitch_33
        -0x5 -> :sswitch_30
        -0x4 -> :sswitch_2d
        -0x3 -> :sswitch_2a
        -0x2 -> :sswitch_27
        -0x1 -> :sswitch_24
        0x1 -> :sswitch_6
        0x2 -> :sswitch_9
        0x3 -> :sswitch_c
        0x4 -> :sswitch_f
        0x5 -> :sswitch_12
        0x6 -> :sswitch_18
        0x7 -> :sswitch_1b
        0x8 -> :sswitch_1e
        0x9 -> :sswitch_21
        0xa -> :sswitch_15
        0xf4240 -> :sswitch_39
    .end sparse-switch
.end method

.method private sendRecTiming(Ljava/lang/String;)V
    .registers 6
    .parameter "guttId"

    .prologue
    .line 463
    new-instance v0, Lcom/vlingo/client/core/recognizer/SRStatistics;

    sget-object v1, Lcom/vlingo/client/core/recognizer/SRStatistics;->TYPE_REC_TIMING:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/vlingo/client/core/recognizer/SRStatistics;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .local v0, stats:Lcom/vlingo/client/core/recognizer/SRStatistics;
    const-string v1, "BOR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->startDelta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/SRStatistics;->addStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v1, "EOS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->beginStopDelta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/SRStatistics;->addStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v1, "EOR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->endStopDelta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/SRStatistics;->addStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v1, "Custom1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->sendStartDelta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/SRStatistics;->addStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v1, "EOD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->sendFinishDelta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/SRStatistics;->addStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v1, "SED"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/SRStatistics;->addStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v1, "RES"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->gotResultDelta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/SRStatistics;->addStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v1, "PAR"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->parseResultDelta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/SRStatistics;->addStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v1, "UTT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->uttBytes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/SRStatistics;->addStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v1, "pref.internal.detailed_timings"

    invoke-static {v1}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 478
    const-string v1, "Custom2"

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    invoke-virtual {v2}, Lcom/vlingo/client/core/recognizer/TimingRepository;->getStatString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/SRStatistics;->addStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_f1
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    invoke-interface {v1, v0}, Lcom/vlingo/client/core/recognizer/SRManager;->sendStatistics(Lcom/vlingo/client/core/recognizer/SRStatistics;)V

    .line 500
    return-void
.end method

.method public static setAutoEndpointingFromSettings()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x4040

    const/high16 v2, 0x41f0

    .line 179
    const-string v0, "behavior.auto_endpointing.timelimit.withspeech"

    const v1, 0x3fe66666

    invoke-static {v0, v1}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithSpeech:F

    .line 180
    const-string v0, "behavior.auto_endpointing.timelimit.withoutspeech"

    invoke-static {v0, v3}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithoutSpeech:F

    .line 181
    const-string v0, "behavior.auto_endpointing.timelimit.withspeechcar"

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithSpeechCar:F

    .line 182
    const-string v0, "behavior.auto_endpointing.timelimit.withoutspeechcar"

    invoke-static {v0, v3}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithoutSpeechCar:F

    .line 183
    const-string v0, "silence_detect_use_car"

    invoke-static {v0, v4}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_36

    .line 184
    sput v2, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithSpeechCar:F

    .line 185
    sput v2, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithoutSpeechCar:F

    .line 187
    :cond_36
    const-string v0, "silence_detect_use"

    invoke-static {v0, v4}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_42

    .line 188
    sput v2, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithSpeech:F

    .line 189
    sput v2, Lcom/vlingo/client/core/recognizer/Recognizer;->m_autoEndpointingTimeWithoutSpeech:F

    .line 191
    :cond_42
    return-void
.end method

.method public static setMaxTimeout(I)V
    .registers 1
    .parameter "timeout"

    .prologue
    .line 168
    sput p0, Lcom/vlingo/client/core/recognizer/Recognizer;->MAX_TIMEOUT:I

    .line 169
    return-void
.end method

.method public static setMinTimeout(I)V
    .registers 1
    .parameter "timeout"

    .prologue
    .line 164
    sput p0, Lcom/vlingo/client/core/recognizer/Recognizer;->MIN_TIMEOUT:I

    .line 165
    return-void
.end method

.method private declared-synchronized setState(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 503
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recognizerState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 504
    monitor-exit p0

    return-void

    .line 503
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startAudioStreaming()V
    .registers 7

    .prologue
    .line 509
    new-instance v0, Lcom/vlingo/client/core/recognizer/Recognizer$StreamingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/core/recognizer/Recognizer$StreamingTask;-><init>(Lcom/vlingo/client/core/recognizer/Recognizer;Lcom/vlingo/client/core/recognizer/Recognizer$1;)V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->streamingTask:Lcom/vlingo/client/core/recognizer/Recognizer$StreamingTask;

    .line 510
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->streamingTask:Lcom/vlingo/client/core/recognizer/Recognizer$StreamingTask;

    sget v2, Lcom/vlingo/client/core/recognizer/Recorder;->MIN_STREAMING_CHECK_INTERVAL:I

    int-to-long v2, v2

    sget v4, Lcom/vlingo/client/core/recognizer/Recorder;->MIN_STREAMING_CHECK_INTERVAL:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 511
    return-void
.end method

.method private stopAudioStreaming()V
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->streamingTask:Lcom/vlingo/client/core/recognizer/Recognizer$StreamingTask;

    if-eqz v0, :cond_9

    .line 515
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->streamingTask:Lcom/vlingo/client/core/recognizer/Recognizer$StreamingTask;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Recognizer$StreamingTask;->cancel()Z

    .line 517
    :cond_9
    return-void
.end method


# virtual methods
.method public declared-synchronized abortRecognition()V
    .registers 3

    .prologue
    .line 351
    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->abortRecognition(ZZ)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 352
    monitor-exit p0

    return-void

    .line 351
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .registers 2

    .prologue
    .line 235
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->notifier:Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;

    if-eqz v0, :cond_d

    .line 236
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->notifier:Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->destroy()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->notifier:Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;

    .line 239
    :cond_d
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;

    if-eqz v0, :cond_19

    .line 240
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Queue;->clear()Z

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;

    .line 243
    :cond_19
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    if-eqz v0, :cond_25

    .line 244
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    invoke-interface {v0}, Lcom/vlingo/client/core/recognizer/SRManager;->destroy()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    .line 247
    :cond_25
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;

    if-eqz v0, :cond_2c

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;

    .line 250
    :cond_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->initialized:Z
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 251
    monitor-exit p0

    return-void

    .line 235
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastGuttID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    invoke-interface {v0}, Lcom/vlingo/client/core/recognizer/SRManager;->getLastGuttID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxAudioDuration()I
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Recorder;->getMaxAudioDuration()I

    move-result v0

    return v0
.end method

.method public declared-synchronized init(Lcom/vlingo/client/core/recognizer/SRServerDetails;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V
    .registers 8
    .parameter "serverDetails"
    .parameter "cMeta"
    .parameter "sMeta"

    .prologue
    .line 199
    monitor-enter p0

    if-eqz p2, :cond_5

    if-nez p3, :cond_e

    .line 200
    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    .line 199
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/vlingo/client/core/recognizer/Recognizer;->setAutoEndpointingFromSettings()V

    .line 205
    iput-object p2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->clientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

    .line 206
    iput-object p3, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->softwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    .line 208
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;

    if-nez v0, :cond_2c

    .line 209
    new-instance v0, Lcom/vlingo/client/core/recognizer/Recorder;

    new-instance v1, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;

    invoke-direct {v1, p0}, Lcom/vlingo/client/core/recognizer/Recognizer$RecorderListenerImpl;-><init>(Lcom/vlingo/client/core/recognizer/Recognizer;)V

    invoke-direct {v0, v1}, Lcom/vlingo/client/core/recognizer/Recorder;-><init>(Lcom/vlingo/client/core/recognizer/RecorderListener;)V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;

    .line 210
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/recognizer/Recorder;->setTimings(Lcom/vlingo/client/core/recognizer/TimingRepository;)V

    .line 212
    :cond_2c
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    if-nez v0, :cond_46

    .line 213
    new-instance v0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;-><init>(Lcom/vlingo/client/core/net/ConnectionProvider;Lcom/vlingo/client/core/recognizer/TimingRepository;)V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    .line 214
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->requestListener:Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->clientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->softwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/vlingo/client/core/recognizer/SRManager;->init(Lcom/vlingo/client/core/recognizer/SRServerDetails;Lcom/vlingo/client/core/recognizer/SRRequestListener;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V

    .line 216
    :cond_46
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;

    if-nez v0, :cond_51

    .line 217
    new-instance v0, Lcom/vlingo/client/core/recognizer/Queue;

    invoke-direct {v0}, Lcom/vlingo/client/core/recognizer/Queue;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;

    .line 219
    :cond_51
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->notifier:Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;

    if-nez v0, :cond_61

    .line 220
    new-instance v0, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;

    invoke-direct {v0, p0}, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;-><init>(Lcom/vlingo/client/core/recognizer/Recognizer;)V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->notifier:Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;

    .line 221
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->notifier:Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Recognizer$Notifier;->start()V

    .line 223
    :cond_61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->initialized:Z
    :try_end_64
    .catchall {:try_start_e .. :try_end_64} :catchall_b

    .line 224
    monitor-exit p0

    return-void
.end method

.method notifyRecognizerListener(ILjava/lang/Object;)V
    .registers 6
    .parameter "state"
    .parameter "data"

    .prologue
    .line 442
    iget v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recognizerState:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_7

    .line 447
    :goto_6
    return-void

    .line 445
    :cond_7
    new-instance v0, Lcom/vlingo/client/core/recognizer/Recognizer$Notification;

    invoke-direct {v0, p0, p1, p2}, Lcom/vlingo/client/core/recognizer/Recognizer$Notification;-><init>(Lcom/vlingo/client/core/recognizer/Recognizer;ILjava/lang/Object;)V

    .line 446
    .local v0, n:Lcom/vlingo/client/core/recognizer/Recognizer$Notification;
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->notificationQueue:Lcom/vlingo/client/core/recognizer/Queue;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/recognizer/Queue;->add(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public prepare(Z)V
    .registers 3
    .parameter "useBluetoothIfAvailable"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/recognizer/Recorder;->prepareRecord(Z)V

    .line 268
    return-void
.end method

.method public readyForRecognition()Z
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    invoke-interface {v0}, Lcom/vlingo/client/core/recognizer/SRManager;->readyForRecognition()Z

    move-result v0

    return v0
.end method

.method public recognize(Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    .registers 5
    .parameter "audioFile"
    .parameter "fieldID"

    .prologue
    .line 833
    const-string v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 834
    invoke-static {p1}, Lcom/vlingo/client/core/util/FileUtils;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 837
    .local v0, data:[B
    :goto_c
    invoke-virtual {p0, v0, p2}, Lcom/vlingo/client/core/recognizer/Recognizer;->recognize([BLjava/lang/String;)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    move-result-object v1

    return-object v1

    .line 836
    .end local v0           #data:[B
    :cond_11
    invoke-static {p1}, Lcom/vlingo/client/core/util/FileUtils;->readResource(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0       #data:[B
    goto :goto_c
.end method

.method public recognize([BLjava/lang/String;)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    .registers 13
    .parameter "utterance"
    .parameter "fieldID"

    .prologue
    .line 897
    const-string v6, "pref.internal.detailed_timings"

    invoke-static {v6}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 898
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    invoke-virtual {v6}, Lcom/vlingo/client/core/recognizer/TimingRepository;->clear()V

    .line 899
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    invoke-virtual {v6}, Lcom/vlingo/client/core/recognizer/TimingRepository;->markTimeZero()V

    .line 902
    :cond_12
    new-instance v5, Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionSRContext;

    invoke-direct {v5, p2}, Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionSRContext;-><init>(Ljava/lang/String;)V

    .line 903
    .local v5, srContext:Lcom/vlingo/client/core/recognizer/SRContext;
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    invoke-interface {v6, v5}, Lcom/vlingo/client/core/recognizer/SRManager;->newRequest(Lcom/vlingo/client/core/recognizer/SRContext;)Lcom/vlingo/client/core/recognizer/SRRequest;

    move-result-object v4

    .line 904
    .local v4, request:Lcom/vlingo/client/core/recognizer/SRRequest;
    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->requestListener:Lcom/vlingo/client/core/recognizer/Recognizer$SRRequestListenerImpl;

    invoke-interface {v4, v6}, Lcom/vlingo/client/core/recognizer/SRRequest;->removeListener(Lcom/vlingo/client/core/recognizer/SRRequestListener;)V

    .line 905
    new-instance v0, Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;-><init>(Lcom/vlingo/client/core/recognizer/Recognizer;Lcom/vlingo/client/core/recognizer/Recognizer$1;)V

    .line 906
    .local v0, cannedListener:Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;
    invoke-interface {v4, v0}, Lcom/vlingo/client/core/recognizer/SRRequest;->addListener(Lcom/vlingo/client/core/recognizer/SRRequestListener;)V

    .line 907
    const/4 v6, 0x0

    array-length v7, p1

    invoke-interface {v4, p1, v6, v7}, Lcom/vlingo/client/core/recognizer/SRRequest;->sendAudio([BII)V

    .line 908
    invoke-interface {v4}, Lcom/vlingo/client/core/recognizer/SRRequest;->finish()V

    .line 909
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x222e0

    add-long v1, v6, v8

    .line 910
    .local v1, endTime:J
    :goto_3c
    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;->response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;->access$2900(Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    move-result-object v6

    if-nez v6, :cond_5b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-gez v6, :cond_5b

    .line 911
    const-wide/16 v6, 0x64

    :try_start_4c
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_3c

    :catch_50
    move-exception v3

    .line 912
    .local v3, ex:Ljava/lang/InterruptedException;
    const-string v6, "VLG_EXCEPTION"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 916
    .end local v3           #ex:Ljava/lang/InterruptedException;
    :cond_5b
    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;->response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;->access$2900(Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    move-result-object v6

    return-object v6
.end method

.method public recognizeAMR(Ljava/lang/String;Ljava/lang/String;I)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    .registers 14
    .parameter "audioFile"
    .parameter "fieldID"
    .parameter "duration"

    .prologue
    const/16 v7, 0x1f4

    const/4 v8, -0x1

    .line 844
    const/4 v5, 0x0

    .line 845
    .local v5, is:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 846
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 847
    .local v3, data:[B
    new-array v1, v7, [B

    .line 848
    .local v1, buf:[B
    const/4 v2, 0x0

    .line 851
    .local v2, bytesRead:I
    if-ne p3, v8, :cond_49

    .line 852
    :try_start_f
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_a2

    .line 853
    .end local v5           #is:Ljava/io/FileInputStream;
    .local v6, is:Ljava/io/FileInputStream;
    :goto_14
    :try_start_14
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-eq v2, v8, :cond_33

    .line 855
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_9f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_14

    .line 863
    :catch_1f
    move-exception v7

    move-object v5, v6

    .line 869
    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :goto_21
    if-eqz v5, :cond_27

    .line 871
    :try_start_23
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_64

    .line 875
    :goto_26
    const/4 v5, 0x0

    .line 877
    :cond_27
    if-eqz v0, :cond_2d

    .line 879
    :try_start_29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_6f

    .line 883
    :goto_2c
    const/4 v0, 0x0

    .line 885
    :cond_2d
    const/4 v1, 0x0

    .line 887
    :goto_2e
    invoke-virtual {p0, v3, p2}, Lcom/vlingo/client/core/recognizer/Recognizer;->recognize([BLjava/lang/String;)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    move-result-object v7

    return-object v7

    .line 858
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :cond_33
    :try_start_33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 859
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_9f
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_39} :catch_1f

    move-result-object v3

    move-object v5, v6

    .line 869
    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :goto_3b
    if-eqz v5, :cond_41

    .line 871
    :try_start_3d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_4e

    .line 875
    :goto_40
    const/4 v5, 0x0

    .line 877
    :cond_41
    if-eqz v0, :cond_47

    .line 879
    :try_start_43
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_59

    .line 883
    :goto_46
    const/4 v0, 0x0

    .line 885
    :cond_47
    const/4 v1, 0x0

    .line 886
    goto :goto_2e

    .line 861
    :cond_49
    :try_start_49
    invoke-static {p1, p3}, Lcom/vlingo/client/core/audio/AMRUtil;->readInAMRMaxFrames(Ljava/lang/String;I)[B
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_a2

    move-result-object v3

    goto :goto_3b

    .line 872
    :catch_4e
    move-exception v4

    .line 873
    .local v4, ex:Ljava/io/IOException;
    const-string v7, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 880
    .end local v4           #ex:Ljava/io/IOException;
    :catch_59
    move-exception v4

    .line 881
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v7, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 872
    .end local v4           #ex:Ljava/io/IOException;
    :catch_64
    move-exception v4

    .line 873
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v7, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 880
    .end local v4           #ex:Ljava/io/IOException;
    :catch_6f
    move-exception v4

    .line 881
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v7, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 869
    .end local v4           #ex:Ljava/io/IOException;
    :catchall_7a
    move-exception v7

    :goto_7b
    if-eqz v5, :cond_81

    .line 871
    :try_start_7d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_89

    .line 875
    :goto_80
    const/4 v5, 0x0

    .line 877
    :cond_81
    if-eqz v0, :cond_87

    .line 879
    :try_start_83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_94

    .line 883
    :goto_86
    const/4 v0, 0x0

    .line 885
    :cond_87
    const/4 v1, 0x0

    throw v7

    .line 872
    :catch_89
    move-exception v4

    .line 873
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v8, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 880
    .end local v4           #ex:Ljava/io/IOException;
    :catch_94
    move-exception v4

    .line 881
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v8, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 869
    .end local v4           #ex:Ljava/io/IOException;
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catchall_9f
    move-exception v7

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_7b

    .line 863
    :catch_a2
    move-exception v7

    goto/16 :goto_21
.end method

.method public sendStatistics(Lcom/vlingo/client/core/recognizer/SRStatistics;)V
    .registers 3
    .parameter "stats"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/recognizer/SRManager;->sendStatistics(Lcom/vlingo/client/core/recognizer/SRStatistics;)V

    .line 409
    return-void
.end method

.method public sendStatsCollection(Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;)V
    .registers 3
    .parameter "collection"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/recognizer/SRManager;->sendStatsCollection(Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;)V

    .line 413
    return-void
.end method

.method public setConnectionProvider(Lcom/vlingo/client/core/net/ConnectionProvider;)V
    .registers 3
    .parameter "connectionProvider"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;

    .line 173
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    if-eqz v0, :cond_b

    .line 174
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/recognizer/SRManager;->setConnectionProvider(Lcom/vlingo/client/core/net/ConnectionProvider;)V

    .line 176
    :cond_b
    return-void
.end method

.method public setMaxAudioDuration(I)V
    .registers 3
    .parameter "max"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/recognizer/Recorder;->setMaxAudioDuration(I)V

    .line 428
    return-void
.end method

.method public setServer(Lcom/vlingo/client/core/recognizer/SRServerDetails;)V
    .registers 3
    .parameter "serverDetails"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->srManager:Lcom/vlingo/client/core/recognizer/SRManager;

    invoke-interface {v0, p1}, Lcom/vlingo/client/core/recognizer/SRManager;->setServer(Lcom/vlingo/client/core/recognizer/SRServerDetails;)V

    .line 228
    return-void
.end method

.method public declared-synchronized startRecording(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/recognizer/RecognizerListener;)V
    .registers 5
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 281
    monitor-enter p0

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    :try_start_5
    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/SRContext;->getFieldID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    .line 282
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_11

    .line 281
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 284
    :cond_14
    :try_start_14
    iget-boolean v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->initialized:Z

    if-nez v0, :cond_1f

    .line 285
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/vlingo/client/core/recognizer/RecognizerListener;->notifyRecognitionState(ILjava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_11

    .line 320
    :cond_1d
    :goto_1d
    monitor-exit p0

    return-void

    .line 292
    :cond_1f
    :try_start_1f
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/Recognizer;->initRecTimings()V

    .line 294
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recContext:Lcom/vlingo/client/core/recognizer/SRContext;

    if-eqz v0, :cond_2d

    .line 295
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recContext:Lcom/vlingo/client/core/recognizer/SRContext;

    if-eq v0, p1, :cond_1d

    .line 303
    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/Recognizer;->abortRecognition()V

    .line 307
    :cond_2d
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recContext:Lcom/vlingo/client/core/recognizer/SRContext;

    .line 308
    iput-object p2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->listener:Lcom/vlingo/client/core/recognizer/RecognizerListener;

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->setState(I)V

    .line 319
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Recorder;->start()V
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_11

    goto :goto_1d
.end method

.method public declared-synchronized stopRecording()V
    .registers 7

    .prologue
    .line 334
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recContext:Lcom/vlingo/client/core/recognizer/SRContext;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3b

    if-nez v1, :cond_7

    .line 345
    :goto_5
    monitor-exit p0

    return-void

    .line 339
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/Recorder;->stop()V

    .line 340
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recContext:Lcom/vlingo/client/core/recognizer/SRContext;

    .line 342
    new-instance v1, Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;-><init>(Lcom/vlingo/client/core/recognizer/Recognizer;Lcom/vlingo/client/core/recognizer/Recognizer$1;)V

    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timeoutTask:Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;

    .line 343
    sget v1, Lcom/vlingo/client/core/recognizer/Recognizer;->MAX_TIMEOUT:I

    int-to-float v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->startTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;

    invoke-virtual {v3}, Lcom/vlingo/client/core/recognizer/Recorder;->getMaxAudioDuration()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 344
    .local v0, proportionalTimeout:I
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/Recognizer;->timeoutTask:Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;

    sget v3, Lcom/vlingo/client/core/recognizer/Recognizer;->MIN_TIMEOUT:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_3b

    goto :goto_5

    .line 334
    .end local v0           #proportionalTimeout:I
    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1
.end method
