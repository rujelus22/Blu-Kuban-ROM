.class public Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;
.super Landroid/app/Service;
.source "AlarmSmartAlertInCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$WakeLock;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$LoBinder;
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

.field private mVibPlayer:Landroid/os/Vibrator;

.field private player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mOldVolume:I

    .line 47
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$LoBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$LoBinder;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mBinder:Landroid/os/IBinder;

    .line 229
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mCount:I

    return v0
.end method

.method static synthetic access$108(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mCount:I

    return v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 225
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mCount:I

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 64
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 65
    const-string v0, "AlarmSmartAlert"

    const-string v1, "..onBind.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 13
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mCount:I

    .line 79
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$WakeLock;->acquire(Landroid/content/Context;)V

    .line 81
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 82
    const-string v0, "AlarmSmartAlert"

    const-string v1, "..onStart.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_13
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mOldVolume:I

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 91
    .local v7, mOriginVoiceCallVolume:I
    const-string v0, "ItemVolume"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 93
    .local v9, vol:I
    if-le v9, v7, :cond_34

    .line 95
    move v9, v7

    .line 97
    :cond_34
    if-gtz v9, :cond_37

    .line 99
    const/4 v9, 0x1

    .line 102
    :cond_37
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "alertoncall_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 104
    .local v6, mAlertMode:I
    if-ne v6, v3, :cond_7f

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v3, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 112
    :goto_48
    packed-switch v6, :pswitch_data_d8

    .line 166
    :goto_4b
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->DEBUG:Z

    if-eqz v0, :cond_67

    .line 167
    const-string v0, "AlarmSmartAlert"

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

    .line 169
    :cond_67
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$1;

    const-string v1, "PlayCount"

    const-wide/32 v2, 0x1b7740

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;JJ)V

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mTimer:Landroid/os/CountDownTimer;

    .line 191
    return-void

    .line 110
    :cond_7f
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v9, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_48

    .line 126
    :pswitch_85
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const-string v1, "android.resource://com.sec.android.app.clockpackage/raw/s_alarms_in_call"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Play(I)V

    goto :goto_4b

    .line 138
    :pswitch_a3
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    .line 142
    const-string v0, "VoiceString"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, str:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Play(I)V

    goto :goto_4b

    .line 152
    .end local v8           #str:Ljava/lang/String;
    :pswitch_c4
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mVibPlayer:Landroid/os/Vibrator;

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mVibPlayer:Landroid/os/Vibrator;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_4b

    .line 112
    nop

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_85
        :pswitch_a3
        :pswitch_c4
    .end packed-switch
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 6
    .parameter "intent"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mTimer:Landroid/os/CountDownTimer;

    .line 203
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 205
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService$WakeLock;->release()V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    if-eqz v0, :cond_26

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Release()V

    .line 219
    :cond_26
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
