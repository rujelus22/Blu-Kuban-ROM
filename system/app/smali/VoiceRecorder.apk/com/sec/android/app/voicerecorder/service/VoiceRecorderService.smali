.class public Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;
.super Landroid/app/Service;
.source "VoiceRecorderService.java"

# interfaces
.implements Lcom/sec/android/app/voicerecorder/util/VRSettings$OnVRSettingChangedObserver;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;,
        Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;
    }
.end annotation


# static fields
.field private static mLongKeyCnt:I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private TempLongKeyCnt:I

.field private headsetConnected:Z

.field private isPlayerReceiverRegisterd:Z

.field private isStorageReceiverRegisterd:Z

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioFormat:Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBinder:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPlayingId:J

.field private mDurationUpdated:I

.field private mEventHandler:Landroid/os/Handler;

.field private mFileName:Ljava/lang/String;

.field private mFileSaveHiddenPath:Ljava/lang/String;

.field private mFileSavePath:Ljava/lang/String;

.field private mFileSize:I

.field private mIsDurationLimited:Z

.field private mLastSavedFileUri:Landroid/net/Uri;

.field private mMediaButtonProcessReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

.field private mMediaRecorderState:I

.field private mMemoryCheckHandler:Landroid/os/Handler;

.field private mMemoryCheckThread:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMute:Landroid/os/Handler;

.field private mPausedByCall:Z

.field private mPlayerReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordedDurationMSec:I

.field private mSelectedFileName:Ljava/lang/String;

.field private mStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

.field private mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 113
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mLongKeyCnt:I

    .line 1496
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 84
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    .line 85
    iput v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mRecordedDurationMSec:I

    .line 93
    iput v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSize:I

    .line 96
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mIsDurationLimited:Z

    .line 111
    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaButtonProcessReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iput v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->TempLongKeyCnt:I

    .line 251
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlayerReceiverRegisterd:Z

    .line 253
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->headsetConnected:Z

    .line 255
    new-instance v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$2;-><init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mPlayerReceiver:Landroid/content/BroadcastReceiver;

    .line 322
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isStorageReceiverRegisterd:Z

    .line 324
    new-instance v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$3;-><init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 401
    new-instance v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$4;-><init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMemoryCheckHandler:Landroid/os/Handler;

    .line 929
    iput v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mDurationUpdated:I

    .line 990
    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mPausedByCall:Z

    .line 992
    new-instance v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$5;-><init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1042
    new-instance v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$6;-><init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mEventHandler:Landroid/os/Handler;

    .line 1281
    new-instance v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$7;-><init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMute:Landroid/os/Handler;

    .line 1498
    new-instance v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$8;-><init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 1524
    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mSelectedFileName:Ljava/lang/String;

    .line 1534
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mCurrentPlayingId:J

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 79
    sget v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mLongKeyCnt:I

    return v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    sput p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mLongKeyCnt:I

    return p0
.end method

.method static synthetic access$108()I
    .registers 2

    .prologue
    .line 79
    sget v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mLongKeyCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mLongKeyCnt:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mPausedByCall:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mPausedByCall:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Lcom/sec/android/app/voicerecorder/widget/VRPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mLastSavedFileUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mCurrentPlayingId:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mCurrentPlayingId:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mSelectedFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getMaxAmplitude()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->TempLongKeyCnt:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->TempLongKeyCnt:I

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getLastSavedFileUriString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->headsetConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->headsetConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mRecordedDurationMSec:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFormat:Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSaveHiddenPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSize:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMemoryCheckHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private disableSystemSound()V
    .registers 5

    .prologue
    .line 1236
    :try_start_0
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1237
    if-eqz v0, :cond_f

    .line 1238
    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_f} :catch_18

    .line 1249
    :cond_f
    :goto_f
    const-wide/16 v0, 0x0

    .line 1255
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMute:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1257
    return-void

    .line 1240
    :catch_18
    move-exception v0

    .line 1241
    const-string v1, "VoiceRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableSystemSound : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private enableSystemSound()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1260
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1261
    if-eqz v0, :cond_e

    .line 1262
    invoke-virtual {v0, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1269
    :cond_e
    const-wide/16 v0, 0x0

    .line 1275
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMute:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1277
    return-void
.end method

.method private getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method private getFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSavePath:Ljava/lang/String;

    return-object v0
.end method

.method private getFileSize()J
    .registers 3

    .prologue
    .line 1334
    iget v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private getLastSavedFileUriString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mLastSavedFileUri:Landroid/net/Uri;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mLastSavedFileUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private getMaxAmplitude()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1357
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_11

    .line 1358
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->getMaxAmplitude()I
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_10} :catch_12

    move-result v1

    .line 1364
    :cond_11
    :goto_11
    return v1

    .line 1360
    :catch_12
    move-exception v0

    .line 1361
    .local v0, e:Ljava/lang/RuntimeException;
    goto :goto_11
