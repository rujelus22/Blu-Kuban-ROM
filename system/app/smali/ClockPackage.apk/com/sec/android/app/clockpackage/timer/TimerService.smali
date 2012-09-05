.class public Lcom/sec/android/app/clockpackage/timer/TimerService;
.super Landroid/app/Service;
.source "TimerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/timer/TimerService$TimerNotificationHelper;
    }
.end annotation


# static fields
.field private static alarmogg:Ljava/lang/String;

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private final VIBRATOR_PATTERN:[J

.field activityManager:Landroid/app/ActivityManager;

.field private audioManager:Landroid/media/AudioManager;

.field initialCallState:I

.field initialRingState:I

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field mIsMute:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSoundUri:Landroid/net/Uri;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private vibrator:Landroid/os/Vibrator;

.field volumeValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 134
    const-string v0, "/system/media/audio/alarms/Ticktac.ogg"

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/TimerService;->alarmogg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mIsMute:Z

    .line 87
    new-instance v0, Lcom/sec/android/app/clockpackage/timer/TimerService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimerService$1;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerService;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 115
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_2c

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->VIBRATOR_PATTERN:[J

    .line 146
    new-instance v0, Lcom/sec/android/app/clockpackage/timer/TimerService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimerService$2;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerService;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->receiver:Landroid/content/BroadcastReceiver;

    .line 202
    new-instance v0, Lcom/sec/android/app/clockpackage/timer/TimerService$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimerService$3;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerService;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 689
    new-instance v0, Lcom/sec/android/app/clockpackage/timer/TimerService$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/timer/TimerService$4;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerService;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void

    .line 115
    nop

    :array_2c
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static CheckAlarmOggFilePathByRegion()V
    .registers 2

    .prologue
    .line 680
    const-string v0, "/system/media/audio/alarms/Ticktac.ogg"

    .line 686
    .local v0, alarmogg_common:Ljava/lang/String;
    const-string v1, "/system/media/audio/alarms/Ticktac.ogg"

    sput-object v1, Lcom/sec/android/app/clockpackage/timer/TimerService;->alarmogg:Ljava/lang/String;

    .line 687
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/timer/TimerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->stopVibrate()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/timer/TimerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->stopRing()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/timer/TimerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->isVibrateMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/timer/TimerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->play()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/timer/TimerService;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/timer/TimerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->popUp()V

    return-void
.end method

.method private defaultStartAlarm()V
    .registers 6

    .prologue
    .line 595
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->stopRing()V

    .line 597
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 599
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 600
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "volume_progress_value"

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->volumeValue:I

    .line 601
    iget v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->volumeValue:I

    int-to-float v0, v2

    .line 603
    .local v0, currentVol:F
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 605
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerService;->CheckAlarmOggFilePathByRegion()V

    .line 606
    sget-object v2, Lcom/sec/android/app/clockpackage/timer/TimerService;->alarmogg:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mSoundUri:Landroid/net/Uri;

    .line 608
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mSoundUri:Landroid/net/Uri;

    invoke-virtual {v2, p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 610
    const v2, 0x3e0f5c29

    mul-float/2addr v0, v2

    .line 612
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 614
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 616
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_49} :catch_4a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_49} :catch_59

    .line 634
    .end local v0           #currentVol:F
    :goto_49
    return-void

    .line 618
    :catch_4a
    move-exception v1

    .line 620
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 621
    const-string v2, "Timer"

    const-string v3, "Failed load sound file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_49

    .line 625
    .end local v1           #ex:Ljava/io/IOException;
    :catch_59
    move-exception v1

    .line 627
    .local v1, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 629
    const-string v2, "Timer"

    const-string v3, "MediaPlayer is not normal state retry it."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/clockpackage/timer/TimerService;->startRing(Z)V

    goto :goto_49
.end method

.method private isVibrateMode()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 329
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 331
    .local v0, ringerMode:I
    if-eqz v0, :cond_f

    if-eq v0, v1, :cond_f

    iget v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->volumeValue:I

    if-nez v2, :cond_10

    :cond_f
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private declared-synchronized play()V
    .registers 3

    .prologue
    .line 338
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->stopAlarm()V

    .line 340
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerService$TimerNotificationHelper;->notify(Landroid/content/Context;)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    .line 367
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->isVibrateMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 369
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->startVibrate()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_24

    .line 383
    :goto_1d
    monitor-exit p0

    return-void

    .line 373
    :cond_1f
    const/4 v0, 0x0

    :try_start_20
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->startRing(Z)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_1d

    .line 338
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0

    .line 379
    :cond_27
    const/4 v0, 0x1

    :try_start_28
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->startRing(Z)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_24

    goto :goto_1d
.end method

.method private popUp()V
    .registers 3

    .prologue
    .line 321
    new-instance v0, Landroid/content/Intent;

    const-string v1, ".timer.popup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, popUp:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 325
    return-void
.end method

.method private startRing(Z)V
    .registers 10
    .parameter "isBeep"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 418
    const-string v4, "TimerService"

    const-string v5, "startRing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    if-eqz p1, :cond_1c

    .line 422
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "alertoncall_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 425
    .local v2, mAlertMode:I
    if-eq v2, v6, :cond_1c

    .line 544
    .end local v2           #mAlertMode:I
    :cond_1b
    :goto_1b
    return-void

    .line 430
    :cond_1c
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->audioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v7, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 433
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v4, :cond_1b

    .line 439
    const/4 v3, 0x0

    .line 444
    .local v3, uri:Ljava/lang/String;
    if-eqz p1, :cond_8e

    .line 445
    :try_start_2b
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->audioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->volumeValue:I

    .line 452
    :goto_36
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerService;->CheckAlarmOggFilePathByRegion()V

    .line 454
    if-eqz p1, :cond_9c

    .line 455
    const-string v4, "android.resource://com.sec.android.app.clockpackage/raw/s_alarms_in_call"

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_40
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2b .. :try_end_40} :catch_9a

    move-result-object v3

    .line 505
    :goto_41
    :try_start_41
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 506
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 508
    if-eqz p1, :cond_ab

    .line 509
    iget v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->volumeValue:I

    int-to-float v4, v4

    const v5, 0x3f19999a

    mul-float v0, v4, v5

    .line 510
    .local v0, currentVol:F
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 517
    :goto_5e
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 521
    const v4, 0x3e0f5c29

    mul-float/2addr v0, v4

    .line 523
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 524
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 525
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_7e} :catch_7f
    .catch Ljava/lang/NullPointerException; {:try_start_41 .. :try_end_7e} :catch_b5

    goto :goto_1b

    .line 527
    .end local v0           #currentVol:F
    :catch_7f
    move-exception v1

    .line 529
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 530
    const-string v4, "Timer"

    const-string v5, "Failed load sound file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->defaultStartAlarm()V

    goto :goto_1b

    .line 447
    .end local v1           #ex:Ljava/io/IOException;
    :cond_8e
    :try_start_8e
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "volume_progress_value"

    const/4 v6, 0x3

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->volumeValue:I

    goto :goto_36

    .line 461
    :catch_9a
    move-exception v4

    goto :goto_41

    .line 457
    :cond_9c
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "alarm_tone_uri"

    sget-object v6, Lcom/sec/android/app/clockpackage/timer/TimerService;->alarmogg:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a9
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_8e .. :try_end_a9} :catch_9a

    move-result-object v3

    goto :goto_41

    .line 513
    :cond_ab
    :try_start_ab
    iget v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->volumeValue:I

    int-to-float v0, v4

    .line 514
    .restart local v0       #currentVol:F
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b4} :catch_7f
    .catch Ljava/lang/NullPointerException; {:try_start_ab .. :try_end_b4} :catch_b5

    goto :goto_5e

    .line 534
    .end local v0           #currentVol:F
    :catch_b5
    move-exception v1

    .line 536
    .local v1, ex:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 538
    const-string v4, "Timer"

    const-string v5, "MediaPlayer is not normal state retry it."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/timer/TimerService;->startRing(Z)V

    goto/16 :goto_1b
