.class public Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;
.super Landroid/app/Activity;
.source "LoopbackTest.java"


# static fields
.field private static final mHandler:Landroid/os/Handler;

.field private static final mLoopBackReStartHandler:Landroid/os/Handler;


# instance fields
.field private final AUDIOPATH_EARPHONE:I

.field private final DELAY:I

.field private final LOOPBACK_FIRST_COMMAND_TYPE:I

.field private final LOOPBACK_STATUS_OFF:I

.field private final LOOPBACK_STATUS_PACKET:I

.field private final LOOPBACK_STATUS_PCM:I

.field private final LOOPBACK_SUB_COMMAND_LOOPBACK_SET_TYPE:I

.field private final LOOPBACK_SUB_COMMAND_PATH_CTRL_TYPE:I

.field private final STATUS_START:I

.field private final STATUS_STOP:I

.field private gotoExit:Z

.field private left:Landroid/widget/LinearLayout;

.field loopbackStartRunnable:Ljava/lang/Runnable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrKey:I

.field private mCurrTime:J

.field private mEarCnt:I

.field private mEarKeyCnt:I

.field private mFinishNeeded:Z

.field private mIsHeadsetPlugged:Z

.field private mLoopbackInfo:Landroid/widget/TextView;

.field private mLoopbackTitle:Landroid/widget/TextView;

.field private mLoudSpeakerCnt:I

.field private mLoudSpeakerRunning:Z

.field private mPrevKey:I

.field private mPrevTime:J

.field private mReceiverCnt:I

.field private mReceiverMode:Z

.field private mReceiverRunning:Z

.field private mSendEndDectect:Z

.field private mWindowManager:Landroid/view/IWindowManager;

.field private onPause:Z

.field private phone:Lcom/android/internal/telephony/Phone;

.field pm:Landroid/os/PowerManager;

.field private remoteCall:Z