.end method

.method private registerMediaButtonProcessListener()V
    .registers 3

    .prologue
    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "Media_Button_Recieved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    new-instance v1, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;-><init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaButtonProcessReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaButtonProcessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    return-void
.end method

.method private registerPlayerReceiver()V
    .registers 3

    .prologue
    .line 303
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mPlayerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlayerReceiverRegisterd:Z

    .line 313
    return-void
.end method

.method private registerStorageReceiver()V
    .registers 3

    .prologue
    .line 337
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 338
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isStorageReceiverRegisterd:Z

    .line 344
    return-void
.end method

.method private requestAudioFocus()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 1368
    const/4 v0, 0x0

    .line 1369
    .local v0, focusResult:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    const/4 v3, 0x5

    if-ge v1, v3, :cond_11

    .line 1370
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1371
    if-ne v0, v2, :cond_15

    .line 1374
    :cond_11
    if-nez v0, :cond_14

    .line 1375
    const/4 v2, 0x0

    .line 1377
    :cond_14
    return v2

    .line 1369
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private sendMessageCallback(I)V
    .registers 6
    .parameter

    .prologue
    .line 1307
    const/16 v0, 0xc08

    if-eq p1, v0, :cond_20

    const/16 v0, 0xbcd

    if-eq p1, v0, :cond_20

    .line 1308
    const-string v0, "VoiceRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_46

    .line 1313
    :try_start_23
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1314
    const/4 v0, 0x0

    move v1, v0

    :goto_2b
    if-ge v1, v3, :cond_3c

    .line 1315
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;

    invoke-interface {v0, p1}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;->messageCallback(I)V

    .line 1314
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2b

    .line 1317
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1318
    monitor-exit v2

    .line 1322
    :goto_42
    return-void

    .line 1318
    :catchall_43
    move-exception v0

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_43

    :try_start_45
    throw v0
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_46} :catch_46

    .line 1319
    :catch_46
    move-exception v0

    .line 1320
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_42
.end method

.method private setState(I)V
    .registers 5
    .parameter

    .prologue
    .line 902
    const-string v0, "VoiceRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    sparse-switch p1, :sswitch_data_28

    .line 920
    :goto_1b
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->sendMessageCallback(I)V

    .line 921
    return-void

    .line 909
    :sswitch_1f
    iput p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    goto :goto_1b

    .line 913
    :sswitch_22
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    goto :goto_1b

    .line 904
    nop

    :sswitch_data_28
    .sparse-switch
        0x3e8 -> :sswitch_1f
        0x3e9 -> :sswitch_1f
        0x3ea -> :sswitch_1f
        0x3eb -> :sswitch_1f
        0x7d1 -> :sswitch_22
    .end sparse-switch
.end method

.method private unRegisterMediaButtonProcessListener()V
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaButtonProcessReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaButtonProcessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaButtonProcessReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    :cond_c
    return-void
.end method

.method private unregisterPlayerReceiver()V
    .registers 3

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlayerReceiverRegisterd:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mPlayerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlayerReceiverRegisterd:Z

    .line 320
    :cond_d
    return-void
.end method

.method private unregisterStorageReceiver()V
    .registers 5

    .prologue
    .line 348
    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isStorageReceiverRegisterd:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 349
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isStorageReceiverRegisterd:Z
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_e

    .line 355
    :cond_d
    :goto_d
    return-void

    .line 352
    :catch_e
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "VoiceRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterStorageReceiver() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method