.end method

.method private startVibrate()V
    .registers 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_5

    .line 400
    :goto_4
    return-void

    .line 395
    :cond_5
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->vibrator:Landroid/os/Vibrator;

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->vibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->VIBRATOR_PATTERN:[J

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_4
.end method

.method private stopAlarm()V
    .registers 2

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->stopVibrate()V

    .line 569
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->stopRing()V

    .line 571
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/timer/TimerService$TimerNotificationHelper;->cancel(Landroid/content/Context;)V

    .line 573
    return-void
.end method

.method private stopRing()V
    .registers 3

    .prologue
    .line 548
    const-string v0, "TimerService"

    const-string v1, "stopRing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_c

    .line 563
    :goto_b
    return-void

    .line 556
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_b
.end method

.method private stopVibrate()V
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->vibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_5

    .line 414
    :goto_4
    return-void

    .line 410
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->vibrator:Landroid/os/Vibrator;

    goto :goto_4
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 247
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 249
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "volume_progress_value"

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->volumeValue:I

    .line 251
    new-instance v1, Landroid/media/RingtoneManager;

    invoke-direct {v1, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v1, :cond_22

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mRingtoneManager:Landroid/media/RingtoneManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->setType(I)V

    .line 259
    :cond_22
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->activityManager:Landroid/app/ActivityManager;

    .line 261
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->audioManager:Landroid/media/AudioManager;

    .line 263
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/timer/TimerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 269
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "timer_volume_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->registerMotionListener()V

    .line 279
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->stopAlarm()V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 287
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->unregisterMotionListener()V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 291
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 301
    if-nez p1, :cond_7

    .line 303
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->stopSelf()V

    .line 305
    const/4 v0, 0x2

    .line 315
    :goto_6
    return v0

    .line 309
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->play()V

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->initialCallState:I

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->initialRingState:I

    .line 315
    const/4 v0, 0x1

    goto :goto_6
.end method

.method registerMotionListener()V
    .registers 3

    .prologue
    .line 102
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_e

    .line 103
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/TimerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 104
    :cond_e
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;)V

    .line 105
    return-void
.end method

.method unregisterMotionListener()V
    .registers 3

    .prologue
    .line 108
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_b

    .line 109
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerService;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 110
    :cond_b
    return-void
.end method
