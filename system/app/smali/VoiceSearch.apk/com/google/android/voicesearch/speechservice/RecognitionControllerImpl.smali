.class public Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;
.super Ljava/lang/Object;
.source "RecognitionControllerImpl.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/RecognitionController;
.implements Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$4;,
        Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;,
        Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    }
.end annotation


# static fields
.field private static DEBUG:Z


# instance fields
.field private final mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private mAddFullRecognitionResult:Z

.field private mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

.field private final mConnectionRetries:I

.field private final mContext:Landroid/content/Context;

.field private mDictationTimeoutMillis:I

.field private final mEndResultTimeoutMillis:I

.field private final mEndpointerListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

.field private mError:I

.field private final mExtraTotalResultTimeoutMillis:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mInProgressResponseQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFollowUpRecognition:Z

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private final mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

.field private mNetworkType:I

.field private mNoiseLevel:F

.field private mNotifyEndOfSpeech:Z

.field private mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

.field private final mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

.field private mRawAudio:Ljava/io/ByteArrayOutputStream;

.field private mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

.field private mResponse:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

.field private final mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

.field private mSnr:F

.field private mSpeechBeginTimeMillis:J

.field private mSpeechDetected:Z

.field private mSpeechRecordingTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

.field private mSpeechTimeoutMillis:I

.field private mState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

.field private final mStateChanged:Ljava/util/concurrent/locks/Condition;

.field private mUtteranceLengthMillis:J

.field private final mUtteranceLengthTimeoutFactor:F

