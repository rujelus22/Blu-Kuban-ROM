.class public Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;
.super Landroid/app/Activity;
.source "AlarmAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$WakeLock;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;,
        Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;
    }
.end annotation


# instance fields
.field private m24HMode:Z

.field private mAMPM:Ljava/lang/String;

.field private mAlarmName:Landroid/widget/TextView;

.field private mAlarmTime:Landroid/widget/TextView;

.field private mAlarmTime_ampm:Landroid/widget/TextView;

.field private mAlertTimer:Landroid/os/CountDownTimer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonEffectSilentMode:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCount:I

.field private mCurrentTime:Landroid/widget/TextView;

.field private mCurrentTime_ampm:Landroid/widget/TextView;

.field private mEarphone_vib:Z

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mOldVolume:I

.field private mPause:Ljava/lang/Boolean;

.field private mPhoneStateExtra:Ljava/lang/String;

.field private mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

.field private mSecHand:Landroid/graphics/drawable/Drawable;

.field private mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

.field private mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

.field private mShutdownReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;

.field private mSnoozeActive:Z

.field private mSnoozeCount:I

.field private mSoundTone:Ljava/lang/String;

.field private mUserStop:Z

.field private mVoiceCount:I

.field private mVoiceString:Ljava/lang/String;

.field private mVolume:I

.field private mVolumeBehavior:I

.field private player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

.field private vol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    .line 91
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    .line 124
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;

    .line 126
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mUserStop:Z

    .line 132
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mEarphone_vib:Z

    .line 146
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mButtonEffectSilentMode:Z

    .line 148
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mConnection:Landroid/content/ServiceConnection;

    .line 1330
    return-void
.end method

.method private ChangeTextColor(I)V
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f080058

    const v3, 0x7f080059

    const v2, 0x7f08005a

    .line 916
    if-nez p1, :cond_4d

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 919
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime_ampm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 921
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 932
    :cond_4c
    :goto_4c
    return-void

    .line 924
    :cond_4d
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4c

    .line 926
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 927
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime_ampm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 928
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 929
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4c
.end method

.method static synthetic access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->ChangeTextColor(I)V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mUserStop:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pressStopBtn()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeActive:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pressSnoozeBtn()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPause:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPause:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;)Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mOldVolume:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Landroid/os/CountDownTimer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlertTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pausePlaying()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->stopAlarmSound()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->updateDisplay()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->defaultStop()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSoundTone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;

    return-object v0
.end method

.method private defaultStop()V
    .registers 4

    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeActive:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeCount:I

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    aget v1, v1, v2

    if-ge v0, v1, :cond_14

    .line 743
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pressSnoozeBtn()V

    .line 746
    :goto_13
    return-void

    .line 745
    :cond_14
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pressStopBtn()V

    goto :goto_13
.end method

