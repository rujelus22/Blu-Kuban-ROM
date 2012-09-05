.class public Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
.super Ljava/lang/Object;
.source "AlarmPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;
    }
.end annotation


# static fields
.field public static final PLAYMOD:[I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private static final vibPattern:[J


# instance fields
.field private final DEBUG:Z

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallState:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEndAlertOnVoice:Z

.field private mHandler:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;

.field private mIsFinishing:Z

.field mIsMute:Z

.field private mIsTTSStream:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mOriginTtsVolume:I

.field private mOriginVoiceCallVolume:I

.field private mPause:Z

.field private mPlayMode:I

.field private mRotateListener:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;

.field private mSoundPlayer:Landroid/media/MediaPlayer;

.field private mSoundUri:Landroid/net/Uri;

.field private mTtsString:Ljava/lang/String;

.field private mVibPlayer:Landroid/os/Vibrator;

.field private mVoicePlayer:Landroid/speech/tts/TextToSpeech;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 106
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->PLAYMOD:[I

    .line 114
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->vibPattern:[J

    return-void

    .line 106
    nop

    :array_16
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x0t 0x11t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 114
    :array_2c
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 147
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    .line 42
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mCallState:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 86
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->map:Ljava/util/HashMap;

    .line 139
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mHandler:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;

    .line 814
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$6;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 148
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    .line 149
    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    .line 150
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 151
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    .line 152
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    .line 153
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mTtsString:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundUri:Landroid/net/Uri;

    .line 155
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    .line 156
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mEndAlertOnVoice:Z

    .line 158
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    .line 159
    iput v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginTtsVolume:I

    .line 160
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 162
    iput v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginVoiceCallVolume:I

    .line 163
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsTTSStream:Z

    .line 165
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mRotateListener:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$RotateListener;

    .line 168
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v0, :cond_62

    .line 169
    const-string v0, "AlarmPlayer"

    const-string v1, "AlertPlayer constructor call."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_62
    return-void
.end method

.method private SoundPlay()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 401
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v1, :cond_e

    .line 402
    const-string v1, "AlarmPlayer"

    const-string v2, "SoundPlay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_c5

    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    if-nez v1, :cond_c5

    .line 405
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 407
    :try_start_1d
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 420
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 421
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 422
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 423
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 425
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    if-nez v1, :cond_88

    .line 426
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 431
    :goto_4e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 433
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 435
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v1, :cond_87

    .line 436
    const-string v2, "AlarmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "melody stream volume current : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_87
    :goto_87
    return-void

    .line 428
    :cond_88
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_8f} :catch_90

    goto :goto_4e

    .line 441
    :catch_90
    move-exception v0

    .line 442
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v1, :cond_ad

    .line 443
    const-string v1, "AlarmPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to play track"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_ad
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 445
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 447
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 449
    const-string v1, "/system/media/audio/alarms/Good_Morning.ogg"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundUri:Landroid/net/Uri;

    goto :goto_87

    .line 452
    .end local v0           #e:Ljava/lang/Exception;
    :cond_c5
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_87

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 460
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2, v5, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 462
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_87
.end method

.method private SoundStop()V
    .registers 5

    .prologue
    .line 633
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 634
    const-string v1, "AlarmPlayer"

    const-string v2, "SoundStop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2f

    .line 638
    :try_start_f
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 639
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 640
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 641
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_30

    .line 645
    :goto_25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 647
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 649
    :cond_2f
    return-void

    .line 642
    :catch_30
    move-exception v0

    .line 643
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method private VibratePlay()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    if-nez v0, :cond_45

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->vibPattern:[J

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Vibrator;->vibrate([JII)V

    .line 474
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v0, :cond_44

    .line 475
    const-string v0, "AlarmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibratePlay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_44
    :goto_44
    return-void

    .line 477
    :cond_45
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    if-eqz v0, :cond_44

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->vibPattern:[J

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Vibrator;->vibrate([JII)V

    goto :goto_44
.end method

.method private VibrateStop()V
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    if-eqz v0, :cond_9

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 654
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVibPlayer:Landroid/os/Vibrator;

    .line 655
    return-void
.end method

.method private VoicePlay()V
    .registers 5

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 605
    const-string v0, "AlarmPlayer"

    const-string v1, "VoicePlay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    if-nez v0, :cond_2b

    .line 612
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$5;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    .line 630
    :goto_2a
    return-void

    .line 628
    :cond_2b
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->doSpeak()V

    goto :goto_2a
.end method

.method private VoiceStop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 659
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 660
    const-string v0, "AlarmPlayer"

    const-string v1, "VoiceStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1a

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 664
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 666
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    .line 669
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    if-ne v0, v2, :cond_23

    .line 671
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mEndAlertOnVoice:Z

    .line 674
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 675
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VoicePlay()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setCompleteListener()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->doSpeak()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->SoundStop()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mEndAlertOnVoice:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsTTSStream:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsTTSStream:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginTtsVolume:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mHandler:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$TTSHandler;

    return-object v0
.end method

.method private beepSoundPlay()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 353
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 354
    const-string v1, "AlarmPlayer"

    const-string v2, "beepSoundPlay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_9d

    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    if-nez v1, :cond_9d

    .line 357
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 359
    :try_start_1b
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    const-string v3, "android.resource://com.sec.android.app.clockpackage/raw/s_alarms_in_call"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 371
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 372
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 375
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    const v2, 0x3f19999a

    const v3, 0x3f19999a

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 378
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v1, :cond_7e

    .line 379
    const-string v2, "AlarmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beep stream volume current : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_7e} :catch_7f

    .line 397
    :cond_7e
    :goto_7e
    return-void

    .line 384
    :catch_7f
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v1, :cond_7e

    .line 386
    const-string v1, "AlarmPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to play track"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 392
    .end local v0           #e:Ljava/lang/Exception;
    :cond_9d
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_7e

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_7e

    .line 393
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 394
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_7e
.end method

.method private doSpeak()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 557
    iget-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    if-ne v4, v6, :cond_a

    .line 559
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VoiceStop()V

    .line 562
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_8c

    .line 563
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v4

    if-nez v4, :cond_8c

    .line 564
    iput-boolean v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mEndAlertOnVoice:Z

    .line 565
    iget-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsTTSStream:Z

    if-eqz v4, :cond_8d

    .line 566
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginTtsVolume:I

    .line 568
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginVoiceCallVolume:I

    .line 570
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginVoiceCallVolume:I

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginTtsVolume:I

    if-le v4, v5, :cond_36

    .line 571
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginTtsVolume:I

    iput v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginVoiceCallVolume:I

    .line 572
    :cond_36
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginVoiceCallVolume:I

    if-gtz v4, :cond_3c

    .line 573
    iput v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginVoiceCallVolume:I

    .line 574
    :cond_3c
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mOriginVoiceCallVolume:I

    invoke-virtual {v4, v8, v5, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 580
    :goto_43
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->map:Ljava/util/HashMap;

    const-string v5, "utteranceId"

    const-string v6, "alarm_name_string"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->map:Ljava/util/HashMap;

    const-string v5, "streamType"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, mDefaultLanguage:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, mDefaultCountry:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 589
    .local v3, mDefaultLocVariant:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v2, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 592
    .local v0, languageResult:I
    if-gez v0, :cond_83

    .line 593
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 597
    :cond_83
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mTtsString:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v7, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 600
    .end local v0           #languageResult:I
    .end local v1           #mDefaultCountry:Ljava/lang/String;
    .end local v2           #mDefaultLanguage:Ljava/lang/String;
    .end local v3           #mDefaultLocVariant:Ljava/lang/String;
    :cond_8c
    return-void

    .line 577
    :cond_8d
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->map:Ljava/util/HashMap;

    const-string v5, "streamType"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43
.end method

.method private setCompleteListener()V
    .registers 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_e

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer$4;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 552
    :cond_e
    return-void
.end method


# virtual methods
.method public GetEndAlertOnVoice()Z
    .registers 2

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mEndAlertOnVoice:Z

    return v0
.end method

.method public Pause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_19

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 322
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    .line 323
    return-void
.end method

.method public Play(I)V
    .registers 7
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    .line 215
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    if-ne v1, v4, :cond_14

    .line 216
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v1, :cond_10

    .line 217
    const-string v1, "AlarmPlayer"

    const-string v2, "Play() - mIsMute is TRUE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    .line 282
    :cond_13
    :goto_13
    return-void

    .line 224
    :cond_14
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mCallState:Ljava/lang/String;

    if-eqz v1, :cond_52

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mCallState:Ljava/lang/String;

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 226
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v1, :cond_40

    .line 227
    const-string v1, "AlarmPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mCallState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_40
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alertoncall_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 233
    .local v0, mAlertMode:I
    if-eq v0, v4, :cond_52

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    goto :goto_13

    .line 240
    .end local v0           #mAlertMode:I
    :cond_52
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v1, :cond_74

    .line 241
    const-string v1, "AlarmPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlarmPlayer - PlayerMode = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_74
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    if-eqz v1, :cond_80

    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    if-nez v1, :cond_80

    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    if-eqz v1, :cond_c9

    .line 243
    :cond_80
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 245
    const-string v1, "AlarmPlayer"

    const-string v2, "AlarmPlayer - Pause or null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    if-eqz v1, :cond_a9

    .line 247
    const-string v1, "AlarmPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_a9
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    if-eqz v1, :cond_13

    .line 249
    const-string v1, "AlarmPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsFinishing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 253
    :cond_c9
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_e2

    .line 254
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v1, :cond_da

    .line 255
    const-string v1, "AlarmPlayer"

    const-string v2, "AlarmPlayer - SoundPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_da
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_110

    .line 258
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->beepSoundPlay()V

    .line 271
    :cond_e2
    :goto_e2
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_fa

    .line 272
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v1, :cond_f3

    .line 273
    const-string v1, "AlarmPlayer"

    const-string v2, "AlarmPlayer - VibratePlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_f3
    rem-int/lit8 v1, p1, 0x4

    if-ne v1, v4, :cond_fa

    .line 275
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VibratePlay()V

    .line 277
    :cond_fa
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    and-int/lit16 v1, v1, 0x100

    if-lez v1, :cond_13

    .line 278
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v1, :cond_10b

    .line 279
    const-string v1, "AlarmPlayer"

    const-string v2, "AlarmPlayer - VoicePlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_10b
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VoicePlay()V

    goto/16 :goto_13

    .line 260
    :cond_110
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->SoundPlay()V

    goto :goto_e2
.end method

.method public Release()V
    .registers 1

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->SoundStop()V

    .line 340
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VibrateStop()V

    .line 341
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VoiceStop()V

    .line 342
    return-void
.end method

.method public Resume(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    .line 327
    const/4 v0, 0x1

    if-le p1, v0, :cond_9

    .line 328
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Play(I)V

    .line 329
    :cond_9
    return-void
.end method

.method public Stop()V
    .registers 3

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 286
    const-string v0, "AlarmPlayer"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_b
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_18

    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    if-nez v0, :cond_18

    .line 289
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->SoundStop()V

    .line 298
    :cond_18
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_21

    .line 299
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VibrateStop()V

    .line 302
    :cond_21
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    and-int/lit16 v0, v0, 0x100

    if-lez v0, :cond_2a

    .line 303
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VoiceStop()V

    .line 309
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mVoicePlayer:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_31

    .line 310
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->VoiceStop()V

    .line 312
    :cond_31
    return-void
.end method

.method public isPause()Z
    .registers 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    return v0
.end method

.method public isPlying()Z
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->unregisterMotionListener()V

    .line 711
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->registerMotionListener()V

    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsMute:Z

    .line 716
    return-void
.end method

.method registerMotionListener()V
    .registers 3

    .prologue
    .line 74
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_10

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 77
    :cond_10
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;)V

    .line 78
    return-void
.end method

.method public setCallState(Ljava/lang/String;)V
    .registers 5
    .parameter "strValue"

    .prologue
    .line 334
    const-string v0, "AlarmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallState strValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mCallState:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setIsFinishing()V
    .registers 2

    .prologue
    .line 698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mIsFinishing:Z

    .line 699
    return-void
.end method

.method public setPause(Z)V
    .registers 5
    .parameter "bValue"

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    .line 209
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 210
    const-string v0, "AlarmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPause mPause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_20
    return-void
.end method

.method public setPlayMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 173
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->PLAYMOD:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mPlayMode:I

    .line 174
    return-void
.end method

.method public setPlayResource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "uri"
    .parameter "tts"

    .prologue
    .line 177
    if-eqz p1, :cond_26

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 179
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundUri:Landroid/net/Uri;

    .line 185
    :goto_1c
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mTtsString:Ljava/lang/String;

    .line 186
    return-void

    .line 181
    :cond_1f
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundUri:Landroid/net/Uri;

    goto :goto_1c

    .line 184
    :cond_26
    const-string v0, "/system/media/audio/alarms/Good_Morning.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundUri:Landroid/net/Uri;

    goto :goto_1c
.end method

.method public setVolume(F)V
    .registers 5
    .parameter "nVol"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 190
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 191
    const-string v0, "AlarmPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 195
    :cond_2d
    return-void
.end method

.method unregisterMotionListener()V
    .registers 3

    .prologue
    .line 81
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_b

    .line 82
    sget-object v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 83
    :cond_b
    return-void
.end method