.field private mWaitingForResultsTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/speechservice/ServerConnector;Lcom/google/android/voicesearch/speechservice/MicrophoneManager;)V
    .registers 11
    .parameter "context"
    .parameter "accountHelper"
    .parameter "serverConnector"
    .parameter "microphoneManager"

    .prologue
    const/high16 v5, -0x4080

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 127
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mStateChanged:Ljava/util/concurrent/locks/Condition;

    .line 132
    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mError:I

    .line 135
    sget-object v2, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STARTING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    .line 154
    iput-object v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 163
    iput-boolean v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechDetected:Z

    .line 168
    iput-object v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    .line 171
    iput-boolean v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mIsFollowUpRecognition:Z

    .line 183
    iput v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSnr:F

    .line 186
    iput v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNoiseLevel:F

    .line 188
    iput-boolean v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAddFullRecognitionResult:Z

    .line 193
    new-instance v2, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;

    invoke-direct {v2, p0, v4}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$EndpointerInputStreamListener;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mEndpointerListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    .line 219
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mUtteranceLengthMillis:J

    .line 229
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    .line 230
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 231
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 233
    .local v0, container:Lcom/google/android/voicesearch/VoiceSearchContainer;
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v1

    .line 234
    .local v1, helper:Lcom/google/android/voicesearch/GservicesHelper;
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getPersonalizationPrefManager()Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    .line 235
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->getClientReportLogger()Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    .line 236
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getSpeechTimeout()I

    move-result v2

    iput v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechTimeoutMillis:I

    .line 237
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getDictationTimeout()I

    move-result v2

    iput v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mDictationTimeoutMillis:I

    .line 238
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getConnectionRetries()I

    move-result v2

    iput v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mConnectionRetries:I

    .line 239
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getEndResultTimout()I

    move-result v2

    iput v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mEndResultTimeoutMillis:I

    .line 240
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getExtraTotalResultTimeout()I

    move-result v2

    iput v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mExtraTotalResultTimeoutMillis:I

    .line 241
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getUtteranceLengthTimoutFactor()F

    move-result v2

    iput v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mUtteranceLengthTimeoutFactor:F

    .line 242
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 243
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_8e

    .line 244
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Audio manager not found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :cond_8e
    iput-object p4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    .line 247
    iput-object p3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    .line 248
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v2, p0}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setCallback(Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;)V

    .line 249
    new-instance v2, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    const-string v3, "SpeechRecordingTimer"

    invoke-direct {v2, v3}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechRecordingTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    .line 250
    new-instance v2, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    const-string v3, "WaitingForResultsTimer"

    invoke-direct {v2, v3}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mWaitingForResultsTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    .line 251
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mInProgressResponseQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 254
    invoke-static {}, Lcom/google/android/voicesearch/speechservice/Utils;->loadClasses()V

    .line 255
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "RecognitionControllerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 256
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 257
    new-instance v2, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$1;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    .line 276
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechDetected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->stateIs(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->processAudioEndpointed()V

    return-void
.end method

.method static synthetic access$1302(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNoiseLevel:F

    return p1
.end method

.method static synthetic access$1402(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSnr:F

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->getState()Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->startRecognition(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/ServerConnector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Landroid/os/HandlerThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechBeginTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mExtraTotalResultTimeoutMillis:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/TimeoutTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechRecordingTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    return-object v0
.end method

.method private changeState(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 979
    :try_start_5
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeStateInternal(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    .line 981
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 983
    return-void

    .line 981
    :catchall_e
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private varargs changeStateIfNotIn(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z
    .registers 9
    .parameter "newState"
    .parameter "unexpectedStates"

    .prologue
    .line 1001
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1003
    move-object v0, p2

    .local v0, arr$:[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :try_start_6
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_8
    if-ge v1, v2, :cond_1a

    aget-object v3, v0, v1

    .line 1004
    .local v3, unexpectedState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_24

    if-ne v4, v3, :cond_17

    .line 1005
    const/4 v4, 0x0

    .line 1011
    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .end local v3           #unexpectedState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :goto_16
    return v4

    .line 1003
    .restart local v3       #unexpectedState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1008
    .end local v3           #unexpectedState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :cond_1a
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeStateInternal(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_24

    .line 1009
    const/4 v4, 0x1

    .line 1011
    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_16

    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_24
    move-exception v4

    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method private varargs changeStateIfOneOf(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z
    .registers 9
    .parameter "newState"
    .parameter "expectedStates"

    .prologue
    .line 986
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 988
    move-object v0, p2

    .local v0, arr$:[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :try_start_6
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_8
    if-ge v2, v3, :cond_1d

    aget-object v1, v0, v2

    .line 989
    .local v1, expectedState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    if-ne v4, v1, :cond_1a

    .line 990
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeStateInternal(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_24

    .line 991
    const/4 v4, 0x1

    .line 996
    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .end local v1           #expectedState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :goto_19
    return v4

    .line 988
    .restart local v1       #expectedState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 994
    .end local v1           #expectedState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :cond_1d
    const/4 v4, 0x0

    .line 996
    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_19

    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_24
    move-exception v4

    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method private changeStateInternal(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V
    .registers 5
    .parameter

    .prologue
    .line 1017
    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    .line 1019
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mStateChanged:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 1020
    return-void
.end method

.method private clearVariables()V
    .registers 3

    .prologue
    .line 479
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "RecognitionControllerImpl"

    const-string v1, "clearVariables"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_b
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 481
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    if-eqz v0, :cond_30

    .line 484
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "RecognitionControllerImpl"

    const-string v1, "#clearVariables - stopping audio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_20
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->stop()V

    .line 486
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_30

    const-string v0, "RecognitionControllerImpl"

    const-string v1, "#clearVariables - audio stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_30
    return-void
.end method

.method private getNetworkType(Landroid/net/NetworkInfo;)I
    .registers 5
    .parameter "networkInfo"

    .prologue
    const/4 v1, 0x1

    .line 449
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_8

    .line 462
    :goto_7
    return v1

    .line 452
    :cond_8
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 454
    .local v0, manager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    .line 462
    const/4 v1, -0x1

    goto :goto_7

    .line 456
    :pswitch_1b
    const/4 v1, 0x3

    goto :goto_7

    .line 459
    :pswitch_1d
    const/4 v1, 0x2

    goto :goto_7

    .line 454
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1d
        :pswitch_1b
    .end packed-switch
.end method

.method private getState()Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    .registers 3

    .prologue
    .line 964
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 966
    :try_start_5
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mState:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_d

    .line 968
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_d
    move-exception v0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private notifyError(IZ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x14

    .line 1028
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->getState()Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    move-result-object v0

    .line 1029
    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->CANCELED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    if-eq v0, v1, :cond_12

    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->PAUSED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    if-eq v0, v1, :cond_12

    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STOPPED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    if-ne v0, v1, :cond_39

    .line 1031
    :cond_12
    sget-boolean v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_38

    const-string v1, "RecognitionControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_38
    :goto_38
    return-void

    .line 1037
    :cond_39
    packed-switch p1, :pswitch_data_c4

    .line 1069
    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :goto_54
    :pswitch_54
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_70

    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_70
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    if-eqz v0, :cond_38

    .line 1074
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;->onError(IZ)V

    goto :goto_38

    .line 1039
    :pswitch_7a
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "ERROR_SPEECH_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setEndpointTriggerType(I)V

    .line 1041
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V

    goto :goto_54

    .line 1045
    :pswitch_8e
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "ERROR_NETWORK_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V

    goto :goto_54

    .line 1050
    :pswitch_9c
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "ERROR_AUDIO"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v0, v2}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V

    goto :goto_54

    .line 1055
    :pswitch_a9
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "ERROR_CLIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v0, v2}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V

    goto :goto_54

    .line 1060
    :pswitch_b6
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "ERROR_NETWORK"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V

    goto :goto_54

    .line 1037
    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_b6
        :pswitch_9c
        :pswitch_54
        :pswitch_a9
        :pswitch_7a
        :pswitch_54
    .end packed-switch
.end method

.method private onVoiceSearchResult(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 937
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    invoke-static {p1}, Lcom/google/android/voicesearch/TestPlatformLog;->logResults(Ljava/util/ArrayList;)V

    .line 939
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    if-eqz v0, :cond_10

    .line 940
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRawAudio:Ljava/io/ByteArrayOutputStream;

    iget-boolean v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAddFullRecognitionResult:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;->onVoiceSearchResults(Ljava/util/ArrayList;Ljava/io/ByteArrayOutputStream;Z)V

    .line 943
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRawAudio:Ljava/io/ByteArrayOutputStream;

    .line 948
    return-void
.end method

.method private prepareForRetry(Z)V
    .registers 5
    .parameter "isInWorkingState"

    .prologue
    .line 665
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->restartBuffersToBackup()V

    .line 666
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    if-eqz v1, :cond_11

    if-eqz p1, :cond_11

    .line 667
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;->onEvent(I)V

    .line 669
    :cond_11
    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STARTING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeState(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V

    .line 670
    const-string v1, "RecognitionControllerImpl"

    const-string v2, "Connection error occurred, retrying (resending data if needed)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-wide/16 v1, 0x3e8

    :try_start_1f
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_23

    .line 676
    :goto_22
    return-void

    .line 673
    :catch_23
    move-exception v0

    .line 674
    .local v0, e1:Ljava/lang/InterruptedException;
    const-string v1, "RecognitionControllerImpl"

    const-string v2, "Interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method private processApiResult(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)I
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 884
    sget-boolean v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_d

    const-string v1, "RecognitionControllerImpl"

    const-string v2, "process API results"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_d
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/voicesearch/speechservice/Utils;->parseRawRecognitionResult(Landroid/content/Context;Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Ljava/util/ArrayList;

    move-result-object v1

    .line 888
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 889
    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onVoiceSearchResult(Ljava/util/ArrayList;)V

    .line 890
    const/4 v0, 0x0

    .line 895
    :goto_23
    return v0

    .line 892
    :cond_24
    const-string v1, "RecognitionControllerImpl"

    const-string v2, "Failed to parse recognition results in server response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onError(I)V

    .line 894
    invoke-direct {p0, v3, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V

    goto :goto_23
.end method

.method private processAudioEndpointed()V
    .registers 5

    .prologue
    .line 1089
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->stateIs(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1103
    :cond_8
    :goto_8
    return-void

    .line 1093
    :cond_9
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1095
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechBeginTimeMillis:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mUtteranceLengthMillis:J

    .line 1096
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setEndOfSpeech()V

    .line 1097
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    if-eqz v0, :cond_8

    .line 1098
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;->onEndOfSpeech()V

    goto :goto_8
.end method

.method private processDictationResult(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)I
    .registers 7
    .parameter "recognizeResponse"

    .prologue
    const/4 v3, 0x0

    .line 860
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasRecognitionResult()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 861
    const/4 v0, 0x0

    .line 863
    .local v0, alternates:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasAlternates()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 864
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getSpanList()Ljava/util/List;

    move-result-object v0

    .line 867
    :cond_1e
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getUtteranceId()Ljava/lang/String;

    move-result-object v1

    .line 868
    .local v1, id:Ljava/lang/String;
    const/4 v2, 0x0

    .line 869
    .local v2, text:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesisCount()I

    move-result v4

    if-lez v4, :cond_3d

    .line 870
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getSentence()Ljava/lang/String;

    move-result-object v2

    .line 872
    :cond_3d
    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    invoke-interface {v4, v1, v2, v0}, Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;->onResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 875
    .end local v0           #alternates:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #text:Ljava/lang/String;
    :goto_42
    return v3

    :cond_43
    const/4 v3, 0x1

    goto :goto_42
.end method

.method private processInProgressRecognizeResponse(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V
    .registers 11
    .parameter "responseMessage"

    .prologue
    const/4 v8, 0x0

    .line 618
    invoke-static {p1}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->verifyInProgressRecognizeResponse(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 619
    const-string v6, "RecognitionControllerImpl"

    const-string v7, "Response sent by the server is not correct"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_e
    :goto_e
    return-void

    .line 623
    :cond_f
    sget-object v6, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v6}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    .line 626
    .local v4, recognizeResponse:Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasRecognitionResult()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 627
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v3

    .line 629
    .local v3, recognitionResult:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    const/4 v0, 0x0

    .line 630
    .local v0, alternates:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasAlternates()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 631
    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getSpanList()Ljava/util/List;

    move-result-object v0

    .line 634
    :cond_30
    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getUtteranceId()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, id:Ljava/lang/String;
    const-string v5, ""

    .line 637
    .local v5, text:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getStatus()Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    move-result-object v6

    sget-object v7, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SUCCESS:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    if-ne v6, v7, :cond_56

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesisCount()I

    move-result v6

    if-lez v6, :cond_56

    invoke-virtual {v3, v8}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->hasSentence()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 640
    invoke-virtual {v3, v8}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getSentence()Ljava/lang/String;

    move-result-object v5

    .line 645
    :cond_56
    const/4 v2, 0x0

    .line 646
    .local v2, partialResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;>;"
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasPartialResult()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 647
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getPartialResult()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getPartList()Ljava/util/List;

    move-result-object v2

    .line 650
    :cond_65
    iget-object v6, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    invoke-interface {v6, v1, v5, v0, v2}, Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;->onInProgressResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_e

    .line 654
    .end local v0           #alternates:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/common/Alternates$AlternateSpan;>;"
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #partialResults:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;>;"
    .end local v3           #recognitionResult:Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .end local v5           #text:Ljava/lang/String;
    :cond_6b
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasPartialResult()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 655
    iget-object v6, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getPartialResult()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getPartList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;->onInProgressPartialResults(Ljava/util/List;)V

    goto :goto_e
.end method

.method private processResponse()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v1, 0x1

    .line 808
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mResponse:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getStatus()Lcom/google/protos/speech/service/SpeechService$Status;

    move-result-object v2

    .line 809
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->CANCELED:Lcom/google/protos/speech/service/SpeechService$Status;

    if-ne v2, v0, :cond_19

    .line 810
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "Request canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-direct {p0, v6, v7}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V

    .line 812
    const/4 v0, 0x2

    .line 850
    :goto_18
    return v0

    .line 814
    :cond_19
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Status;->PREPROCESSOR_ERROR:Lcom/google/protos/speech/service/SpeechService$Status;

    if-ne v2, v0, :cond_29

    .line 815
    const-string v0, "RecognitionControllerImpl"

    const-string v2, "Server reported preprocessor error"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-direct {p0, v6, v7}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V

    move v0, v1

    .line 817
    goto :goto_18

    .line 820
    :cond_29
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mResponse:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0, v3}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    .line 823
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mPersonalizationPrefManager:Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;

    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    invoke-static {v0, v3, v4, v5}, Lcom/google/android/voicesearch/speechservice/Utils;->checkAuthTokenStatus(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/android/voicesearch/personalization/PersonalizationPrefManager;Lcom/google/android/voicesearch/util/AccountHelper;)V

    .line 826
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$Status;->OK:Lcom/google/protos/speech/service/SpeechService$Status;

    if-ne v2, v3, :cond_46

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasRecognitionResult()Z

    move-result v2

    if-nez v2, :cond_69

    .line 827
    :cond_46
    const-string v0, "RecognitionControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad response from teh server:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mResponse:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    invoke-static {v3}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->asShortString(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-direct {p0, v6, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V

    move v0, v1

    .line 829
    goto :goto_18

    .line 831
    :cond_69
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v2

    .line 833
    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getStatus()Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    move-result-object v2

    .line 834
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->NO_MATCH:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    if-ne v2, v3, :cond_82

    .line 835
    const-string v0, "RecognitionControllerImpl"

    const-string v2, "no match found"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/4 v0, 0x7

    invoke-direct {p0, v0, v7}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V

    move v0, v1

    .line 837
    goto :goto_18

    .line 839
    :cond_82
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SUCCESS:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    if-eq v2, v3, :cond_a4

    .line 840
    const-string v0, "RecognitionControllerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server reported error SpeechServiceMessageTypes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-direct {p0, v6, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V

    move v0, v1

    .line 842
    goto/16 :goto_18

    .line 845
    :cond_a4
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isIntentApiMode()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 846
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->processApiResult(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)I

    move-result v0

    goto/16 :goto_18

    .line 847
    :cond_b2
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isDictationMode()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 848
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->processDictationResult(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)I

    move-result v0

    goto/16 :goto_18

    .line 850
    :cond_c0
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->processVoiceSearchResult(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)I

    move-result v0

    goto/16 :goto_18
.end method

.method private processVoiceSearchResult(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)I
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    .line 907
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasResponse()Z

    move-result v0

    if-nez v0, :cond_17

    .line 908
    const-string v0, "RecognitionControllerImpl"

    const-string v2, "No ApplicationData found in response"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-virtual {p0, v6}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onError(I)V

    .line 910
    invoke-direct {p0, v6, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V

    move v0, v1

    .line 926
    :goto_16
    return v0

    .line 914
    :cond_17
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v2

    .line 915
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mIsFollowUpRecognition:Z

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    .line 916
    :goto_20
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mClientReportLogger:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-static {v3, v2, v0, v4, v5}, Lcom/google/android/voicesearch/speechservice/Utils;->parseApplicationData(Landroid/content/Context;Lcom/google/protos/speech/service/SpeechService$ApplicationData;Lcom/google/android/voicesearch/speechservice/AudioBuffer;Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Ljava/util/ArrayList;

    move-result-object v0

    .line 918
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 919
    :cond_32
    const-string v0, "RecognitionControllerImpl"

    const-string v2, "Failed to parse application data in server response"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual {p0, v6}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onError(I)V

    .line 921
    invoke-direct {p0, v6, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V

    move v0, v1

    .line 922
    goto :goto_16

    .line 915
    :cond_41
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    goto :goto_20

    .line 925
    :cond_44
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onVoiceSearchResult(Ljava/util/ArrayList;)V

    .line 926
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private recordAndSend()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;
        }
    .end annotation

    .prologue
    .line 533
    const/4 v1, 0x0

    .line 535
    .local v1, endOfData:Z
    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v5}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isDictationMode()Z

    move-result v5

    if-eqz v5, :cond_72

    iget v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mDictationTimeoutMillis:I

    int-to-long v3, v5

    .line 536
    .local v3, timeout:J
    :goto_c
    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechRecordingTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->set(J)V

    .line 538
    sget-boolean v5, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v5, :cond_1c

    const-string v5, "RecognitionControllerImpl"

    const-string v6, "recordAndSend()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_1c
    const/4 v2, 0x0

    .line 542
    .local v2, speechTimeout:Z
    :cond_1d
    sget-object v5, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-direct {p0, v5}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->stateIs(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v5

    if-eqz v5, :cond_78

    if-nez v1, :cond_78

    if-nez v2, :cond_78

    .line 543
    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechRecordingTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    invoke-virtual {v5}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->remaining()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_76

    const/4 v2, 0x1

    .line 546
    :goto_36
    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    invoke-virtual {v5}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 547
    .local v0, bytes:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_43

    .line 548
    const/4 v1, 0x1

    .line 551
    :cond_43
    iget-boolean v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNotifyEndOfSpeech:Z

    if-nez v5, :cond_49

    if-eqz v2, :cond_59

    .line 552
    :cond_49
    iget-boolean v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechDetected:Z

    iget-boolean v6, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNotifyEndOfSpeech:Z

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechDetected:Z

    .line 553
    const/4 v1, 0x1

    .line 554
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->processAudioEndpointed()V

    .line 555
    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    invoke-interface {v5}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->stopListening()V

    .line 558
    :cond_59
    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v5, v0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->postAudioChunk(Ljava/nio/ByteBuffer;Z)V

    .line 561
    :goto_5e
    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mInProgressResponseQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 562
    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mInProgressResponseQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    invoke-direct {p0, v5}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->processInProgressRecognizeResponse(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V

    goto :goto_5e

    .line 535
    .end local v0           #bytes:Ljava/nio/ByteBuffer;
    .end local v2           #speechTimeout:Z
    .end local v3           #timeout:J
    :cond_72
    iget v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechTimeoutMillis:I

    int-to-long v3, v5

    goto :goto_c

    .line 543
    .restart local v2       #speechTimeout:Z
    .restart local v3       #timeout:J
    :cond_76
    const/4 v2, 0x0

    goto :goto_36

    .line 569
    :cond_78
    iget-boolean v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechDetected:Z

    if-eqz v5, :cond_83

    .line 570
    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setEndpointTriggerType(I)V

    .line 579
    :cond_82
    :goto_82
    return-void

    .line 574
    :cond_83
    sget-object v5, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-direct {p0, v5}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->stateIs(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v5

    if-eqz v5, :cond_82

    if-eqz v2, :cond_82

    .line 575
    const-string v5, "RecognitionControllerImpl"

    const-string v6, "Max recording timeout client side"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onError(I)V

    goto :goto_82
.end method

.method private resetRequest()V
    .registers 3

    .prologue
    .line 358
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "RecognitionControllerImpl"

    const-string v1, "resetParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mResponse:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    .line 360
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mInProgressResponseQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSpeechDetected:Z

    .line 362
    return-void
.end method

.method private runRecognitionMainLoop()V
    .registers 16

    .prologue
    const/4 v10, 0x3

    const/4 v14, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v13, 0x0

    .line 687
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v13, v10, v14}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 693
    .local v4, startTimestamp:J
    const/4 v1, 0x0

    .line 694
    .local v1, isInWorkingState:Z
    :try_start_f
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->resetRequest()V

    .line 695
    const/4 v2, 0x0

    .local v2, retry:I
    :goto_13
    iget v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mConnectionRetries:I

    if-gt v2, v7, :cond_f7

    .line 696
    sget-boolean v7, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v7, :cond_33

    const-string v7, "RecognitionControllerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retry #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_33
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget v10, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNetworkType:I

    invoke-virtual {v7, v10}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setNetworkType(I)V

    .line 699
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget v10, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mSnr:F

    invoke-virtual {v7, v10}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setSnr(F)V

    .line 700
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget v10, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNoiseLevel:F

    invoke-virtual {v7, v10}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setNoiseLevel(F)V

    .line 703
    sget-object v7, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v11, 0x0

    sget-object v12, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STARTING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v12, v10, v11

    invoke-direct {p0, v7, v10}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeStateIfOneOf(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 704
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    iget-object v10, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-interface {v7, v2, v4, v5, v10}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->connect(IJLcom/google/android/voicesearch/speechservice/RecognitionParameters;)V

    .line 705
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->recordAndSend()V

    .line 707
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v7}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isDictationMode()Z

    move-result v7

    if-eqz v7, :cond_8a

    iget v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mError:I

    const/4 v10, 0x6

    if-ne v7, v10, :cond_8a

    .line 712
    iget v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mError:I

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V

    .line 713
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    const/16 v8, 0x14

    invoke-interface {v7, v8}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V
    :try_end_7c
    .catchall {:try_start_f .. :try_end_7c} :catchall_135
    .catch Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException; {:try_start_f .. :try_end_7c} :catch_a2
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_7c} :catch_10f

    .line 785
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v13}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 786
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v7}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->sendClientReports()V

    .line 787
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->releaseNetworking()V

    .line 789
    .end local v2           #retry:I
    :goto_89
    return-void

    .line 717
    .restart local v2       #retry:I
    :cond_8a
    const/4 v1, 0x1

    .line 718
    :try_start_8b
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->waitForFinalResult()V

    .line 720
    :goto_8e
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mInProgressResponseQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c8

    .line 721
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mInProgressResponseQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    invoke-direct {p0, v7}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->processInProgressRecognizeResponse(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V
    :try_end_a1
    .catchall {:try_start_8b .. :try_end_a1} :catchall_135
    .catch Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException; {:try_start_8b .. :try_end_a1} :catch_a2
    .catch Ljava/lang/InterruptedException; {:try_start_8b .. :try_end_a1} :catch_10f

    goto :goto_8e

    .line 776
    .end local v2           #retry:I
    :catch_a2
    move-exception v0

    .line 777
    .local v0, e:Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;
    :try_start_a3
    const-string v7, "RecognitionControllerImpl"

    const-string v8, "Audio capture error"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onError(I)V

    .line 779
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V
    :try_end_b3
    .catchall {:try_start_a3 .. :try_end_b3} :catchall_135

    .line 785
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v13}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 786
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v7}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->sendClientReports()V

    .line 787
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->releaseNetworking()V

    goto :goto_89

    .line 724
    .end local v0           #e:Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException;
    .restart local v2       #retry:I
    :cond_c1
    :try_start_c1
    const-string v7, "RecognitionControllerImpl"

    const-string v10, "Not in STARTING state"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_c8
    const/4 v3, 0x0

    .line 727
    .local v3, shouldRetry:Z
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->getState()Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    move-result-object v6

    .line 728
    .local v6, state:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    const-string v7, "RecognitionControllerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Final state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    sget-object v7, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$4;->$SwitchMap$com$google$android$voicesearch$speechservice$RecognitionControllerImpl$State:[I

    invoke-virtual {v6}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->ordinal()I

    move-result v10

    aget v7, v7, v10

    packed-switch v7, :pswitch_data_19a

    .line 770
    :goto_f0
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v7}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->scheduleSendClientReport()V
    :try_end_f5
    .catchall {:try_start_c1 .. :try_end_f5} :catchall_135
    .catch Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException; {:try_start_c1 .. :try_end_f5} :catch_a2
    .catch Ljava/lang/InterruptedException; {:try_start_c1 .. :try_end_f5} :catch_10f

    .line 771
    if-nez v3, :cond_192

    .line 785
    .end local v3           #shouldRetry:Z
    .end local v6           #state:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :cond_f7
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v13}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 786
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v7}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->sendClientReports()V

    .line 787
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->releaseNetworking()V

    goto :goto_89

    .line 731
    .restart local v3       #shouldRetry:Z
    .restart local v6       #state:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :pswitch_105
    :try_start_105
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->processResponse()I

    move-result v10

    invoke-interface {v7, v10}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V
    :try_end_10e
    .catchall {:try_start_105 .. :try_end_10e} :catchall_135
    .catch Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException; {:try_start_105 .. :try_end_10e} :catch_a2
    .catch Ljava/lang/InterruptedException; {:try_start_105 .. :try_end_10e} :catch_10f

    goto :goto_f0

    .line 780
    .end local v2           #retry:I
    .end local v3           #shouldRetry:Z
    .end local v6           #state:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :catch_10f
    move-exception v0

    .line 781
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_110
    const-string v7, "RecognitionControllerImpl"

    const-string v8, "an unexpected exception occurred"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onError(I)V

    .line 783
    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V
    :try_end_120
    .catchall {:try_start_110 .. :try_end_120} :catchall_135

    .line 785
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v13}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 786
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v7}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->sendClientReports()V

    .line 787
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->releaseNetworking()V

    goto/16 :goto_89

    .line 737
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v2       #retry:I
    .restart local v3       #shouldRetry:Z
    .restart local v6       #state:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :pswitch_12f
    :try_start_12f
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v7}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->cancelRecognition()V
    :try_end_134
    .catchall {:try_start_12f .. :try_end_134} :catchall_135
    .catch Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException; {:try_start_12f .. :try_end_134} :catch_a2
    .catch Ljava/lang/InterruptedException; {:try_start_12f .. :try_end_134} :catch_10f

    goto :goto_f0

    .line 785
    .end local v2           #retry:I
    .end local v3           #shouldRetry:Z
    .end local v6           #state:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :catchall_135
    move-exception v7

    iget-object v8, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v13}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 786
    iget-object v8, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v8}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->sendClientReports()V

    .line 787
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->releaseNetworking()V

    throw v7

    .line 742
    .restart local v2       #retry:I
    .restart local v3       #shouldRetry:Z
    .restart local v6       #state:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;
    :pswitch_144
    :try_start_144
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    const/4 v10, 0x2

    invoke-interface {v7, v10}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V

    .line 744
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    invoke-interface {v7}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->cancelRecognition()V

    goto :goto_f0

    .line 749
    :pswitch_150
    iget v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mConnectionRetries:I

    if-ge v2, v7, :cond_15b

    iget v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mError:I

    const/4 v10, 0x6

    if-eq v7, v10, :cond_15b

    .line 751
    const/4 v3, 0x1

    goto :goto_f0

    .line 753
    :cond_15b
    iget v10, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mError:I

    iget v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mError:I

    if-eq v7, v14, :cond_16a

    iget v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mError:I

    if-eq v7, v9, :cond_16a

    iget v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mError:I

    const/4 v11, 0x4

    if-ne v7, v11, :cond_16f

    :cond_16a
    move v7, v9

    :goto_16b
    invoke-direct {p0, v10, v7}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V

    goto :goto_f0

    :cond_16f
    move v7, v8

    goto :goto_16b

    .line 764
    :pswitch_171
    const-string v7, "RecognitionControllerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mServerConnector:Lcom/google/android/voicesearch/speechservice/ServerConnector;

    const/16 v10, 0x14

    invoke-interface {v7, v10}, Lcom/google/android/voicesearch/speechservice/ServerConnector;->setRequestStatus(I)V

    goto/16 :goto_f0

    .line 774
    :cond_192
    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->prepareForRetry(Z)V
    :try_end_195
    .catchall {:try_start_144 .. :try_end_195} :catchall_135
    .catch Lcom/google/android/voicesearch/speechservice/AudioBuffer$AudioException; {:try_start_144 .. :try_end_195} :catch_a2
    .catch Ljava/lang/InterruptedException; {:try_start_144 .. :try_end_195} :catch_10f

    .line 695
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_13

    .line 729
    nop

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_105
        :pswitch_12f
        :pswitch_144
        :pswitch_144
        :pswitch_150
        :pswitch_171
        :pswitch_171
    .end packed-switch
.end method

.method private startRecognition(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)V
    .registers 10
    .parameter "recParams"
    .parameter "replayAudio"

    .prologue
    const/4 v6, 0x0

    .line 372
    const-string v1, "RecognitionControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRecognition("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    sget-object v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STARTING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeState(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V

    .line 374
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    invoke-virtual {p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getEndpointerParam()Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->setEndpointerParams(Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;)V

    .line 375
    iput-boolean v6, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNotifyEndOfSpeech:Z

    .line 376
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->updateNetwork()Z

    move-result v1

    if-nez v1, :cond_44

    .line 377
    const-string v1, "RecognitionControllerImpl"

    const-string v2, "No active network found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v1, 0x2

    invoke-direct {p0, v1, v6}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V

    .line 379
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->clearVariables()V

    .line 425
    :goto_43
    return-void

    .line 385
    :cond_44
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    if-eqz v1, :cond_6e

    .line 386
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v1, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->update(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Z

    .line 392
    :goto_4d
    if-eqz p2, :cond_71

    .line 393
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->restartBuffersToBackup()V

    .line 421
    :goto_54
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    invoke-interface {v2}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->getEncoding()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setAudioEncoding(I)V

    .line 422
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    invoke-interface {v2}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->getSamplingRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setAudioSampleRate(I)V

    .line 424
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->runRecognitionMainLoop()V

    goto :goto_43

    .line 388
    :cond_6e
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    goto :goto_4d

    .line 395
    :cond_71
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    if-eqz v1, :cond_81

    .line 396
    const-string v1, "RecognitionControllerImpl"

    const-string v2, "The audio buffer should be already closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;->stop()V

    .line 400
    :cond_81
    const-string v1, "RecognitionControllerImpl"

    const-string v2, "New mic stream."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :try_start_88
    sget-boolean v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_93

    const-string v1, "RecognitionControllerImpl"

    const-string v2, "Opening a new mic stream."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_93
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mEndpointerListener:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;

    iget v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNetworkType:I

    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRawAudio:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isDictationMode()Z

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->setupMicrophone(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;ILjava/io/ByteArrayOutputStream;Z)Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    .line 405
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->getState()Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    move-result-object v1

    sget-object v2, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STARTING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    if-eq v1, v2, :cond_c1

    .line 409
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->clearVariables()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_b0} :catch_b1

    goto :goto_43

    .line 413
    :catch_b1
    move-exception v0

    .line 414
    .local v0, e:Ljava/io/IOException;
    const-string v1, "RecognitionControllerImpl"

    const-string v2, "Audio error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    const/4 v1, 0x3

    invoke-direct {p0, v1, v6}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V

    .line 416
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->clearVariables()V

    goto :goto_43

    .line 412
    .end local v0           #e:Ljava/io/IOException;
    :cond_c1
    :try_start_c1
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;->onEvent(I)V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c7} :catch_b1

    goto :goto_54
.end method

.method private stateIs(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z
    .registers 3
    .parameter "state"

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->getState()Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    move-result-object v0

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private updateNetwork()Z
    .registers 6

    .prologue
    .line 434
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 436
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 437
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_18

    .line 438
    :cond_16
    const/4 v2, 0x0

    .line 442
    :goto_17
    return v2

    .line 440
    :cond_18
    sget-boolean v2, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_34

    const-string v2, "RecognitionControllerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_34
    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->getNetworkType(Landroid/net/NetworkInfo;)I

    move-result v2

    iput v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNetworkType:I

    .line 442
    const/4 v2, 0x1

    goto :goto_17
.end method

.method private waitForFinalResult()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 588
    sget-boolean v2, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "RecognitionControllerImpl"

    const-string v3, "waitForFinalResults()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_b
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mWaitingForResultsTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    iget v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mEndResultTimeoutMillis:I

    int-to-long v3, v3

    iget v5, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mUtteranceLengthTimeoutFactor:F

    iget-wide v6, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mUtteranceLengthMillis:J

    long-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->set(J)V

    .line 591
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 593
    :try_start_20
    const-string v2, "RecognitionControllerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Will wait for final result for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mWaitingForResultsTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->remaining()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :goto_3e
    sget-object v2, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->stateIs(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 596
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mWaitingForResultsTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->remaining()J

    move-result-wide v0

    .line 597
    .local v0, remaining:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_63

    .line 598
    const-string v2, "RecognitionControllerImpl"

    const-string v3, "Recognition request timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->onError(I)V
    :try_end_5d
    .catchall {:try_start_20 .. :try_end_5d} :catchall_6b

    .line 605
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 607
    .end local v0           #remaining:J
    :goto_62
    return-void

    .line 602
    .restart local v0       #remaining:J
    :cond_63
    :try_start_63
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mStateChanged:Ljava/util/concurrent/locks/Condition;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_6b

    goto :goto_3e

    .line 605
    .end local v0           #remaining:J
    :catchall_6b
    move-exception v2

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :cond_72
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_62
.end method


# virtual methods
.method public cancel(Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 351
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "RecognitionControllerImpl"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_b
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    .line 353
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->CANCELED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeState(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V

    .line 355
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 511
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "RecognitionControllerImpl"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->releaseNetworking()V

    .line 514
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$3;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$3;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 520
    return-void
.end method

.method public notifyAudioEndpointed()V
    .registers 2

    .prologue
    .line 1082
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mNotifyEndOfSpeech:Z

    .line 1083
    return-void
.end method

.method public onError(I)V
    .registers 6
    .parameter

    .prologue
    .line 956
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->ERROR:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeStateIfOneOf(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 957
    iput p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mError:I

    .line 961
    :goto_17
    return-void

    .line 959
    :cond_18
    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public onInProgressResponse(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 611
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 612
    const-string v0, "RecognitionControllerImpl"

    const-string v1, "onInProgressResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_b
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mInProgressResponseQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 615
    return-void
.end method

.method public onIsAlive()V
    .registers 7

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mWaitingForResultsTimer:Lcom/google/android/voicesearch/speechservice/TimeoutTimer;

    iget v1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mEndResultTimeoutMillis:I

    int-to-long v1, v1

    iget v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mUtteranceLengthTimeoutFactor:F

    iget-wide v4, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mUtteranceLengthMillis:J

    long-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/TimeoutTimer;->set(J)V

    .line 933
    return-void
.end method

.method public onResponse(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V
    .registers 6
    .parameter "response"

    .prologue
    .line 793
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mResponse:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    .line 795
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->RECOGNIZING:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeStateIfOneOf(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 796
    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Final response received in state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->getState()Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_2e
    return-void
.end method

.method public releaseMicrophone()V
    .registers 4

    .prologue
    .line 469
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release, mAudioBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mAudioBuffer:Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1e
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->clearVariables()V

    .line 472
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_32

    const-string v0, "RecognitionControllerImpl"

    const-string v1, "release completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_32
    return-void
.end method

.method public releaseNetworking()V
    .registers 5

    .prologue
    .line 495
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->CANCELED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STOPPED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeStateIfNotIn(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;[Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)Z

    .line 496
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string v0, "RecognitionControllerImpl"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_18
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_21

    .line 507
    :goto_20
    return-void

    .line 501
    :cond_21
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$2;-><init>(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_20
.end method

.method public replayLastRecognition(Landroid/content/Intent;Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V
    .registers 9
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 310
    sget-boolean v3, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_26

    const-string v3, "RecognitionControllerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retryLast, intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_26
    const/4 v1, 0x0

    .line 314
    .local v1, recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    :try_start_27
    new-instance v2, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;-><init>(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_2e} :catch_46

    .line 322
    .end local v1           #recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    .local v2, recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    .line 323
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 324
    sget-boolean v3, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_44

    const-string v3, "RecognitionControllerImpl"

    const-string v4, "the handler has MSG_START_LISTENING message, ignoring..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    move-object v1, v2

    .line 331
    .end local v2           #recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    .restart local v1       #recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    :goto_45
    return-void

    .line 315
    :catch_46
    move-exception v0

    .line 316
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V

    .line 317
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->clearVariables()V

    .line 318
    const-string v3, "RecognitionControllerImpl"

    const-string v4, "Bad parameters for recognition, calling package missing?"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 330
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v1           #recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    .restart local v2       #recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    :cond_57
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    move-object v1, v2

    .line 331
    .end local v2           #recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    .restart local v1       #recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    goto :goto_45
.end method

.method public startListening(Landroid/content/Intent;Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V
    .registers 8
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 282
    .local v1, recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    :try_start_1
    new-instance v2, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;-><init>(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_8} :catch_d

    .line 289
    .end local v1           #recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    .local v2, recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    invoke-virtual {p0, v2, p2}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->startListening(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V

    move-object v1, v2

    .line 290
    .end local v2           #recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    .restart local v1       #recParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    :goto_c
    return-void

    .line 283
    :catch_d
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "RecognitionControllerImpl"

    const-string v4, "Bad parameters for recognition, calling package missing?"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->notifyError(IZ)V

    .line 286
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->clearVariables()V

    goto :goto_c
.end method

.method public startListening(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V
    .registers 7
    .parameter "recParams"
    .parameter "listener"

    .prologue
    const/4 v3, 0x1

    .line 295
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_27

    const-string v0, "RecognitionControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startListening, intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_27
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    .line 298
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 299
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_3c

    const-string v0, "RecognitionControllerImpl"

    const-string v1, "the handler has MSG_START_LISTENING message, ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_3c
    :goto_3c
    return-void

    .line 305
    :cond_3d
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3c
.end method

.method public stopListening(Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 335
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "RecognitionControllerImpl"

    const-string v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_b
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    .line 337
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mMicrophoneManager:Lcom/google/android/voicesearch/speechservice/MicrophoneManager;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/MicrophoneManager;->stopListening()V

    .line 339
    return-void
.end method

.method public stopRecognition(Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 343
    sget-boolean v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "RecognitionControllerImpl"

    const-string v1, "stopRecognition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_b
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mRecognitionListener:Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;

    .line 345
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    sget-object v0, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;->STOPPED:Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl;->changeState(Lcom/google/android/voicesearch/speechservice/RecognitionControllerImpl$State;)V

    .line 347
    return-void
.end method