.method private initContentView()V
    .registers 9

    .prologue
    const v7, 0x7f02016b

    const v6, 0x7f020003

    const/4 v5, 0x0

    .line 811
    const-string v0, "AlarmAlert"

    const-string v1, "..initContentView.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const v0, 0x7f0e0003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime:Landroid/widget/TextView;

    .line 814
    const v0, 0x7f0e0004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime_ampm:Landroid/widget/TextView;

    .line 815
    const v0, 0x7f0e0005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime:Landroid/widget/TextView;

    .line 816
    const v0, 0x7f0e0006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    .line 817
    const v0, 0x7f0e0007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmName:Landroid/widget/TextView;

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_81

    .line 819
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    .line 820
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_7c

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 822
    :cond_7c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    :cond_81
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmName:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$5;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 830
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->updateDisplay()V

    .line 832
    const v0, 0x7f0e0008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    if-eqz v0, :cond_eb

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setLeftHintText(I)V

    .line 837
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setRightHintText(I)V

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const v1, 0x7f02014e

    const v2, 0x7f02016c

    const v3, 0x7f020002

    const v4, 0x7f020016

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setLeftTabResources(IIII)V

    .line 845
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeActive:Z

    if-eqz v0, :cond_ec

    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeCount:I

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    aget v1, v1, v2

    if-ge v0, v1, :cond_ec

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setSnooze(Z)V

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const v1, 0x7f020150

    const v2, 0x7f020017

    invoke-virtual {v0, v1, v7, v6, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setRightTabResources(IIII)V

    .line 862
    :goto_e1
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$6;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setOnTriggerListener(Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab$OnTriggerListener;)V

    .line 911
    :cond_eb
    return-void

    .line 853
    :cond_ec
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setSnooze(Z)V

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    const v1, 0x7f020018

    invoke-virtual {v0, v5, v7, v6, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->setRightTabResources(IIII)V

    goto :goto_e1
.end method

.method private isInCallState()Z
    .registers 3

    .prologue
    .line 453
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 459
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private pausePlaying()V
    .registers 5

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->isInCallState()Z

    move-result v0

    if-nez v0, :cond_18

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Pause()V

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_18

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 471
    :cond_18
    return-void
.end method

.method private pressSnoozeBtn()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 687
    const-string v0, "AlarmAlert"

    const-string v1, "..pressSnoozeBtn.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    if-eqz v0, :cond_13

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 692
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    .line 695
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setIsFinishing()V

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlertTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 697
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getInstance()Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    move-result-object v0

    .line 698
    const v1, 0x10001000

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->cancel(Landroid/content/Context;I)V

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    if-eqz v0, :cond_3c

    .line 701
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->stopService(Landroid/content/Intent;)Z

    .line 703
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->unbindService(Landroid/content/ServiceConnection;)V

    .line 704
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    .line 706
    :cond_3c
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$WakeLock;->release()V

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    .line 708
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->updateAlarm(Z)V

    .line 709
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->finish()V

    .line 710
    return-void
.end method

.method private pressStopBtn()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 714
    const-string v0, "AlarmAlert"

    const-string v1, "..pressStopBtn.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    if-eqz v0, :cond_13

    .line 718
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 719
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    .line 722
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setIsFinishing()V

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlertTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 724
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getInstance()Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    move-result-object v0

    .line 725
    const v1, 0x10001000

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->cancel(Landroid/content/Context;I)V

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    if-eqz v0, :cond_3c

    .line 727
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->stopService(Landroid/content/Intent;)Z

    .line 729
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->unbindService(Landroid/content/ServiceConnection;)V

    .line 730
    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    .line 732
    :cond_3c
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$WakeLock;->release()V

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Stop()V

    .line 734
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->updateAlarm(Z)V

    .line 735
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->finish()V

    .line 736
    return-void
.end method

.method private setWinodowOnTop()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 752
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 753
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 754
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 755
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 756
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x80080

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 762
    return-void
.end method

.method private stopAlarmSound()V
    .registers 3

    .prologue
    .line 1107
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPause:Ljava/lang/Boolean;

    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPause:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPause(Z)V

    .line 1109
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pausePlaying()V

    .line 1110
    return-void
.end method

.method private updateAlarm(Z)V
    .registers 9
    .parameter "isSnooze"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 766
    const-string v1, "AlarmAlert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAlarm isSnooze : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    if-nez p1, :cond_46

    .line 769
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeActive:Z

    if-eqz v1, :cond_46

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeCount:I

    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeRepeat:I

    aget v2, v2, v3

    if-ge v1, v2, :cond_46

    .line 771
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->repeatType:I

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_c3

    .line 772
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getAlertDayCount()I

    move-result v1

    if-ne v1, v5, :cond_95

    .line 773
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v4, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 797
    :goto_43
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->updatedb()V

    .line 802
    :cond_46
    const-string v1, "AlarmAlert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlarmProvider.CONTENT_URI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const-string v1, "AlarmAlert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where : _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const-string v1, "AlarmAlert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selection : _id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-void

    .line 775
    :cond_95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 776
    .local v0, c:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->clearRepeatDay(Ljava/util/Calendar;)V

    .line 777
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 778
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateOriginalAlertTime()V

    .line 779
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v5, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 780
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v1, :cond_b9

    .line 781
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v6, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 783
    :cond_b9
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateFirstAlertTime()V

    .line 784
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v4, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    goto :goto_43

    .line 787
    .end local v0           #c:Ljava/util/Calendar;
    :cond_c3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 788
    .restart local v0       #c:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createTime:J

    .line 789
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateOriginalAlertTime()V

    .line 790
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v5, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 791
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueActivate:Z

    if-eqz v1, :cond_e2

    .line 792
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v6, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    .line 794
    :cond_e2
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->calculateFirstAlertTime()V

    .line 795
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iput v4, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    goto/16 :goto_43
.end method

.method private updateDisplay()V
    .registers 12

    .prologue
    const/16 v10, 0x8

    const/4 v2, 0x4

    const v9, 0x7f0b0026

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 936
    const-string v0, "AlarmAlert"

    const-string v1, "..updateDisplay.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->isPause()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    if-nez v0, :cond_34

    .line 939
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mButtonEffectSilentMode:Z

    if-eq v0, v8, :cond_34

    .line 940
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    if-eq v0, v1, :cond_34

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    invoke-virtual {v0, v2, v1, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 948
    :cond_34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 949
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m24HMode:Z

    .line 951
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 952
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 953
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v1, :cond_96

    .line 954
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m24HMode:Z

    if-eqz v1, :cond_183

    .line 955
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime_ampm:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 967
    :goto_57
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m24HMode:Z

    if-eqz v1, :cond_1b4

    .line 968
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    :goto_93
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setClockDial()V

    .line 981
    :cond_96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ee

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b006d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;

    .line 1032
    :goto_113
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeActive:Z

    if-eqz v0, :cond_175

    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeCount:I

    if-lez v0, :cond_175

    .line 1033
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    div-int/lit8 v0, v0, 0x64

    .line 1034
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmTime:I

    rem-int/lit8 v1, v1, 0x64

    .line 1035
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime:Landroid/widget/TextView;

    if-eqz v2, :cond_175

    .line 1036
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1037
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m24HMode:Z

    if-eqz v2, :cond_33e

    .line 1038
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1053
    :goto_139
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m24HMode:Z

    if-eqz v2, :cond_374

    .line 1054
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    :cond_175
    :goto_175
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I

    const/16 v1, 0x3b

    if-lt v0, v1, :cond_182

    .line 1068
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    if-eqz v0, :cond_182

    .line 1069
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->defaultStop()V

    .line 1071
    :cond_182
    return-void

    .line 957
    :cond_183
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Utilities;->getAmPmHour(I)I

    move-result v0

    .line 958
    if-gez v0, :cond_1a2

    .line 959
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    .line 960
    mul-int/lit8 v0, v0, -0x1

    .line 964
    :goto_199
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime_ampm:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_57

    .line 962
    :cond_1a2
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0027

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    goto :goto_199

    .line 971
    :cond_1b4
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCurrentTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%02d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_93

    .line 994
    :cond_1ee
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a4

    .line 995
    const-string v1, ""

    .line 996
    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m24HMode:Z

    if-nez v3, :cond_22b

    .line 997
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_294

    .line 998
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b006f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1003
    :cond_22b
    :goto_22b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b006d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;

    goto/16 :goto_113

    .line 1000
    :cond_294
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0070

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_22b

    .line 1016
    :cond_2a4
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m24HMode:Z

    if-eqz v1, :cond_2f3

    .line 1017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". It is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;

    goto/16 :goto_113

    .line 1021
    :cond_2f3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". It is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;

    goto/16 :goto_113

    .line 1040
    :cond_33e
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1041
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/Utilities;->getAmPmHour(I)I

    move-result v0

    .line 1042
    if-gez v0, :cond_362

    .line 1043
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    .line 1045
    mul-int/lit8 v0, v0, -0x1

    .line 1050
    :goto_359
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime_ampm:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_139

    .line 1047
    :cond_362
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    goto :goto_359

    .line 1057
    :cond_374
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlarmTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_175
.end method

.method private updatedb()V
    .registers 6

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1079
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    .line 1080
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1429
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_14

    move v0, v1

    .line 1430
    .local v0, up:Z
    :goto_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_30

    .line 1465
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_13
    :goto_13
    return v1

    .line 1429
    .end local v0           #up:Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_8

    .line 1434
    .restart local v0       #up:Z
    :pswitch_16
    if-eqz v0, :cond_13

    .line 1440
    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolumeBehavior:I

    packed-switch v2, :pswitch_data_38

    .line 1459
    :goto_1d
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->stopAlarmSound()V

    goto :goto_13

    .line 1442
    :pswitch_21
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pressSnoozeBtn()V

    goto :goto_1d

    .line 1446
    :pswitch_25
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pressStopBtn()V

    goto :goto_1d

    .line 1450
    :pswitch_29
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pausePlaying()V

    .line 1451
    iput-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mButtonEffectSilentMode:Z

    goto :goto_1d

    .line 1430
    nop

    :pswitch_data_30
    .packed-switch 0x18
        :pswitch_16
        :pswitch_16
    .end packed-switch

    .line 1440
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_21
        :pswitch_25
        :pswitch_29
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 11
    .parameter "newConfig"

    .prologue
    const/4 v8, 0x3

    .line 636
    const-string v5, "AlarmAlert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "..onConfigurationChanged.. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 639
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 640
    .local v2, orientationConfig:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 642
    .local v3, orientationDisplay:I
    move v1, v3

    .line 643
    .local v1, orientTemp:I
    if-ne v1, v8, :cond_3c

    .line 644
    const/4 v1, 0x1

    .line 646
    :cond_3c
    const-string v5, "AlarmAlert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "orientation fuzzed : config -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", display -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    add-int/lit8 v5, v2, -0x1

    if-eq v5, v1, :cond_76

    .line 649
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 650
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 651
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v3, :cond_b8

    .line 652
    const/4 v5, 0x1

    iput v5, v0, Landroid/content/res/Configuration;->orientation:I

    .line 655
    :goto_6f
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 661
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v4           #r:Landroid/content/res/Resources;
    :cond_76
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v5, v5, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-ne v5, v8, :cond_c3

    .line 662
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 663
    const v5, 0x7f03000c

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    .line 673
    :goto_9c
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSecHand:Landroid/graphics/drawable/Drawable;

    .line 675
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->initContentView()V

    .line 677
    const-string v5, "search"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SearchManager;

    invoke-virtual {v5}, Landroid/app/SearchManager;->stopSearch()V

    .line 678
    return-void

    .line 654
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v4       #r:Landroid/content/res/Resources;
    :cond_b8
    const/4 v5, 0x2

    iput v5, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_6f

    .line 665
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v4           #r:Landroid/content/res/Resources;
    :cond_bc
    const v5, 0x7f03000b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto :goto_9c

    .line 667
    :cond_c3
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e4

    .line 668
    const v5, 0x7f030001

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto :goto_9c

    .line 670
    :cond_e4
    const/high16 v5, 0x7f03

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto :goto_9c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const-wide/16 v4, 0x3e8

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 167
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->readFromIntent(Landroid/content/Intent;)V

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_PAUSE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v2, "sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v2, "android.intent.action.ACTION_POWEROFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const/16 v2, 0x3e7

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 189
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 193
    if-nez v0, :cond_199

    .line 194
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;

    .line 200
    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->id:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mId:I

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeDoneCount:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeCount:I

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-boolean v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->snoozeActivate:Z

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSnoozeActive:Z

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->soundUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSoundTone:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.sec.android.clockpackage.timer.TIMER_STOP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->sendBroadcast(Landroid/content/Intent;)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-ne v0, v7, :cond_1b2

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 214
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    .line 227
    :goto_bc
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setWinodowOnTop()V

    .line 228
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->initContentView()V

    .line 229
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$WakeLock;->acquire(Landroid/content/Context;)V

    .line 232
    const-string v0, "AlarmAlert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mOldVolume:I

    .line 248
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "volume_button_setting"

    const-string v3, "3"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->vol:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->vol:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolumeBehavior:I

    .line 252
    iput-boolean v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mButtonEffectSilentMode:Z

    .line 255
    iput v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceCount:I

    .line 256
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    .line 257
    iput v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setCallState(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->isInCallState()Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    const-string v2, "VoiceString"

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v2, "ItemVolume"

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 269
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 272
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$2;

    const-wide/32 v2, 0xe678

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;JJ)V

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlertTimer:Landroid/os/CountDownTimer;

    .line 357
    :cond_153
    :goto_153
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;

    const-wide/32 v2, 0xe678

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;JJ)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlertTimer:Landroid/os/CountDownTimer;

    .line 396
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->isInCallState()Z

    move-result v0

    if-eqz v0, :cond_16e

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    .line 400
    :cond_16e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    invoke-virtual {v0, v8, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 406
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->isInCallState()Z

    move-result v0

    if-nez v0, :cond_18e

    const-string v0, "true"

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18e

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlertTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 411
    :cond_18e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$4;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    return-void

    .line 195
    :cond_199
    if-ne v0, v1, :cond_1a1

    .line 196
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;

    goto/16 :goto_60

    .line 197
    :cond_1a1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_60

    .line 198
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;

    goto/16 :goto_60

    .line 216
    :cond_1aa
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto/16 :goto_bc

    .line 218
    :cond_1b2
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 219
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto/16 :goto_bc

    .line 221
    :cond_1d4
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto/16 :goto_bc

    .line 324
    :cond_1db
    const-string v0, "true"

    const-string v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_153

    .line 325
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "driving_mode_on"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_21f

    move v0, v1

    .line 327
    :goto_1f6
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_alarm_notification"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_221

    move v2, v1

    .line 330
    :goto_203
    if-eqz v0, :cond_207

    if-nez v2, :cond_20d

    :cond_207
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v0, v7, :cond_223

    .line 332
    :cond_20d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    .line 333
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceCount:I

    .line 337
    :goto_214
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSoundTone:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayResource(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_153

    :cond_21f
    move v0, v6

    .line 325
    goto :goto_1f6

    :cond_221
    move v2, v6

    .line 327
    goto :goto_203

    .line 335
    :cond_223
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    goto :goto_214
.end method

.method protected onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 603
    const-string v0, "AlarmAlert"

    const-string v1, "..onDestroy..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_17

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mOldVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 608
    iput v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mOldVolume:I

    .line 615
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Release()V

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    if-eqz v0, :cond_27

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 620
    iput-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;

    .line 622
    :cond_27
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    if-eqz v0, :cond_3c

    .line 623
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->stopService(Landroid/content/Intent;)Z

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->unbindService(Landroid/content/ServiceConnection;)V

    .line 626
    iput-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    .line 628
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 629
    iput-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mShutdownReceiver:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$ShutdownReceiver;

    .line 631
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 632
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1084
    const-string v0, "AlarmAlert"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..onKeyDown.. keyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    packed-switch p1, :pswitch_data_1e

    .line 1100
    :pswitch_1c
    return v3

    .line 1086
    nop

    :pswitch_data_1e
    .packed-switch 0x3
        :pswitch_1c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 487
    const-string v1, "AlarmAlert"

    const-string v2, "..onPause.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_e

    .line 494
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 496
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 498
    .local v0, sm:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_20

    .line 499
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 501
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    if-eqz v1, :cond_29

    .line 502
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->onPause()V

    .line 506
    :cond_29
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    if-eqz v1, :cond_32

    .line 507
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->inactiveHandle()V

    .line 510
    :cond_32
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 511
    return-void
.end method

.method protected onResume()V
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 515
    const-string v6, "AlarmAlert"

    const-string v7, "..onResume..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPause:Ljava/lang/Boolean;

    .line 519
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->isInCallState()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 520
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    .line 523
    :cond_1f
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v6, :cond_2b

    .line 524
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x4

    iget v8, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 527
    :cond_2b
    const-string v6, "keyguard"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 535
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v6, :cond_54

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-eqz v6, :cond_54

    .line 537
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .line 539
    .local v5, sm:Landroid/app/StatusBarManager;
    if-eqz v5, :cond_54

    .line 540
    const/high16 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 542
    .end local v5           #sm:Landroid/app/StatusBarManager;
    :cond_54
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    if-eqz v6, :cond_6f

    .line 543
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->onResume()V

    .line 546
    iget-boolean v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mButtonEffectSilentMode:Z

    if-nez v6, :cond_6f

    .line 547
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    iget v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Resume(I)V

    .line 548
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setVolume(F)V

    .line 556
    :cond_6f
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->orientation:I

    .line 557
    .local v2, orientationConfig:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 559
    .local v3, orientationDisplay:I
    move v1, v3

    .line 560
    .local v1, orientTemp:I
    if-ne v1, v10, :cond_8d

    .line 561
    const/4 v1, 0x1

    .line 563
    :cond_8d
    const-string v6, "AlarmAlert"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "orientation fuzzed : config -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", display -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    add-int/lit8 v6, v2, -0x1

    if-eq v6, v1, :cond_f0

    .line 566
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 567
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 568
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v3, :cond_10a

    .line 569
    const/4 v6, 0x1

    iput v6, v0, Landroid/content/res/Configuration;->orientation:I

    .line 572
    :goto_c0
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 576
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    iget v6, v6, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-ne v6, v10, :cond_115

    .line 577
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10e

    .line 578
    const v6, 0x7f03000c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    .line 589
    :goto_ed
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->initContentView()V

    .line 592
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v4           #r:Landroid/content/res/Resources;
    :cond_f0
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    if-eqz v6, :cond_f9

    .line 593
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSelector:Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;

    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmSlidingTab;->activeHandle()V

    .line 596
    :cond_f9
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSecHand:Landroid/graphics/drawable/Drawable;

    .line 598
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 599
    return-void

    .line 571
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v4       #r:Landroid/content/res/Resources;
    :cond_10a
    const/4 v6, 0x2

    iput v6, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_c0

    .line 580
    :cond_10e
    const v6, 0x7f03000b

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto :goto_ed

    .line 582
    :cond_115
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_136

    .line 583
    const v6, 0x7f030001

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto :goto_ed

    .line 585
    :cond_136
    const/high16 v6, 0x7f03

    invoke-virtual {p0, v6}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->setContentView(I)V

    goto :goto_ed
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 478
    const-string v0, "AlarmAlert"

    const-string v1, "..onStop.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 483
    return-void
.end method

.method protected setClockDial()V
    .registers 12

    .prologue
    const/16 v10, -0x2a

    const/16 v9, 0x500

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1376
    const/4 v0, 0x3

    new-array v3, v0, [I

    fill-array-data v3, :array_e4

    move v1, v2

    .line 1379
    :goto_e
    array-length v0, v3

    if-ge v1, v0, :cond_e2

    .line 1380
    aget v0, v3, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;

    .line 1381
    if-nez v0, :cond_1f

    .line 1379
    :cond_1b
    :goto_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 1385
    :cond_1f
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSecHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setSecondHand(Landroid/graphics/drawable/Drawable;)V

    .line 1386
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1388
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_3a

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v5, v9, :cond_4c

    :cond_3a
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v5, v9, :cond_60

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x320

    if-ne v5, v6, :cond_60

    .line 1390
    :cond_4c
    invoke-virtual {v0, v2, v10}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setHandsOffset(II)V

    .line 1401
    :goto_4f
    invoke-virtual {v0, v8}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    .line 1403
    iget-boolean v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->m24HMode:Z

    if-ne v4, v7, :cond_92

    .line 1404
    aget v4, v3, v1

    const/high16 v5, 0x7f0e

    if-ne v4, v5, :cond_8e

    .line 1405
    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto :goto_1b

    .line 1391
    :cond_60
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x2d0

    if-ne v5, v6, :cond_76

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v4, v9, :cond_76

    .line 1392
    invoke-virtual {v0, v2, v10}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setHandsOffset(II)V

    goto :goto_4f

    .line 1394
    :cond_76
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v7, :cond_88

    .line 1395
    const/16 v4, -0x15

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setHandsOffset(II)V

    goto :goto_4f

    .line 1397
    :cond_88
    const/16 v4, -0x10

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setHandsOffset(II)V

    goto :goto_4f

    .line 1407
    :cond_8e
    invoke-virtual {v0, v8}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto :goto_1b

    .line 1409
    :cond_92
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_ba

    .line 1411
    aget v4, v3, v1

    const v5, 0x7f0e0001

    if-ne v4, v5, :cond_b5

    .line 1412
    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1414
    :cond_b5
    invoke-virtual {v0, v8}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1415
    :cond_ba
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAMPM:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_1b

    .line 1417
    aget v4, v3, v1

    const v5, 0x7f0e0002

    if-ne v4, v5, :cond_dd

    .line 1418
    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1420
    :cond_dd
    invoke-virtual {v0, v8}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->setVisibility(I)V

    goto/16 :goto_1b

    .line 1424
    :cond_e2
    return-void

    .line 1376
    nop

    :array_e4
    .array-data 0x4
        0x0t 0x0t 0xet 0x7ft
        0x1t 0x0t 0xet 0x7ft
        0x2t 0x0t 0xet 0x7ft
    .end array-data
.end method
