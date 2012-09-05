.class public Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;
.super Landroid/app/Activity;
.source "LoudSpkLoopbackTest.java"


# instance fields
.field private final AUDIOPATH_EARPHONE:I

.field private DELAY:I

.field private final EARKEY_MODE:I

.field private final EAR_MODE:I

.field private LOG_TAG:Ljava/lang/String;

.field private final LOOPBACK_FIRST_COMMAND_TYPE:I

.field private final LOOPBACK_STATUS_OFF:I

.field private final LOOPBACK_STATUS_PACKET:I

.field private final LOOPBACK_STATUS_PCM:I

.field private final LOOPBACK_SUB_COMMAND_LOOPBACK_SET_TYPE:I

.field private final LOOPBACK_SUB_COMMAND_PATH_CTRL_TYPE:I

.field private final RECEIVER_MODE:I

.field private final STATUS_START:I

.field private final STATUS_STOP:I

.field private gotoExit:Z

.field private left:Landroid/widget/LinearLayout;

.field loudSpkModeRunnable:Ljava/lang/Runnable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrKey:I

.field private mCurrTime:J

.field private mEarCnt:I

.field private mEarKeyCnt:I

.field private mHandler:Landroid/os/Handler;

.field private mIsHeadsetPlugged:Z

.field private mMode:I

.field private mPrevKey:I

.field private mPrevTime:J

.field private onPause:Z

.field private phone:Lcom/android/internal/telephony/Phone;