# virtual methods
.method public OnVRSettingChanged(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 973
    const-string v0, "VoiceRecorderService"

    const-string v1, "OnVRSettingChanged()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    sparse-switch p1, :sswitch_data_1c

    .line 988
    :cond_a
    :goto_a
    return-void

    .line 977
    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z

    goto :goto_a

    .line 981
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->saveRecording()Z

    move-result v0

    if-nez v0, :cond_a

    .line 982
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->setState(I)V

    goto :goto_a

    .line 975
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_b
        0x1388 -> :sswitch_f
        0x1392 -> :sswitch_f
    .end sparse-switch
.end method

.method public declared-synchronized cancelRecording()Z
    .registers 6

    .prologue
    .line 838
    monitor-enter p0

    :try_start_1
    const-string v0, "VoiceRecorderService"

    const-string v1, "cancelRecording()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->enableSystemSound()V

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/voicerecorder/util/MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 848
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->setRecordingstate(Z)V

    .line 850
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->releaseMediaRecorder()Z

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSaveHiddenPath:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 853
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSaveHiddenPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 854
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 857
    :cond_34
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSize:I

    .line 858
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->enableSystemSound()V

    .line 860
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->setState(I)V

    .line 863
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->sendElapsedTime2Notification(Landroid/content/Context;IJZ)V

    .line 864
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->playStop()V

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMemoryCheckThread:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;

    if-eqz v0, :cond_59

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMemoryCheckThread:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->interrupt()V

    .line 870
    :cond_59
    const-string v0, "VoiceRecorderService"

    const-string v1, "cancelRecording X"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_1 .. :try_end_60} :catchall_63

    .line 871
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 838
    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContentURI()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->getContentURI()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayingId()J
    .registers 3

    .prologue
    .line 1537
    iget-wide v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mCurrentPlayingId:J

    return-wide v0
.end method

.method public getCurrentPosition()I
    .registers 2

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getMediaRecorderState()I
    .registers 2

    .prologue
    .line 398
    iget v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    return v0
.end method

.method public getPlayerDuration()I
    .registers 2

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getRecDuration()J
    .registers 3

    .prologue
    .line 1350
    iget v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mRecordedDurationMSec:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSelectedFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mSelectedFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->getState()I

    move-result v0

    return v0
.end method

