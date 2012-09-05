.class public Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;
.super Landroid/app/Service;
.source "AlarmAlertInCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$WakeLock;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$LoBinder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mCount:I

.field private mOldVolume:I

.field private mTimer:Landroid/os/CountDownTimer;

.field private player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mOldVolume:I

    .line 29
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$LoBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$LoBinder;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mBinder:Landroid/os/IBinder;

    .line 165
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mCount:I

    return v0
.end method

.method static synthetic access$108(Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mCount:I

    return v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mCount:I

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 42
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 43
    const-string v0, "AlarmAlert"

    const-string v1, "..onBind.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 14
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mCount:I

    .line 54
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$WakeLock;->acquire(Landroid/content/Context;)V

    .line 56
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 57
    const-string v0, "AlarmAlert"

    const-string v1, "..onStart.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_13
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mOldVolume:I

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 66
    .local v7, mOriginVoiceCallVolume:I
    const-string v0, "ItemVolume"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 68
    .local v10, vol:I
    if-le v10, v7, :cond_34

    .line 69
    move v10, v7

    .line 70
    :cond_34
    if-gtz v10, :cond_37

    .line 71
    const/4 v10, 0x1

    .line 74
    :cond_37
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "alertoncall_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 77
    .local v6, mAlertMode:I
    if-ne v6, v3, :cond_79

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v3, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 82
    :goto_48
    packed-switch v6, :pswitch_data_cc

    .line 119
    :goto_4b
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->DEBUG:Z

    if-eqz v0, :cond_67

    .line 120
    const-string v0, "AlarmAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..mAlertMode.. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_67
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$1;

    const-wide/32 v2, 0xe678

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;JJ)V

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mTimer:Landroid/os/CountDownTimer;

    .line 136
    return-void

    .line 80
    :cond_79
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v10, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_48

    .line 92
    :pswitch_7f
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const-string v1, "android.resource://com.sec.android.app.clockpackage/raw/s_alarms_in_call"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Play(I)V

    goto :goto_4b

    .line 99
    :pswitch_9d
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    .line 101
    const-string v0, "VoiceString"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, str:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Play(I)V

    goto :goto_4b

    .line 110
    .end local v9           #str:Ljava/lang/String;
    :pswitch_be
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    .line 111
    .local v8, mVibPlayer:Landroid/os/Vibrator;
    const-wide/16 v0, 0x5dc

    invoke-virtual {v8, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_4b

    .line 82
    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_9d
        :pswitch_be
    .end packed-switch
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 6
    .parameter "intent"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mTimer:Landroid/os/CountDownTimer;

    .line 145
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 147
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService$WakeLock;->release()V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    if-eqz v0, :cond_26

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Release()V

    .line 157
    :cond_26
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