.field pm:Landroid/os/PowerManager;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->STATUS_START:I

    .line 34
    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->STATUS_STOP:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->phone:Lcom/android/internal/telephony/Phone;

    .line 37
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->gotoExit:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->onPause:Z

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mHandler:Landroid/os/Handler;

    .line 41
    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mIsHeadsetPlugged:Z

    .line 42
    const/16 v0, 0x578

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->DELAY:I

    .line 43
    iput v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOOPBACK_FIRST_COMMAND_TYPE:I

    .line 44
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOOPBACK_SUB_COMMAND_PATH_CTRL_TYPE:I

    .line 45
    iput v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOOPBACK_SUB_COMMAND_LOOPBACK_SET_TYPE:I

    .line 46
    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOOPBACK_STATUS_OFF:I

    .line 47
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOOPBACK_STATUS_PCM:I

    .line 48
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOOPBACK_STATUS_PACKET:I

    .line 49
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->AUDIOPATH_EARPHONE:I

    .line 54
    const-string v0, "LoudSpkLoopbackTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOG_TAG:Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mMode:I

    .line 65
    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mEarCnt:I

    .line 66
    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mEarKeyCnt:I

    .line 67
    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->RECEIVER_MODE:I

    .line 68
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->EAR_MODE:I

    .line 69
    iput v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->EARKEY_MODE:I

    .line 98
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->loudSpkModeRunnable:Ljava/lang/Runnable;

    .line 373
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$2;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest$2;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->onPause:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->loopbackStart(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$408(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mEarCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mEarCnt:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->DELAY:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 142
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->phone:Lcom/android/internal/telephony/Phone;

    .line 143
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    .line 145
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    return-void
.end method

.method private loopbackStart(I)V
    .registers 11
    .parameter "state"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/16 v6, 0x8

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, data:[B
    const/4 v1, 0x5

    .line 231
    .local v1, fileSize:I
    const-string v3, "Loopback"

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

    .line 232
    const/4 v3, 0x1

    if-ne p1, v3, :cond_6f

    .line 233
    const/4 v3, 0x7

    invoke-direct {p0, v3, v6, v7, v7}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setEndModeData(IIII)[B

    move-result-object v0

    .line 234
    const-string v3, "Loopback"

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

    .line 235
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 236
    const/4 v2, 0x0

    .line 237
    .local v2, set_data:[B
    const/4 v3, 0x2

    invoke-direct {p0, v3, v6, v6, v7}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setEndModeData(IIII)[B

    move-result-object v2

    .line 238
    const-string v3, "Loopback"

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

    .line 239
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v2, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 245
    .end local v2           #set_data:[B
    :goto_6e
    return-void

    .line 241
    :cond_6f
    const/4 v3, 0x0

    invoke-direct {p0, v3, v6, v6, v7}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setEndModeData(IIII)[B

    move-result-object v0

    .line 242
    const-string v3, "Loopback"

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

    .line 243
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0, v8}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_6e
.end method

.method private setEndModeData(IIII)[B
    .registers 10
    .parameter "state"
    .parameter "RilFirstCommandType"
    .parameter "RilSecondCommandType"
    .parameter "FileSize"

    .prologue
    .line 249
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 250
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 253
    .local v1, dos:Ljava/io/DataOutputStream;
    :try_start_a
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 254
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 255
    invoke-virtual {v1, p4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 256
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_1b

    .line 261
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_1a
    return-object v3

    .line 257
    :catch_1b
    move-exception v2

    .line 258
    .local v2, e:Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOG_TAG:Ljava/lang/String;

    const-string v4, "IOException in getServMQueryData!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private startLoudSpkLoop()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 129
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-nez v0, :cond_16

    .line 131
    const-string v0, "Soni"

    const-string v1, "Setting Speaker on "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 134
    :cond_16
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v2, v1}, Landroid/media/AudioManager;->setRouting(III)V

    .line 136
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 138
    invoke-direct {p0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->loopbackStart(I)V

    .line 139
    return-void
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 349
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 350
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 351
    const/4 v0, 0x1

    .line 357
    :goto_24
    return v0

    .line 355
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mPrevKey:I

    .line 356
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mPrevTime:J

    .line 357
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v6, 0x0

    const v5, 0x7f09009d

    const/4 v4, 0x0

    .line 73
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v1, 0x7f030024

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, i:Landroid/content/Intent;
    const-string v1, "LOOPBACK_TEST_RESULT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mMode:I

    .line 80
    iput v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mEarCnt:I

    .line 81
    iput v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mEarKeyCnt:I

    .line 83
    invoke-virtual {p0, v5}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->left:Landroid/widget/LinearLayout;

    .line 84
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->pm:Landroid/os/PowerManager;

    .line 85
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->pm:Landroid/os/PowerManager;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 86
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 89
    iput v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mPrevKey:I

    .line 90
    iput-wide v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mPrevTime:J

    .line 91
    iput v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mCurrKey:I

    .line 92
    iput-wide v6, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mCurrTime:J

    .line 94
    invoke-virtual {p0, v5}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->left:Landroid/widget/LinearLayout;

    .line 95
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->init()V

    .line 96
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 124
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 125
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public onFinishAndGoToSpkTest()V
    .registers 3

    .prologue
    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->gotoExit:Z

    .line 394
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mMode:I

    const/16 v1, 0xd4

    if-ne v0, v1, :cond_12

    .line 395
    const/16 v0, 0xd7

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setResult(I)V

    .line 412
    :goto_e
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->finish()V

    .line 413
    return-void

    .line 397
    :cond_12
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mMode:I

    const/16 v1, 0xd3

    if-ne v0, v1, :cond_1e

    .line 398
    const/16 v0, 0xd6

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setResult(I)V

    goto :goto_e

    .line 400
    :cond_1e
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mMode:I

    const/16 v1, 0xd2

    if-ne v0, v1, :cond_2a

    .line 401
    const/16 v0, 0xd5

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setResult(I)V

    goto :goto_e

    .line 403
    :cond_2a
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mMode:I

    const/16 v1, 0xda

    if-ne v0, v1, :cond_36

    .line 404
    const/16 v0, 0xdc

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setResult(I)V

    goto :goto_e

    .line 406
    :cond_36
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mMode:I

    const/16 v1, 0xdb

    if-ne v0, v1, :cond_42

    .line 407
    const/16 v0, 0xdd

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setResult(I)V

    goto :goto_e

    .line 410
    :cond_42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setResult(I)V

    goto :goto_e
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x4f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    const-string v0, "KEYCODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOWN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mCurrKey:I

    .line 270
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mCurrTime:J

    .line 272
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2c

    .line 345
    :cond_2b
    :goto_2b
    return v4

    .line 276
    :cond_2c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_86

    .line 277
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->BackKeyCheck()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_2b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 279
    iput-boolean v4, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->gotoExit:Z

    .line 280
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mMode:I

    const/16 v1, 0xd4

    if-ne v0, v1, :cond_52

    .line 281
    const/16 v0, 0xcf

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setResult(I)V

    .line 309
    :goto_4e
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->finish()V

    goto :goto_2b

    .line 283
    :cond_52
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mMode:I

    const/16 v1, 0xd3

    if-ne v0, v1, :cond_5e

    .line 284
    const/16 v0, 0xce

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setResult(I)V

    goto :goto_4e

    .line 286
    :cond_5e
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mMode:I

    const/16 v1, 0xd2

    if-ne v0, v1, :cond_6a

    .line 287
    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setResult(I)V

    goto :goto_4e

    .line 289
    :cond_6a
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mMode:I

    const/16 v1, 0xda

    if-ne v0, v1, :cond_76

    .line 290
    const/16 v0, 0xd9

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setResult(I)V

    goto :goto_4e

    .line 292
    :cond_76
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mMode:I

    const/16 v1, 0xdb

    if-ne v0, v1, :cond_82

    .line 293
    const/16 v0, 0xd0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setResult(I)V

    goto :goto_4e

    .line 296
    :cond_82
    invoke-virtual {p0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setResult(I)V

    goto :goto_4e

    .line 317
    :cond_86
    const/16 v0, 0x52

    if-ne p1, v0, :cond_90

    .line 318
    iput-boolean v3, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->gotoExit:Z

    .line 319
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->onFinishAndGoToSpkTest()V

    goto :goto_2b

    .line 321
    :cond_90
    if-eq p1, v5, :cond_2b

    .line 329
    if-ne p1, v5, :cond_2b

    .line 330
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KEYCODE : KEYCODE_HEADSETHOOK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public declared-synchronized onPause()V
    .registers 3

    .prologue
    .line 215
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->onPause:Z

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 217
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 218
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->loudSpkModeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    .line 220
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->loudSpkModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    :cond_1e
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->pauseRoutine()V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_23

    .line 223
    monitor-exit p0

    return-void

    .line 215
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .registers 4

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->onPause:Z

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 114
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->phone:Lcom/android/internal/telephony/Phone;

    .line 115
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->startLoudSpkLoop()V

    .line 116
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 120
    monitor-exit p0

    return-void

    .line 111
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public pauseRoutine()V
    .registers 3

    .prologue
    .line 195
    const-string v0, "LoudSpkLoopbackTest"

    const-string v1, "pauseRoutine()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->loopbackStart(I)V

    .line 200
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mIsHeadsetPlugged:Z

    if-eqz v0, :cond_27

    .line 201
    const-string v0, "LoudSpkLoopbackTest"

    const-string v1, "setModeToNormalEarphone() start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setModeToNormalEarphone()V

    .line 207
    :goto_1e
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->gotoExit:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 210
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->finish()V

    .line 212
    :cond_26
    return-void

    .line 204
    :cond_27
    const-string v0, "LoudSpkLoopbackTest"

    const-string v1, "setModeToNormalSpeaker() start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->setModeToNormalSpeaker()V

    goto :goto_1e
.end method

.method public setModeToNormalEarphone()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 368
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x8

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 370
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 371
    return-void
.end method

.method public setModeToNormalSpeaker()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 362
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 364
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 365
    return-void
.end method