.field private vibrator:Landroid/os/Vibrator;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoopBackReStartHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->STATUS_START:I

    .line 44
    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->STATUS_STOP:I

    .line 46
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->LOOPBACK_FIRST_COMMAND_TYPE:I

    .line 47
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->LOOPBACK_SUB_COMMAND_PATH_CTRL_TYPE:I

    .line 48
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->LOOPBACK_SUB_COMMAND_LOOPBACK_SET_TYPE:I

    .line 49
    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->LOOPBACK_STATUS_OFF:I

    .line 50
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->LOOPBACK_STATUS_PCM:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->LOOPBACK_STATUS_PACKET:I

    .line 52
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->AUDIOPATH_EARPHONE:I

    .line 62
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mIsHeadsetPlugged:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverMode:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->remoteCall:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->gotoExit:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->onPause:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mSendEndDectect:Z

    .line 74
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->DELAY:I

    .line 75
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mFinishNeeded:Z

    .line 85
    iput-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->phone:Lcom/android/internal/telephony/Phone;

    .line 95
    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverCnt:I

    .line 96
    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarCnt:I

    .line 97
    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarKeyCnt:I

    .line 101
    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoudSpeakerCnt:I

    .line 103
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverRunning:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoudSpeakerRunning:Z

    .line 107
    iput-object v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->vibrator:Landroid/os/Vibrator;

    .line 372
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$3;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$3;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->loopbackStartRunnable:Ljava/lang/Runnable;

    .line 545
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$4;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->unSetHookText()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->startReceiverLoop()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->loopbackStart(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->onPause:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mFinishNeeded:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mFinishNeeded:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->startEarphoneLoop()V

    return-void
.end method

.method private changePathTwist()V
    .registers 5

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setModeToNormalSpeaker()V

    .line 369
    sget-object v0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoopBackReStartHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->loopbackStartRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 370
    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 230
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    .line 232
    const v0, 0x7f09009c

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoopbackInfo:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f09009b

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoopbackTitle:Landroid/widget/TextView;

    .line 234
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoopbackTitle:Landroid/widget/TextView;

    const-string v1, "PACKET LOOPBACK"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-ne v0, v3, :cond_36

    .line 238
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 240
    :cond_36
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 244
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->phone:Lcom/android/internal/telephony/Phone;

    .line 246
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 247
    iput-boolean v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mIsHeadsetPlugged:Z

    .line 248
    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverMode:Z

    .line 250
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->startEarphoneLoop()V

    .line 257
    :goto_51
    return-void

    .line 252
    :cond_52
    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mIsHeadsetPlugged:Z

    .line 253
    iput-boolean v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverMode:Z

    .line 254
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->startReceiverLoop()V

    goto :goto_51
.end method

.method private loopbackStart(I)V
    .registers 11
    .parameter "state"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/16 v6, 0x8

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, data:[B
    const/4 v1, 0x5

    .line 513
    .local v1, fileSize:I
    const-string v3, "LoopbackTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendData to Ril Reday state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v3, 0x1

    if-ne p1, v3, :cond_6f

    .line 515
    const/4 v3, 0x7

    invoke-direct {p0, v3, v6, v7, v7}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setEndModeData(IIII)[B

    move-result-object v0

    .line 516
    const-string v3, "LoopbackTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendData to Ril :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 518
    const/4 v2, 0x0

    .line 519
    .local v2, set_data:[B
    const/4 v3, 0x2

    invoke-direct {p0, v3, v6, v6, v7}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setEndModeData(IIII)[B

    move-result-object v2

    .line 520
    const-string v3, "LoopbackTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendData to Ril :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v2, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 527
    .end local v2           #set_data:[B
    :goto_6e
    return-void

    .line 523
    :cond_6f
    const/4 v3, 0x0

    invoke-direct {p0, v3, v6, v6, v7}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setEndModeData(IIII)[B

    move-result-object v0

    .line 524
    const-string v3, "LoopbackTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendData to Ril :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_6e
.end method

.method private pauseRoutine()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 494
    invoke-direct {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->loopbackStart(I)V

    .line 496
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mIsHeadsetPlugged:Z

    if-eqz v0, :cond_20

    .line 497
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setModeToNormalEarphone()V

    .line 501
    :goto_b
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 503
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->remoteCall:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->gotoExit:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 504
    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setResult(I)V

    .line 505
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->finish()V

    .line 507
    :cond_1f
    return-void

    .line 499
    :cond_20
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setModeToNormalSpeaker()V

    goto :goto_b
.end method

.method private playBeepByHook()V
    .registers 7

    .prologue
    .line 321
    const-wide/16 v0, 0x1f4

    .line 322
    .local v0, DURATION:J
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setHookText()V

    .line 323
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->startVibrate()V

    .line 324
    const-string v2, "LoopbackTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReceiveMode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverMode:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverMode:Z

    if-nez v2, :cond_37

    .line 327
    sget-object v2, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$1;

    invoke-direct {v3, p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    :goto_36
    return-void

    .line 333
    :cond_37
    sget-object v2, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$2;

    invoke-direct {v3, p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest$2;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_36
.end method

.method private setEndModeData(IIII)[B
    .registers 10
    .parameter "state"
    .parameter "RilFirstCommandType"
    .parameter "RilSecondCommandType"
    .parameter "FileSize"

    .prologue
    .line 530
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 531
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 534
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_a
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 535
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 536
    invoke-virtual {v1, p4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 537
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_1b

    .line 542
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_1a
    return-object v3

    .line 538
    :catch_1b
    move-exception v2

    .line 539
    .local v2, e:Ljava/io/IOException;
    const-string v3, "LoopbackTest"

    const-string v4, "IOException in getServMQueryData!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private setHookText()V
    .registers 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoopbackInfo:Landroid/widget/TextView;

    const-string v1, "EARPHONE SWITCH\nClicked"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method

.method private startEarphoneLoop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 380
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarCnt:I

    .line 382
    const-string v0, "LoopbackTest"

    const-string v1, "Earphone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoopbackInfo:Landroid/widget/TextView;

    const-string v1, "EAR PACKET\nLOOPBACK"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setModeToEarphoneMode()V

    .line 392
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->loopbackStart(I)V

    .line 393
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarCnt:I

    .line 394
    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverRunning:Z

    .line 395
    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoudSpeakerRunning:Z

    .line 396
    return-void
.end method

.method private startLoudSpkLoop()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 399
    const-string v0, "LoopbackTest"

    const-string v1, "startLoudSpkLoop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iput v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoudSpeakerCnt:I

    .line 401
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoopbackInfo:Landroid/widget/TextView;

    const-string v1, "LOUD SPEAKER"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-nez v0, :cond_27

    .line 403
    const-string v0, "Soni"

    const-string v1, "Setting Speaker on "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 406
    :cond_27
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v3, v1}, Landroid/media/AudioManager;->setRouting(III)V

    .line 408
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 410
    invoke-direct {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->loopbackStart(I)V

    .line 411
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoudSpeakerCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoudSpeakerCnt:I

    .line 412
    iput-boolean v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverRunning:Z

    .line 413
    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoudSpeakerRunning:Z

    .line 414
    return-void
.end method

.method private startReceiverLoop()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 351
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverCnt:I

    .line 354
    const-string v0, "LoopbackTest"

    const-string v1, "Reciever"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoopbackInfo:Landroid/widget/TextView;

    const-string v1, "RECEIVER PACKET\nLOOPBACK"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-ne v0, v3, :cond_1f

    .line 358
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 360
    :cond_1f
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 361
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->changePathTwist()V

    .line 362
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverCnt:I

    .line 363
    iput-boolean v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverRunning:Z

    .line 364
    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoudSpeakerRunning:Z

    .line 365
    return-void
.end method

.method private startVibrate()V
    .registers 6

    .prologue
    .line 260
    const-wide/16 v0, 0x1f4

    .line 261
    .local v0, DURATION:J
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    .line 262
    .local v2, vibrator:Landroid/os/Vibrator;
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 263
    return-void
.end method

.method private unSetHookText()V
    .registers 3

    .prologue
    .line 346
    const-string v0, "LoopbackTest"

    const-string v1, "unSetHookText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoopbackInfo:Landroid/widget/TextView;

    const-string v1, "EAR PACKET\nLOOPBACK"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    return-void
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 309
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 310
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 311
    const/4 v0, 0x1

    .line 317
    :goto_24
    return v0

    .line 315
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mPrevKey:I

    .line 316
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mPrevTime:J

    .line 317
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public decideRemote()V
    .registers 5

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 225
    .local v0, i:Landroid/content/Intent;
    const-string v1, "RemoteCall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->remoteCall:Z

    .line 226
    const-string v1, "LoopbackTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteCallValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->remoteCall:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v1, 0x7f030023

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setContentView(I)V

    .line 112
    const-string v1, "net.cdma.factory.incallmode"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, i:Landroid/content/Intent;
    const v1, 0x7f09009a

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->left:Landroid/widget/LinearLayout;

    .line 118
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->pm:Landroid/os/PowerManager;

    .line 119
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 120
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->pm:Landroid/os/PowerManager;

    const/16 v2, 0xa

    const-string v3, "LoopbackTest"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 121
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 122
    iput v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mPrevKey:I

    .line 123
    iput-wide v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mPrevTime:J

    .line 124
    iput v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mCurrKey:I

    .line 125
    iput-wide v5, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mCurrTime:J

    .line 142
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->init()V

    .line 143
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->decideRemote()V

    .line 144
    const-string v1, "LoopbackTest"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 168
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 185
    return-void
.end method

.method public onFinish()V
    .registers 5

    .prologue
    const/16 v3, 0xd9

    const/16 v2, 0xd0

    .line 470
    const-string v0, "LoopbackTest"

    const-string v1, "onFinish()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverCnt:I

    if-lez v0, :cond_31

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarCnt:I

    if-lez v0, :cond_31

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarKeyCnt:I

    if-lez v0, :cond_31

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoudSpeakerCnt:I

    if-lez v0, :cond_31

    .line 472
    const/16 v0, 0xcf

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setResult(I)V

    .line 489
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 490
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoopbackInfo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->finish()V

    return-void

    .line 474
    :cond_31
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverCnt:I

    if-lez v0, :cond_41

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarCnt:I

    if-lez v0, :cond_41

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarKeyCnt:I

    if-lez v0, :cond_41

    .line 475
    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setResult(I)V

    goto :goto_20

    .line 477
    :cond_41
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverCnt:I

    if-lez v0, :cond_53

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarCnt:I

    if-lez v0, :cond_53

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoudSpeakerCnt:I

    if-lez v0, :cond_53

    .line 478
    const/16 v0, 0xce

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setResult(I)V

    goto :goto_20

    .line 479
    :cond_53
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverCnt:I

    if-lez v0, :cond_5f

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarCnt:I

    if-lez v0, :cond_5f

    .line 480
    invoke-virtual {p0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setResult(I)V

    goto :goto_20

    .line 481
    :cond_5f
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverCnt:I

    if-lez v0, :cond_6d

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoudSpeakerCnt:I

    if-lez v0, :cond_6d

    .line 482
    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setResult(I)V

    goto :goto_20

    .line 483
    :cond_6d
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarCnt:I

    if-lez v0, :cond_79

    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarKeyCnt:I

    if-lez v0, :cond_79

    .line 484
    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setResult(I)V

    goto :goto_20

    .line 486
    :cond_79
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarCnt:I

    if-lez v0, :cond_20

    .line 487
    invoke-virtual {p0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->setResult(I)V

    goto :goto_20
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 267
    const-string v0, "LoopbackTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOWN, keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mCurrKey:I

    .line 269
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mCurrTime:J

    .line 270
    const/4 v0, 0x4

    if-ne p1, v0, :cond_45

    .line 271
    const-string v0, "LoopbackTest"

    const-string v1, "KEYCODE : This is back_key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->BackKeyCheck()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_44

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_44

    .line 274
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->onFinish()V

    .line 305
    :cond_44
    :goto_44
    return v3

    .line 276
    :cond_45
    const/16 v0, 0x18

    if-ne p1, v0, :cond_67

    .line 277
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mLoudSpeakerRunning:Z

    if-ne v0, v3, :cond_58

    .line 278
    const-string v0, "LoopbackTest"

    const-string v1, "onKeyDown startReceiverLoop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->startReceiverLoop()V

    goto :goto_44

    .line 281
    :cond_58
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverRunning:Z

    if-ne v0, v3, :cond_44

    .line 282
    const-string v0, "LoopbackTest"

    const-string v1, "onKeyDown startLoudSpkLoop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->startLoudSpkLoop()V

    goto :goto_44

    .line 286
    :cond_67
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_6f

    const/16 v0, 0xe1

    if-ne p1, v0, :cond_44

    .line 288
    :cond_6f
    const-string v0, "LoopbackTest"

    const-string v1, "!! KEYCODE_SEND_END on in Loopback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->left:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 291
    iput-boolean v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mSendEndDectect:Z

    .line 292
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarKeyCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mEarKeyCnt:I

    .line 301
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->playBeepByHook()V

    goto :goto_44
.end method

.method public declared-synchronized onPause()V
    .registers 6

    .prologue
    .line 148
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->onPause:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_35

    .line 151
    :try_start_7
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 152
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_35
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1f} :catch_30

    .line 157
    :cond_1f
    :goto_1f
    :try_start_1f
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 162
    const-string v1, "LoopbackTest"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->pauseRoutine()V
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_35

    .line 164
    monitor-exit p0

    return-void

    .line 154
    :catch_30
    move-exception v0

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    :try_start_31
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_1f

    .line 148
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onResume()V
    .registers 7

    .prologue
    .line 188
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->onPause:Z

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onResume()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_60

    .line 191
    :try_start_7
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 192
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_60
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1f} :catch_5b

    .line 197
    :cond_1f
    :goto_1f
    :try_start_1f
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 199
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v2, "com.android.LoopbackTest.Stop"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->phone:Lcom/android/internal/telephony/Phone;

    .line 204
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mFinishNeeded:Z

    .line 207
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 208
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mIsHeadsetPlugged:Z

    .line 209
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverMode:Z

    .line 211
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->startEarphoneLoop()V

    .line 218
    :goto_4d
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    const-string v2, "LoopbackTest"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_1f .. :try_end_59} :catchall_60

    .line 221
    monitor-exit p0

    return-void

    .line 194
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :catch_5b
    move-exception v0

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5c
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_1f

    .line 188
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_60
    move-exception v2

    monitor-exit p0

    throw v2

    .line 213
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    :cond_63
    const/4 v2, 0x0

    :try_start_64
    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mIsHeadsetPlugged:Z

    .line 214
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mReceiverMode:Z

    .line 215
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->startReceiverLoop()V
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_60

    goto :goto_4d
.end method

.method public setModeToEarphoneMode()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 423
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 424
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x8

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 425
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 426
    return-void
.end method

.method public setModeToNormalEarphone()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 436
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x8

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 437
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 438
    return-void
.end method

.method public setModeToNormalSpeaker()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 429
    const-string v0, "LoopbackTest"

    const-string v1, "setModeToNormalSpeaker"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 431
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 432
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 433
    return-void
.end method

.method public setModeToReceiverMode()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 417
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 419
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 420
    return-void
.end method