.method public hideNotification()Z
    .registers 2

    .prologue
    .line 1329
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->hideNotification()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized initRecording(ZJIZ)Z
    .registers 12
    .parameter "isFileSizeLimited"
    .parameter "maxFileSize"
    .parameter "maxRecordTime"
    .parameter "isHighQuality"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 458
    monitor-enter p0

    :try_start_3
    const-string v3, "VoiceRecorderService"

    const-string v4, "initRecording()"

    invoke-static {v3, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/widget/PanelAnimator;->setRecordingstate(Z)V

    .line 463
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->stopPlay()V

    .line 464
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 466
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->unregisterMotionListener()V

    .line 468
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->unregisterPlayerReceiver()V

    .line 469
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->unregisterStorageReceiver()V

    .line 472
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->requestAudioFocus()Z
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_ee

    move-result v3

    if-nez v3, :cond_2b

    .line 534
    :goto_29
    monitor-exit p0

    return v1

    .line 476
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->releaseMediaRecorder()Z

    .line 478
    iput-boolean p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mIsDurationLimited:Z

    .line 479
    if-eqz p5, :cond_e5

    .line 480
    new-instance v3, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat$THREE_GPP;

    invoke-direct {v3}, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat$THREE_GPP;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFormat:Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;

    .line 485
    :goto_39
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->createNewFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileName:Ljava/lang/String;

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getSaveHiddenDirPathCreated()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".voice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSaveHiddenPath:Ljava/lang/String;

    .line 492
    new-instance v3, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    :try_end_69
    .catchall {:try_start_2b .. :try_end_69} :catchall_ee

    .line 496
    :try_start_69
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 498
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFormat:Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;

    invoke-interface {v4}, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;->getOutputFormat()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 499
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v3, p2, p3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxFileSize(J)V

    .line 501
    iget-boolean v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mIsDurationLimited:Z

    if-nez v3, :cond_8b

    .line 502
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const v4, 0x2ca2068

    invoke-virtual {v3, v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    .line 504
    :cond_8b
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSaveHiddenPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 505
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFormat:Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;

    invoke-interface {v4}, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;->getAudioEncodingBitrate()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 506
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 507
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFormat:Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;

    invoke-interface {v4}, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;->getAudioSamplingRate()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 508
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFormat:Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;

    invoke-interface {v4}, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;->getAudioEncoder()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 510
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 511
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v4, 0x300

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    .line 514
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->prepare()V

    .line 516
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v3, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    .line 517
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v3, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V
    :try_end_d6
    .catchall {:try_start_69 .. :try_end_d6} :catchall_ee
    .catch Ljava/lang/IllegalStateException; {:try_start_69 .. :try_end_d6} :catch_f1
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_d6} :catch_122

    .line 530
    const/16 v1, 0x3e9

    :try_start_d8
    invoke-direct {p0, v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->setState(I)V

    .line 533
    const-string v1, "VoiceRecorderService"

    const-string v3, "initRecording() Exit"

    invoke-static {v1, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 534
    goto/16 :goto_29

    .line 482
    :cond_e5
    new-instance v3, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat$AMRNB;

    invoke-direct {v3}, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat$AMRNB;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFormat:Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;
    :try_end_ec
    .catchall {:try_start_d8 .. :try_end_ec} :catchall_ee

    goto/16 :goto_39

    .line 458
    :catchall_ee
    move-exception v1

    monitor-exit p0

    throw v1

    .line 519
    :catch_f1
    move-exception v0

    .line 520
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_f2
    const-string v2, "VoiceRecorderService"

    const-string v3, "Illegal State Exception Occured"

    invoke-static {v2, v3, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 521
    const-string v2, "VoiceRecorderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/util/VRConsts$MediaRecorderState;->getStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", while trying to Prepared State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z

    goto/16 :goto_29

    .line 524
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_122
    move-exception v0

    .line 525
    .local v0, e:Ljava/io/IOException;
    const-string v2, "VoiceRecorderService"

    const-string v3, "Error occured while MediaRecorder Prepare()"

    invoke-static {v2, v3, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z
    :try_end_12d
    .catchall {:try_start_f2 .. :try_end_12d} :catchall_ee

    goto/16 :goto_29
.end method

.method public isPaused()Z
    .registers 2

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 387
    const-string v0, "VoiceRecorderService"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mBinder:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 227
    const-string v0, "VoiceRecorderService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->initAppContext(Landroid/content/Context;)V

    .line 230
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->initService(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V

    .line 231
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->initService(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V

    .line 233
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 234
    new-instance v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$IVoiceRecorderServiceStub;-><init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;Landroid/os/RemoteCallbackList;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mBinder:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;

    .line 236
    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRIntent;

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRIntent;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForService(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->createNewFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileName:Ljava/lang/String;

    .line 240
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;

    .line 242
    new-instance v0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    .line 244
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->setOnVRSettingChangedObserver(Lcom/sec/android/app/voicerecorder/util/VRSettings$OnVRSettingChangedObserver;)V

    .line 247
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->registerMediaButtonProcessListener()V

    .line 248
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 359
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 360
    const-string v0, "VoiceRecorderService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z

    .line 365
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->stopPlay()V

    .line 366
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->hideNotification()Z

    .line 368
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->releaseService()V

    .line 369
    invoke-static {}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->releaseService()V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForService(Z)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->removeAllOnPlayerStateChangedObserver()V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->release()V

    .line 379
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->removeOnVRSettingChangedObserver(Lcom/sec/android/app/voicerecorder/util/VRSettings$OnVRSettingChangedObserver;)V

    .line 382
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->unRegisterMediaButtonProcessListener()V

    .line 383
    return-void
.end method

.method public onError(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 924
    const-string v0, "VoiceRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z

    .line 926
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x2189

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->sendElapsedTime2Notification(Landroid/content/Context;IJZ)V

    .line 927
    return-void
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 933
    sparse-switch p2, :sswitch_data_76

    .line 970
    :cond_3
    :goto_3
    return-void

    .line 935
    :sswitch_4
    iput p3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSize:I

    .line 936
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mIsDurationLimited:Z

    if-eqz v0, :cond_3

    .line 937
    const/16 v0, 0xc08

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->sendMessageCallback(I)V

    goto :goto_3

    .line 940
    :sswitch_10
    const-string v0, "VoiceRecorderService"

    const-string v1, "onInfo SecMediaRecorder.MEDIA_RECORDER_INFO_DURATION_PROGRESS"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iput p3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mRecordedDurationMSec:I

    .line 944
    div-int/lit16 v0, p3, 0x3e8

    .line 945
    iget v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mDurationUpdated:I

    if-le v0, v1, :cond_3

    .line 946
    iput v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mDurationUpdated:I

    .line 947
    const-string v0, "VoiceRecorderService"

    const-string v1, "onInfo sendMessageCallback DIGIT_ONINFO"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const/16 v0, 0xbcd

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->sendMessageCallback(I)V

    goto :goto_3

    .line 953
    :sswitch_2e
    const-string v0, "VoiceRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max duration reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->saveRecording()Z

    goto :goto_3

    .line 957
    :sswitch_4a
    const-string v0, "VoiceRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max filesize reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-boolean v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mIsDurationLimited:Z

    if-eqz v0, :cond_71

    .line 959
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060040

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 964
    :cond_71
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->saveRecording()Z

    goto :goto_3

    .line 933
    nop

    :sswitch_data_76
    .sparse-switch
        0x320 -> :sswitch_2e
        0x321 -> :sswitch_4a
        0x384 -> :sswitch_4
        0x385 -> :sswitch_10
    .end sparse-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1219
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 1221
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->initService(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V

    .line 1222
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/VoiceListActivity;->initService(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;)V

    .line 1224
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.voicerecorder.HIDENOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1225
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1226
    const v1, 0x7010001

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1227
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->stopSelf()V

    .line 1229
    :cond_2e
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .parameter "intent"

    .prologue
    .line 393
    const-string v0, "VoiceRecorderService"

    const-string v1, "onUnbind()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public pausePlay()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1428
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->pausePlay()V

    .line 1429
    iput-boolean v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mPausedByCall:Z

    .line 1432
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1433
    const v0, 0x7f020020

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->playPause(IJZ)V

    .line 1434
    :cond_16
    return-void
.end method

.method public declared-synchronized pauseRecording()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 608
    monitor-enter p0

    :try_start_2
    const-string v2, "VoiceRecorderService"

    const-string v3, "pauseRecording()"

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    const/16 v3, 0x3ea

    if-eq v2, v3, :cond_2f

    .line 612
    const-string v2, "VoiceRecorderService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid MediaRecorder state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/util/VRConsts$MediaRecorderState;->getStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2 .. :try_end_2d} :catchall_5e

    .line 633
    :goto_2d
    monitor-exit p0

    return v1

    .line 617
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->pause()V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_5e
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_34} :catch_56

    .line 624
    :try_start_34
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->enableSystemSound()V

    .line 625
    const/16 v1, 0x3eb

    invoke-direct {p0, v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->setState(I)V

    .line 626
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xd

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->sendElapsedTime2Notification(Landroid/content/Context;IJZ)V

    .line 628
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMemoryCheckThread:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;

    if-eqz v1, :cond_51

    .line 629
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMemoryCheckThread:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->interrupt()V

    .line 631
    :cond_51
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->recPause()V

    .line 633
    const/4 v1, 0x1

    goto :goto_2d

    .line 618
    :catch_56
    move-exception v0

    .line 619
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 620
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z
    :try_end_5d
    .catchall {:try_start_34 .. :try_end_5d} :catchall_5e

    goto :goto_2d

    .line 608
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_5e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method registerMotionListener()V
    .registers 3

    .prologue
    .line 1514
    sget-object v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_e

    .line 1515
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1516
    :cond_e
    sget-object v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;)V

    .line 1517
    return-void
.end method

.method public registerNotification()Z
    .registers 2

    .prologue
    .line 1325
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->registerNotification()Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->release()V

    .line 1397
    return-void
.end method

.method public releaseMediaRecorder()Z
    .registers 4

    .prologue
    .line 875
    const-string v0, "VoiceRecorderService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseMediaRecorder() when : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/util/VRConsts$MediaRecorderState;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_35

    .line 880
    iget v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2d

    .line 881
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V

    .line 883
    :cond_2d
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 888
    :cond_35
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mRecordedDurationMSec:I

    .line 891
    const-string v0, "VoiceRecorderService"

    const-string v1, "releaseMediaRecorder() Exit"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const/4 v0, 0x1

    return v0
.end method

.method public removeOnPlayerStateChangedObserver(Lcom/sec/android/app/voicerecorder/widget/VRPlayer$OnPlayerStateChangedObserver;)V
    .registers 3
    .parameter "o"

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->removeOnPlayerStateChangedObserver(Lcom/sec/android/app/voicerecorder/widget/VRPlayer$OnPlayerStateChangedObserver;)V

    .line 1393
    return-void
.end method

.method public resetPath()V
    .registers 2

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->resetPath()V

    .line 1469
    return-void
.end method

.method public resumePlay()V
    .registers 2

    .prologue
    .line 1437
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->requestAudioFocus()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1443
    :cond_6
    :goto_6
    return-void

    .line 1440
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->resumePlay()V

    .line 1441
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1442
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->play()V

    goto :goto_6
.end method

.method public declared-synchronized resumeRecording()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 642
    monitor-enter p0

    :try_start_3
    const-string v4, "VoiceRecorderService"

    const-string v5, "resumeRecording()"

    invoke-static {v4, v5}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    const/16 v5, 0x3eb

    if-eq v4, v5, :cond_30

    .line 646
    const-string v3, "VoiceRecorderService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid MediaRecorder state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    invoke-static {v5}, Lcom/sec/android/app/voicerecorder/util/VRConsts$MediaRecorderState;->getStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_64

    .line 675
    :goto_2e
    monitor-exit p0

    return v2

    .line 651
    :cond_30
    :try_start_30
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->disableSystemSound()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_64

    .line 654
    :try_start_33
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v4}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->resume()V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_64
    .catch Ljava/lang/IllegalStateException; {:try_start_33 .. :try_end_38} :catch_5c
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_38} :catch_67

    .line 665
    const/16 v2, 0x3ea

    :try_start_3a
    invoke-direct {p0, v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->setState(I)V

    .line 667
    new-instance v2, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;-><init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;)V

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMemoryCheckThread:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;

    .line 668
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMemoryCheckThread:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->setDaemon(Z)V

    .line 669
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMemoryCheckThread:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->start()V

    .line 671
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->rec()V

    .line 674
    const-string v2, "VoiceRecorderService"

    const-string v4, "resumeRecording() Exit"

    invoke-static {v2, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 675
    goto :goto_2e

    .line 655
    :catch_5c
    move-exception v0

    .line 656
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 657
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z
    :try_end_63
    .catchall {:try_start_3a .. :try_end_63} :catchall_64

    goto :goto_2e

    .line 642
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_64
    move-exception v2

    monitor-exit p0

    throw v2

    .line 659
    :catch_67
    move-exception v1

    .line 660
    .local v1, re:Ljava/lang/RuntimeException;
    :try_start_68
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 661
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_64

    goto :goto_2e
.end method

.method public declared-synchronized saveRecording()Z
    .registers 12

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 684
    monitor-enter p0

    :try_start_5
    const-string v2, "VoiceRecorderService"

    const-string v3, "saveRecording()"

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMemoryCheckThread:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;

    if-eqz v2, :cond_15

    .line 686
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMemoryCheckThread:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->interrupt()V

    .line 689
    :cond_15
    iget v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    const/16 v3, 0x3ea

    if-eq v2, v3, :cond_41

    iget v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    const/16 v3, 0x3eb

    if-eq v2, v3, :cond_41

    .line 690
    const-string v1, "VoiceRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid MediaRecorder state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/util/VRConsts$MediaRecorderState;->getStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_cf

    .line 834
    :cond_3f
    :goto_3f
    monitor-exit p0

    return v0

    .line 695
    :cond_41
    :try_start_41
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/voicerecorder/util/MediaButtonReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 699
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I
    :try_end_59
    .catchall {:try_start_41 .. :try_end_59} :catchall_cf

    .line 703
    :try_start_59
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 704
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->releaseMediaRecorder()Z
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_cf
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_61} :catch_d2

    .line 711
    :try_start_61
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->enableSystemSound()V

    .line 714
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->createNewFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileName:Ljava/lang/String;

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getSaveDirPathCreated()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFormat:Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;

    invoke-interface {v3}, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSavePath:Ljava/lang/String;
    :try_end_97
    .catchall {:try_start_61 .. :try_end_97} :catchall_cf

    .line 730
    :try_start_97
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 731
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSaveHiddenPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 734
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 735
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 737
    cmp-long v4, v2, v6

    if-gez v4, :cond_d8

    .line 738
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z
    :try_end_b3
    .catchall {:try_start_97 .. :try_end_b3} :catchall_cf
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_b3} :catch_b4

    goto :goto_3f

    .line 773
    :catch_b4
    move-exception v1

    .line 774
    :try_start_b5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 775
    const-string v2, "VoiceRecorderService"

    const-string v3, "error occurred while moving temp file"

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 776
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060037

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 777
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z
    :try_end_cd
    .catchall {:try_start_b5 .. :try_end_cd} :catchall_cf

    goto/16 :goto_3f

    .line 684
    :catchall_cf
    move-exception v0

    monitor-exit p0

    throw v0

    .line 705
    :catch_d2
    move-exception v1

    .line 707
    :try_start_d3
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_cf

    goto/16 :goto_3f

    .line 743
    :cond_d8
    :try_start_d8
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getSaveDirPathCreated()Ljava/lang/String;

    .line 746
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSaveHiddenPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 747
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSavePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_ff

    .line 752
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060037

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 753
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z

    goto/16 :goto_3f

    .line 758
    :cond_ff
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_115

    .line 759
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060037

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 760
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z

    goto/16 :goto_3f

    .line 765
    :cond_115
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 767
    if-nez v4, :cond_12b

    .line 768
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060037

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 769
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z
    :try_end_129
    .catchall {:try_start_d8 .. :try_end_129} :catchall_cf
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_129} :catch_b4

    goto/16 :goto_3f

    .line 784
    :cond_12b
    :try_start_12b
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 785
    const-string v6, "title"

    iget-object v7, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v6, "mime_type"

    iget-object v7, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFormat:Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;

    invoke-interface {v7}, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v6, "_data"

    iget-object v7, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSavePath:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v6, "duration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 789
    const-string v6, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 790
    const-string v6, "date_modified"

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 791
    const-string v6, "is_sound"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 792
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mLastSavedFileUri:Landroid/net/Uri;

    .line 794
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mLastSavedFileUri:Landroid/net/Uri;

    if-nez v4, :cond_1c9

    .line 795
    const-string v1, "VoiceRecorderService"

    const-string v2, "Content Resolver insert failed"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060037

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 797
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z

    .line 798
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSavePath:Ljava/lang/String;

    if-eqz v1, :cond_3f

    .line 799
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1a5
    .catchall {:try_start_12b .. :try_end_1a5} :catchall_cf
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_1a5} :catch_1a7

    goto/16 :goto_3f

    .line 804
    :catch_1a7
    move-exception v1

    .line 805
    :try_start_1a8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 806
    const-string v2, "VoiceRecorderService"

    const-string v3, "error occurred while input data to MediaStore"

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 807
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060037

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 808
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z

    .line 809
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSavePath:Ljava/lang/String;

    if-eqz v1, :cond_3f

    .line 810
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_3f

    .line 815
    :cond_1c9
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileSize:I

    .line 817
    const/16 v0, 0x7d1

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->setState(I)V

    .line 818
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToastSaved(Landroid/content/Context;)V

    .line 821
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v4, 0xc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->sendElapsedTime2Notification(Landroid/content/Context;IJZ)V

    .line 826
    const/4 v0, 0x0

    const-string v4, ""

    invoke-static {v0, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->setFixedNewFileName(ZLjava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mSelectedFileName:Ljava/lang/String;

    .line 830
    const v0, 0x7f020007

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->playPause(IJZ)V

    .line 833
    const-string v0, "VoiceRecorderService"

    const-string v2, "saveRecording() Exit"

    invoke-static {v0, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1fe
    .catchall {:try_start_1a8 .. :try_end_1fe} :catchall_cf

    move v0, v1

    .line 834
    goto/16 :goto_3f
.end method

.method public seek(IZ)V
    .registers 4
    .parameter "msec"
    .parameter "restart"

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->seek(IZ)V

    .line 1473
    return-void
.end method

.method public setCurrentPlayingId(J)V
    .registers 3
    .parameter "currentPlayingId"

    .prologue
    .line 1541
    iput-wide p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mCurrentPlayingId:J

    .line 1542
    return-void
.end method

.method public setOnPlayerStateChangedObserver(Lcom/sec/android/app/voicerecorder/widget/VRPlayer$OnPlayerStateChangedObserver;)V
    .registers 3
    .parameter "o"

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->setOnPlayerStateChangedObserver(Lcom/sec/android/app/voicerecorder/widget/VRPlayer$OnPlayerStateChangedObserver;)V

    .line 1389
    return-void
.end method

.method public setSelectedFileName(Ljava/lang/String;)V
    .registers 2
    .parameter "selectedFileName"

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mSelectedFileName:Ljava/lang/String;

    .line 1532
    return-void
.end method

.method public startPlay(Landroid/net/Uri;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1400
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->requestAudioFocus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1423
    :cond_7
    :goto_7
    return v0

    .line 1404
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->registerMotionListener()V

    .line 1406
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->registerPlayerReceiver()V

    .line 1407
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->registerStorageReceiver()V

    .line 1410
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sec/android/app/voicerecorder/util/MediaButtonReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1418
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->startPlay(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1419
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->play()V

    .line 1420
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public declared-synchronized startRecording()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 544
    monitor-enter p0

    :try_start_3
    const-string v2, "VoiceRecorderService"

    const-string v3, "startRecording()"

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_30

    .line 548
    const-string v1, "VoiceRecorderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid MediaRecorder state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorderState:I

    invoke-static {v3}, Lcom/sec/android/app/voicerecorder/util/VRConsts$MediaRecorderState;->getStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_96

    .line 599
    :goto_2e
    monitor-exit p0

    return v0

    .line 553
    :cond_30
    :try_start_30
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/voicerecorder/util/MediaButtonReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 558
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    const-string v3, "command"

    const-string v4, "pause"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string v3, "from"

    const-string v4, "com.sec.android.app.voicerecorder"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 564
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->disableSystemSound()V
    :try_end_5f
    .catchall {:try_start_30 .. :try_end_5f} :catchall_96

    .line 568
    :try_start_5f
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_96
    .catch Ljava/lang/IllegalStateException; {:try_start_5f .. :try_end_64} :catch_8e
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_64} :catch_99

    .line 586
    const/4 v0, 0x0

    :try_start_65
    iput v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mRecordedDurationMSec:I

    .line 587
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mDurationUpdated:I

    .line 589
    const/16 v0, 0x3ea

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->setState(I)V

    .line 591
    new-instance v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;-><init>(Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$1;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMemoryCheckThread:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMemoryCheckThread:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->setDaemon(Z)V

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMemoryCheckThread:Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService$MemoryCheckThread;->start()V

    .line 596
    const-string v0, "VoiceRecorderService"

    const-string v2, "startRecording() Exit"

    invoke-static {v0, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->rec()V

    move v0, v1

    .line 599
    goto :goto_2e

    .line 575
    :catch_8e
    move-exception v1

    .line 576
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 577
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z
    :try_end_95
    .catchall {:try_start_65 .. :try_end_95} :catchall_96

    goto :goto_2e

    .line 544
    :catchall_96
    move-exception v0

    monitor-exit p0

    throw v0

    .line 579
    :catch_99
    move-exception v1

    .line 580
    :try_start_9a
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 581
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->cancelRecording()Z
    :try_end_a0
    .catchall {:try_start_9a .. :try_end_a0} :catchall_96

    goto :goto_2e
.end method

.method public stopPlay()V
    .registers 5

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mVRPlayer:Lcom/sec/android/app/voicerecorder/widget/VRPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->stopPlay()V

    .line 1447
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1450
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->unregisterMotionListener()V

    .line 1452
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->unregisterPlayerReceiver()V

    .line 1453
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->unregisterStorageReceiver()V

    .line 1455
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->playStop()V

    .line 1456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mPausedByCall:Z

    .line 1459
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/voicerecorder/util/MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1461
    return-void
.end method

.method unregisterMotionListener()V
    .registers 3

    .prologue
    .line 1520
    sget-object v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_b

    .line 1521
    sget-object v0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 1522
    :cond_b
    return-void
.end method
