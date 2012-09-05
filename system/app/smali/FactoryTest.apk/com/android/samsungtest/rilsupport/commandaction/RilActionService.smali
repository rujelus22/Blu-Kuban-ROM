.class public Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;
.super Landroid/app/Service;
.source "RilActionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;,
        Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$MainHandler;
    }
.end annotation


# static fields
.field private static LOOPBACK_START:I

.field private static LOOPBACK_STOP:I

.field private static mCameraStarted:Z

.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final AUDIOPATH_EARPHONE:I

.field private final LOOPBACK_FIRST_COMMAND_TYPE:I

.field private final LOOPBACK_STATUS_OFF:I

.field private final LOOPBACK_STATUS_PACKET:I

.field private final LOOPBACK_STATUS_PCM:I

.field private final LOOPBACK_SUB_COMMAND_LOOPBACK_SET_TYPE:I

.field private final LOOPBACK_SUB_COMMAND_PATH_CTRL_TYPE:I

.field private final MAX_BUFFER_SIZE:I

.field private mAttr:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryHealth:I

.field private mBatteryStatus:I

.field private mBatteryVoltage:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCmd:I

.field private mCommand:Ljava/lang/String;

.field private mData:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeadset:I

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLightData:I

.field private mLoopBackStatus:I

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProximityData:I

.field private mSensorListner:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorX:I

.field private mSensorY:I

.field private mSensorZ:I

.field private mWlanTest:I

.field private mp:Landroid/media/MediaPlayer;

.field private smsNumberOfDraftbox:I

.field private smsNumberOfInbox:I

.field private smsNumberOfOutbox:I

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 150
    const/4 v0, 0x1

    sput v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->LOOPBACK_START:I

    .line 151
    sput v1, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->LOOPBACK_STOP:I

    .line 153
    sput-boolean v1, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCameraStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 103
    iput v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    .line 109
    iput v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->smsNumberOfInbox:I

    .line 110
    iput v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->smsNumberOfOutbox:I

    .line 111
    iput v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->smsNumberOfDraftbox:I

    .line 119
    iput v3, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mProximityData:I

    .line 121
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 129
    iput-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->vibrator:Landroid/os/Vibrator;

    .line 136
    iput-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 139
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->MAX_BUFFER_SIZE:I

    .line 141
    iput v4, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->LOOPBACK_FIRST_COMMAND_TYPE:I

    .line 142
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->LOOPBACK_SUB_COMMAND_PATH_CTRL_TYPE:I

    .line 143
    iput v4, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->LOOPBACK_SUB_COMMAND_LOOPBACK_SET_TYPE:I

    .line 144
    iput v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->LOOPBACK_STATUS_OFF:I

    .line 145
    iput v3, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->LOOPBACK_STATUS_PCM:I

    .line 146
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->LOOPBACK_STATUS_PACKET:I

    .line 147
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->AUDIOPATH_EARPHONE:I

    .line 149
    iput v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLoopBackStatus:I

    .line 164
    new-instance v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$MainHandler;-><init>(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;)V

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mHandler:Landroid/os/Handler;

    .line 165
    iput-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mMountService:Landroid/os/storage/IMountService;

    .line 200
    new-instance v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;-><init>(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)V

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4826
    return-void
.end method

.method private BandSetting(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3546
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3547
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3549
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3550
    const-string v2, "CMDID"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3551
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3552
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3554
    :cond_1f
    return-void
.end method

.method private BandwidthSetting(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3557
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3558
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3560
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3561
    const-string v2, "CMDID"

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3562
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3563
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3565
    :cond_1f
    return-void
.end method

.method private BootVersionRead()V
    .registers 7

    .prologue
    .line 2044
    const-string v0, "ro.build.PDA"

    .line 2045
    .local v0, KEY_PDA_VER:Ljava/lang/String;
    const-string v1, "Unknown"

    .line 2047
    .local v1, KEY_UNKNOWN:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2048
    .local v2, pdaVersion:Ljava/lang/String;
    move-object v3, v2

    .line 2050
    .local v3, pda_eboot_info:Ljava/lang/String;
    iput-object v3, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2052
    const-string v4, "verRead"

    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2054
    return-void
.end method

.method private FmRadioOff()V
    .registers 3

    .prologue
    .line 4553
    new-instance v0, Landroid/content/Intent;

    const-string v1, "test.mode.radio.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4556
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4558
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4559
    return-void
.end method

.method private FmRadioOnEarphone(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 4528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4529
    new-instance v1, Landroid/content/Intent;

    const-string v2, "test.mode.radio.on.freq"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4530
    const-string v2, "frequency"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4531
    const-string v0, "output"

    const-string v2, "earphone"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4534
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4536
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4537
    return-void
.end method

.method private FmRadioOnSpeaker(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 4540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4541
    new-instance v1, Landroid/content/Intent;

    const-string v2, "test.mode.radio.on.freq"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4542
    const-string v2, "frequency"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4543
    const-string v0, "output"

    const-string v2, "speaker"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4546
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4548
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4550
    return-void
.end method

.method private FmRadioRSS(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 4562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stringToInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4563
    new-instance v1, Landroid/content/Intent;

    const-string v2, "test.mode.radio.freq"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4564
    const-string v2, "frequency"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4567
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4568
    return-void
.end method

.method private FullVersionRead()V
    .registers 20

    .prologue
    .line 2058
    const-string v1, "ril.sw_ver"

    .line 2059
    const-string v2, "ro.build.PDA"

    .line 2060
    const-string v3, "ro.product.model"

    .line 2061
    const-string v4, "ril.hw_ver"

    .line 2062
    const-string v5, "Unknown"

    .line 2063
    const-string v6, "ro.build.hidden_ver"

    .line 2064
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2065
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2066
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2067
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2068
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2069
    const/4 v4, 0x5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2070
    const/4 v4, 0x5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2071
    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 2072
    const-string v10, "N"

    .line 2073
    const/4 v1, 0x5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 2074
    const-string v1, "ril.official_cscver"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2075
    const-string v2, "ril.approved_cscver"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2076
    const-string v3, "RilActionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CSC official : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    const-string v3, "RilActionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CSC approve  : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    const-string v2, "none"

    const-string v3, "ril.approved_cscver"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 2079
    const-string v1, "ril.approved_cscver"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2083
    :cond_98
    const/4 v2, 0x5

    :try_start_99
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a0} :catch_1ea

    move-result-object v1

    .line 2090
    :goto_a1
    const-string v2, "N"

    .line 2091
    const-string v2, "N"

    .line 2092
    const-string v12, "S5K5BBGX"

    .line 2093
    const-string v4, "N"

    .line 2094
    const-string v3, "N"

    .line 2097
    new-instance v2, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    invoke-direct {v2}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;-><init>()V

    .line 2099
    new-instance v13, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-direct {v13}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;-><init>()V

    .line 2101
    invoke-virtual {v2}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->openCamera()Z

    .line 2102
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V

    .line 2103
    invoke-virtual {v2}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->startPreview()Z

    .line 2105
    const-string v14, "RilActionService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cam FW Ver : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Phone FW Ver : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    invoke-virtual {v13}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v14

    .line 2107
    invoke-virtual {v13}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v13

    .line 2108
    invoke-virtual {v2}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->stopPreview()V

    .line 2109
    invoke-virtual {v2}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->releaseCamera()V

    .line 2114
    :try_start_fd
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    const-string v16, "/sys/devices/virtual/sec/sec_touchkey/touch_version"

    invoke-direct/range {v15 .. v16}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2115
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 2116
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v16, "/sys/class/sec/sec_touchkey/touchkey_firm_version_phone"

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v15, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2117
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_11e} :catch_1f6

    move-result-object v2

    .line 2118
    :try_start_11f
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 2119
    const-string v3, "RilActionService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "touchkey firmware version : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_13d} :catch_21f

    move-result-object v3

    .line 2137
    :goto_13e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2151
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verRead : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2153
    return-void

    .line 2085
    :catch_1ea
    move-exception v1

    .line 2086
    const-string v1, "RilActionService"

    const-string v2, "Csc VersionRead Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    const-string v1, "N"

    goto/16 :goto_a1

    .line 2121
    :catch_1f6
    move-exception v2

    move-object/from16 v18, v2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, v18

    .line 2122
    :goto_1fd
    const-string v15, "RilActionService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "touchkey firmware version read exception : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_13e

    .line 2121
    :catch_21f
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v4

    move-object/from16 v4, v18

    goto :goto_1fd
.end method

.method private GyroscopeReadTemp()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 1639
    const-string v0, "RilActionService"

    const-string v1, "GyroscopeReadTemp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :try_start_8
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/K3G_GYRO-dev/k3g/gyro_get_temp"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1646
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 1649
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_31} :catch_32
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_31} :catch_37

    .line 1657
    :goto_31
    return-void

    .line 1651
    :catch_32
    move-exception v0

    .line 1652
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_31

    .line 1654
    :catch_37
    move-exception v0

    .line 1655
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_31
.end method

.method private GyroscopeTestResult()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 1660
    const-string v0, "RilActionService"

    const-string v1, "GyroscopeTestResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :try_start_8
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/K3G_GYRO-dev/k3g/gyro_selftest"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1667
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1668
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1670
    const/4 v1, 0x6

    new-array v1, v1, [I

    .line 1671
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/StringBuilder;

    .line 1673
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 1675
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1676
    const-string v1, "OK,"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 1964
    :goto_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 1967
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 1976
    :goto_92
    return-void

    .line 1679
    :cond_93
    const-string v1, "NG,"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    :try_end_97
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_97} :catch_98
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_97} :catch_9d

    goto :goto_35

    .line 1969
    :catch_98
    move-exception v0

    .line 1970
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_92

    .line 1972
    :catch_9d
    move-exception v0

    .line 1973
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_92
.end method

.method private InitGyroscope()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 1614
    const-string v0, "RilActionService"

    const-string v1, "InitGyroscope"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :try_start_8
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/K3G_GYRO-dev/k3g/gyro_power_on"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1621
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1623
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1624
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 1625
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 1636
    :goto_28
    return-void

    .line 1628
    :cond_29
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2d} :catch_33

    goto :goto_28

    .line 1630
    :catch_2e
    move-exception v0

    .line 1631
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_28

    .line 1633
    :catch_33
    move-exception v0

    .line 1634
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_28
.end method

.method private TurnOnFlash()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2918
    const-string v0, "RilActionService"

    const-string v1, "TurnOnFlash"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    const-string v0, "RilActionService"

    const-string v1, "FlashOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2922
    const-string v1, "flash_enable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2923
    const-string v1, "camera_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2924
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2925
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startActivity(Landroid/content/Intent;)V

    .line 2927
    sget-boolean v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCameraStarted:Z

    if-nez v0, :cond_37

    .line 2929
    const-string v0, "RilActionService"

    const-string v1, "Status set true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    sput-boolean v3, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCameraStarted:Z

    .line 2939
    :goto_36
    return-void

    .line 2934
    :cond_37
    const-string v0, "RilActionService"

    const-string v1, "Status check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.CameraStart.Status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2936
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_36
.end method

.method static synthetic access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorX:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorX:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorY:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorY:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorZ:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorZ:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mProximityData:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mProximityData:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mBatteryStatus:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mBatteryVoltage:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mBatteryHealth:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mHeadset:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mHeadset:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->parsing()V

    return-void
.end method

.method private autoKeyLock()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 4723
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SHOULD_SHUT_DOWN_FLAG"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4725
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SHOULD_SHUT_DOWN_FLAG"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4727
    const-string v1, "RilDFTACtion Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoKeyLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4728
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4729
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4730
    return-void
.end method

.method private autoKeyUnlock()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 4734
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SHOULD_SHUT_DOWN_FLAG"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4736
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SHOULD_SHUT_DOWN_FLAG"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4738
    const-string v1, "RilDFTACtion Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoKeyUnLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4740
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4741
    return-void
.end method

.method private autorotate_off()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5243
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5244
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5245
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 5246
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 5248
    :cond_1e
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 5249
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 5250
    return-void
.end method

.method private autorotate_on()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 5253
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5254
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 5255
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 5256
    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 5258
    :cond_1d
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 5259
    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 5260
    return-void
.end method

.method private autorotate_read()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 5263
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5264
    if-ne v0, v3, :cond_16

    .line 5265
    const-string v0, "ON"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 5271
    :goto_12
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 5272
    return-void

    .line 5266
    :cond_16
    if-nez v0, :cond_1d

    .line 5267
    const-string v0, "OFF"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_12

    .line 5269
    :cond_1d
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_12
.end method

.method private batteryStatus()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 2803
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mBatteryHealth:I

    if-ne v1, v0, :cond_18

    .line 2804
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mBatteryStatus:I

    if-ne v1, v0, :cond_13

    .line 2805
    const-string v0, "CHAR"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2821
    :cond_e
    :goto_e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2823
    return-void

    .line 2808
    :cond_13
    const-string v0, "BAOK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_e

    .line 2811
    :cond_18
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mBatteryHealth:I

    if-eq v0, v1, :cond_21

    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mBatteryHealth:I

    if-ne v2, v0, :cond_2a

    .line 2814
    :cond_21
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mBatteryStatus:I

    if-ne v2, v0, :cond_e

    .line 2815
    const-string v0, "JIGO"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_e

    .line 2819
    :cond_2a
    const-string v0, "BANO"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_e
.end method

.method private batteryVoltage()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 2827
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/power_supply/battery/batt_vol"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2828
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2829
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 2830
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2831
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_33} :catch_34
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_33} :catch_39

    .line 2839
    :goto_33
    return-void

    .line 2833
    :catch_34
    move-exception v0

    .line 2834
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_33

    .line 2836
    :catch_39
    move-exception v0

    .line 2837
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_33
.end method

.method private batterytype_check()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 5289
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/power_supply/battery/batt_type"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5290
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 5291
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_17} :catch_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_21

    .line 5298
    :goto_17
    return-void

    .line 5292
    :catch_18
    move-exception v0

    .line 5293
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 5294
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_17

    .line 5295
    :catch_21
    move-exception v0

    .line 5296
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_17
.end method

.method private btActivation()V
    .registers 2

    .prologue
    .line 2328
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2330
    .local v0, mBa:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 2332
    return-void
.end method

.method private btIdRead()V
    .registers 5

    .prologue
    .line 3355
    const-string v0, "ril.bt_macaddr"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3356
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btIdRead() - bdAddr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    const-string v1, "001247012345"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 3359
    const-string v0, "persist.service.brcm.bt.mac"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3363
    :goto_32
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btIdRead() - 1. mData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 3366
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 3367
    if-nez v0, :cond_8a

    .line 3368
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3380
    :cond_60
    :goto_60
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btIdRead() - 2. mData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3383
    return-void

    .line 3361
    :cond_7f
    const-string v0, "ril.bt_macaddr"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_32

    .line 3370
    :cond_8a
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3371
    :goto_94
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bluetooth Address CSJ address== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    if-nez v0, :cond_b5

    .line 3373
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_60

    .line 3370
    :cond_b3
    const/4 v0, 0x0

    goto :goto_94

    .line 3375
    :cond_b5
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3376
    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_60
.end method

.method private btIdWrite(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3386
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 3388
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 3390
    :cond_e
    const-string v1, ""

    .line 3392
    const/4 v0, 0x1

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5f

    .line 3393
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x34

    if-eq v2, v3, :cond_2e

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x36

    if-ne v2, v3, :cond_49

    .line 3394
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3392
    :goto_46
    add-int/lit8 v1, v1, 0x2

    goto :goto_14

    .line 3397
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 3401
    :cond_5f
    const/16 v1, 0xc

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3403
    const-string v1, "ril.bt_macaddr"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3405
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.BtIdWrite"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3406
    const-string v2, "ADDR"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3407
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3409
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3410
    return-void
.end method

.method private btNormalDeactivation()V
    .registers 2

    .prologue
    .line 2363
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2365
    .local v0, mBa:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 2368
    return-void
.end method

.method private btRfTest()V
    .registers 4

    .prologue
    .line 2372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2373
    const-string v1, "com.android.bluetoothtest"

    const-string v2, "com.android.bluetoothtest.BluetoothRfTest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2374
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2375
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startActivity(Landroid/content/Intent;)V

    .line 2376
    return-void
.end method

.method private btRfTestStop()V
    .registers 4

    .prologue
    .line 2380
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.RFTEST_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2381
    .local v0, i:Landroid/content/Intent;
    const-string v1, "bustle.jang"

    const-string v2, "action start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2383
    return-void
.end method

.method private btSearchStop()V
    .registers 2

    .prologue
    .line 2356
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2358
    .local v0, mBa:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 2360
    return-void
.end method

.method private btSearchWithAck()V
    .registers 6

    .prologue
    .line 2335
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2337
    .local v0, mBa:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 2339
    new-instance v1, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$2;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$2;-><init>(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)V

    .line 2351
    .local v1, mHandler:Landroid/os/Handler;
    const/4 v2, 0x0

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2353
    return-void
.end method

.method private burstIntervalSetting(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3536
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3537
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3539
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3540
    const-string v2, "CMDID"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3541
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3542
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3544
    :cond_1f
    return-void
.end method

.method private channelSetting(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3481
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 3482
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3484
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3485
    const-string v2, "CMDID"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3486
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3487
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3489
    :cond_1e
    return-void
.end method

.method private closeDut(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 3568
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    if-ne v0, v3, :cond_1d

    .line 3569
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3571
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3572
    const-string v2, "CMDID"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3573
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3574
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3576
    :cond_1d
    return-void
.end method

.method private cscVersionRead()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 2001
    const-string v0, "ro.build.PDA"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2002
    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2005
    :try_start_d
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "//system/CSCVersion.txt"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2006
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2008
    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->makeCscVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2010
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 2012
    const-string v0, "RilACtion Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSCVER :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_48} :catch_49
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_48} :catch_52

    .line 2023
    :goto_48
    return-void

    .line 2016
    :catch_49
    move-exception v0

    .line 2017
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2018
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_48

    .line 2020
    :catch_52
    move-exception v0

    .line 2021
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_48
.end method

.method private dataRateSetting(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3492
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 3493
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3495
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3496
    const-string v2, "CMDID"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3497
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3498
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3500
    :cond_1e
    return-void
.end method

.method private downloadMode()V
    .registers 4

    .prologue
    .line 4469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4470
    .local v0, i:Landroid/content/Intent;
    const-string v1, "reason"

    const-string v2, "download"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4471
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4472
    return-void
.end method

.method private earDetect()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2852
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mHeadset:I

    if-nez v0, :cond_d

    .line 2853
    const-string v0, "NOT FOUND"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2854
    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2862
    :cond_c
    :goto_c
    return-void

    .line 2856
    :cond_d
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mHeadset:I

    if-ne v0, v2, :cond_c

    .line 2857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2858
    const-string v1, "FOUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2859
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2860
    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_c
.end method

.method private earswitchInfoRead()V
    .registers 7

    .prologue
    .line 2283
    const-string v0, "RilAction Service"

    const-string v1, "earswitch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    const/4 v1, 0x0

    .line 2289
    :try_start_8
    new-instance v0, Ljava/io/FileReader;

    const-string v2, "/sys/devices/virtual/switch/send_end/state"

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_65
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_49

    .line 2292
    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileReader;->read()I

    move-result v1

    .line 2294
    const-string v2, "RilActionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    const/16 v2, 0x30

    if-ne v1, v2, :cond_3d

    const-string v1, "OFF"

    :goto_31
    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2298
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_75
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_37} :catch_7a

    .line 2306
    if-eqz v0, :cond_3c

    .line 2308
    :try_start_39
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_40

    .line 2316
    :cond_3c
    :goto_3c
    return-void

    .line 2296
    :cond_3d
    :try_start_3d
    const-string v1, "ON"
    :try_end_3f
    .catchall {:try_start_3d .. :try_end_3f} :catchall_75
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3f} :catch_7a

    goto :goto_31

    .line 2309
    :catch_40
    move-exception v0

    .line 2310
    const-string v0, "RilActionService"

    const-string v1, "File open error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 2300
    :catch_49
    move-exception v0

    move-object v0, v1

    .line 2301
    :goto_4b
    :try_start_4b
    const-string v1, "RilActionService"

    const-string v2, "File open error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_75

    .line 2306
    if-eqz v0, :cond_3c

    .line 2308
    :try_start_58
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_3c

    .line 2309
    :catch_5c
    move-exception v0

    .line 2310
    const-string v0, "RilActionService"

    const-string v1, "File open error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 2306
    :catchall_65
    move-exception v0

    :goto_66
    if-eqz v1, :cond_6b

    .line 2308
    :try_start_68
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    .line 2311
    :cond_6b
    throw v0

    .line 2309
    :catch_6c
    move-exception v0

    .line 2310
    const-string v0, "RilActionService"

    const-string v1, "File open error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 2306
    :catchall_75
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_66

    .line 2300
    :catch_7a
    move-exception v1

    goto :goto_4b
.end method

.method private externalMEMOSize()V
    .registers 10

    .prologue
    const-wide/16 v6, 0x400

    .line 2608
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2609
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2611
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    .line 2612
    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    div-long/2addr v0, v6

    .line 2613
    sub-long v4, v2, v0

    .line 2614
    const-string v6, "RilActionServicet"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[External]TotalMass : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "KB, FreeMass : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB, UsedMass : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2620
    const-string v0, "RilActionServicet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mainSpace() mData :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2622
    return-void
.end method

.method private externalMEMOSizeSd()V
    .registers 11

    .prologue
    const-wide/16 v6, 0x400

    const/4 v9, 0x1

    .line 2626
    .line 2627
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2628
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 2630
    aget-object v0, v0, v9

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2632
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2634
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    .line 2635
    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    div-long/2addr v0, v6

    .line 2636
    sub-long v4, v2, v0

    .line 2637
    const-string v6, "RilActionServicet"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[External]TotalMass : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "KB, FreeMass : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB, UsedMass : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2643
    const-string v0, "RilActionServicet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mainSpace() mData :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    invoke-direct {p0, v9}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2645
    return-void
.end method

.method private extraDetect()V
    .registers 3

    .prologue
    .line 2511
    const-string v0, "mounted"

    .line 2514
    .local v0, mState:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getExternalState()Ljava/lang/String;

    move-result-object v0

    .line 2516
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2517
    :cond_1e
    const-string v1, "OK"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2522
    :goto_22
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2524
    return-void

    .line 2520
    :cond_27
    const-string v1, "NG"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_22
.end method

.method private extraMount()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2527
    const-string v0, "mounted"

    .line 2530
    .local v0, mState:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getExternalState()Ljava/lang/String;

    move-result-object v0

    .line 2532
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2533
    :cond_17
    const-string v1, "OK"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2534
    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2541
    :goto_1e
    return-void

    .line 2537
    :cond_1f
    const-string v1, "NG"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2538
    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_1e
.end method

.method private factoryReset()V
    .registers 3

    .prologue
    .line 2648
    const-string v0, "RilActionService"

    const-string v1, "Factory reset !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2656
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2657
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startActivity(Landroid/content/Intent;)V

    .line 2658
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2659
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2660
    return-void
.end method

.method private factory_15TestApp_Start()V
    .registers 4

    .prologue
    .line 4196
    const-string v1, "gsm.default.esn"

    const-string v2, "TRUE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    const-string v2, "android_secret_code://46744674"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4198
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4200
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.provider.Telephony.SECRET_CODE"

    const-string v2, "android_secret_code://$$15"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4201
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4202
    const-string v1, "OK"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4203
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4204
    return-void
.end method

.method private factory_Home_Start()V
    .registers 16

    .prologue
    .line 4215
    const-string v0, "RilActionService"

    const-string v1, "factory_Home_Start() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4219
    const-string v0, "03"

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 4220
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 4221
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-wide v8, v1

    move-wide v10, v1

    move v13, v6

    invoke-direct/range {v7 .. v14}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 4222
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    .line 4223
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v7, v1}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    .line 4225
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4226
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_49} :catch_4a

    .line 4232
    :goto_49
    return-void

    .line 4227
    :catch_4a
    move-exception v0

    .line 4228
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Send Home Key Event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4229
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4230
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_49
.end method

.method private factory_LCDTestApp_Start()V
    .registers 4

    .prologue
    .line 4207
    const-string v0, "RilActionService"

    const-string v1, "factory_LCDTestApp_Start() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    const-string v2, "android_secret_code://0*"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4209
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4210
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4212
    return-void
.end method

.method private formatSDCard()V
    .registers 6

    .prologue
    .line 5472
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x7ce

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 5473
    .local v1, passMsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x7cf

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5474
    .local v0, failMsg:Landroid/os/Message;
    new-instance v2, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;-><init>(Landroid/content/Context;Landroid/os/Message;Landroid/os/Message;)V

    .line 5475
    .local v2, sdcardFormat:Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;
    invoke-virtual {v2}, Lcom/android/samsungtest/SimpleFunctionTest/SDCardFormat;->startSDCardFormat()V

    .line 5476
    return-void
.end method

.method private frontCameraPreview()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2866
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2867
    const-string v1, "camera_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2868
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2869
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startActivity(Landroid/content/Intent;)V

    .line 2871
    sget-boolean v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCameraStarted:Z

    if-nez v0, :cond_23

    .line 2873
    const-string v0, "RilActionService"

    const-string v1, "Status set true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    sput-boolean v2, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCameraStarted:Z

    .line 2882
    :goto_22
    return-void

    .line 2878
    :cond_23
    const-string v0, "RilActionService"

    const-string v1, "Status check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.CameraStart.Status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2880
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_22
.end method

.method private fuel_gauge_read()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 4704
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/power_supply/fuelgauge/fg_read_soc"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4705
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4706
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 4707
    const-string v0, "fuel_gauge_read"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fuel gauge read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4708
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_34} :catch_35
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_34} :catch_41

    .line 4719
    :goto_34
    return-void

    .line 4710
    :catch_35
    move-exception v0

    .line 4711
    const-string v0, "fuel_gauge_read"

    const-string v1, "FileNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4712
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_34

    .line 4715
    :catch_41
    move-exception v0

    .line 4716
    const-string v1, "fuel_gauge_read"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4717
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_34
.end method

.method private fuel_gauge_reset()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 4683
    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/sys/class/power_supply/fuelgauge/fg_reset_soc"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 4684
    const-string v1, "0"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4685
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4686
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 4687
    const-string v0, "fuel_gauge_reset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fuel gauge reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4688
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_3a} :catch_3b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3a} :catch_47

    .line 4699
    :goto_3a
    return-void

    .line 4690
    :catch_3b
    move-exception v0

    .line 4691
    const-string v0, "fuel_gauge_reset"

    const-string v1, "FileNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4692
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_3a

    .line 4695
    :catch_47
    move-exception v0

    .line 4696
    const-string v1, "fuel_gauge_reset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4697
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_3a
.end method

.method private getExternalState()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2496
    const-string v0, "unmounted"

    .line 2497
    const-string v0, "/mnt/sdcard/external_sd"

    .line 2500
    :try_start_4
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 2501
    invoke-interface {v1, v0}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2502
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusExternal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_25

    .line 2506
    :goto_24
    return-object v0

    .line 2503
    :catch_25
    move-exception v0

    .line 2504
    const-string v0, "unmounted"

    goto :goto_24
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .registers 3

    .prologue
    .line 2482
    monitor-enter p0

    :try_start_1
    const-string v0, "RilActionService"

    const-string v1, "getMountService ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mMountService:Landroid/os/storage/IMountService;

    if-nez v0, :cond_1a

    .line 2484
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2485
    if-eqz v0, :cond_1e

    .line 2486
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mMountService:Landroid/os/storage/IMountService;

    .line 2491
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mMountService:Landroid/os/storage/IMountService;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_26

    monitor-exit p0

    return-object v0

    .line 2488
    :cond_1e
    :try_start_1e
    const-string v0, "RilActionService"

    const-string v1, "Can\'t get mount service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    goto :goto_1a

    .line 2482
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private goToSleep()V
    .registers 4

    .prologue
    .line 2260
    const-string v0, "RilACtion Service"

    const-string v1, "Sleep Start!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2264
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 2267
    return-void
.end method

.method private gsensorOff()V
    .registers 3

    .prologue
    .line 2959
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorListner:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2960
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2961
    return-void
.end method

.method private gsensorOn()V
    .registers 5

    .prologue
    .line 2949
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2950
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 2951
    .local v0, mAccelerometerSensor:Landroid/hardware/Sensor;
    new-instance v1, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;-><init>(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;)V

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorListner:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;

    .line 2952
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorListner:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2955
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2956
    return-void
.end method

.method private handleWimaxCmds(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x1

    .line 5187
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWimaxCmds : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5189
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5191
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5193
    const-string v1, "000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 5194
    const-string v0, "com.android.samsungtest.wimaxtest.WTM"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5195
    const-string v0, "WTM"

    const-string v1, "STOP"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5238
    :goto_39
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wimax test : Sending broadcast : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5239
    invoke-virtual {p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 5240
    :goto_54
    return-void

    .line 5196
    :cond_55
    const-string v1, "000100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 5197
    const-string v0, "com.android.samsungtest.wimaxtest.WTM"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5198
    const-string v0, "WTM"

    const-string v1, "RFSTART"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_39

    .line 5199
    :cond_6a
    const-string v1, "000300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 5200
    const-string v0, "com.android.samsungtest.wimaxtest.WTM"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5201
    const-string v0, "WTM"

    const-string v1, "CERSTART"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_39

    .line 5202
    :cond_7f
    const-string v1, "000400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 5203
    const-string v0, "com.android.samsungtest.wimaxtest.SMDTEST"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5204
    const-string v0, "BootWrite"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_39

    .line 5205
    :cond_92
    const-string v1, "000500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 5206
    const-string v0, "com.android.samsungtest.wimaxtest.SMDTEST"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5207
    const-string v0, "ModemOff"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_39

    .line 5208
    :cond_a5
    const-string v1, "000501"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 5209
    const-string v0, "com.android.samsungtest.wimaxtest.SMDTEST"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5210
    const-string v0, "ModemOn"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_39

    .line 5211
    :cond_b8
    const-string v1, "000601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 5212
    const-string v0, "com.android.samsungtest.wimaxtest.App"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5213
    const-string v0, "AppOn"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_39

    .line 5214
    :cond_cc
    const-string v1, "000600"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 5215
    const-string v0, "com.android.samsungtest.wimaxtest.App"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5216
    const-string v0, "AppOff"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_39

    .line 5217
    :cond_e0
    const-string v1, "010100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 5218
    const-string v0, "com.android.samsungtest.wimaxtest.MAC"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5219
    const-string v0, "MacRead"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_39

    .line 5220
    :cond_f4
    const-string v1, "020000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 5221
    const/16 v0, 0x24

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 5222
    const-string v1, ""

    .line 5224
    const/4 v0, 0x0

    :goto_105
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_12e

    .line 5225
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 5226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5224
    add-int/lit8 v0, v0, 0x2

    goto :goto_105

    .line 5228
    :cond_12e
    const-string v0, "com.android.samsungtest.wimaxtest.MAC"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5229
    const-string v0, "MacWrite"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_39

    .line 5232
    :cond_13a
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid wimax subcommand : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5233
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_54
.end method

.method private hdcpCheck(I)V
    .registers 5
    .parameter

    .prologue
    .line 5454
    packed-switch p1, :pswitch_data_34

    .line 5462
    :try_start_3
    const-string v0, "ERROR"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_1d

    .line 5468
    :goto_7
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 5469
    return-void

    .line 5456
    :pswitch_c
    :try_start_c
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/radio/hatp/check_result"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1c} :catch_1d

    goto :goto_7

    .line 5465
    :catch_1d
    move-exception v0

    .line 5466
    const-string v0, "NG_KEY"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_7

    .line 5459
    :pswitch_23
    :try_start_23
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/radio/hatp/check_result_13"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_33} :catch_1d

    goto :goto_7

    .line 5454
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_c
        :pswitch_23
    .end packed-switch
.end method

.method private hdmi_check()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 5366
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/mhl/test_result"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5368
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 5369
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 5370
    const-string v1, "OK"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 5374
    :goto_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 5375
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 5382
    :goto_28
    return-void

    .line 5372
    :cond_29
    const-string v1, "NG"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2d} :catch_37

    goto :goto_21

    .line 5376
    :catch_2e
    move-exception v0

    .line 5377
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 5378
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_28

    .line 5379
    :catch_37
    move-exception v0

    .line 5380
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_28
.end method

.method private hexStringToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 4869
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28

    .line 4871
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4873
    new-instance v0, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v0, p1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 4875
    const/4 v0, 0x0

    :goto_17
    array-length v3, v2

    if-ge v0, v3, :cond_23

    .line 4876
    aget-byte v3, v2, v0

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4875
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 4879
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4881
    :goto_27
    return-object v0

    :cond_28
    const-string v0, "0"

    goto :goto_27
.end method

.method private innerDetect()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2544
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 2545
    .local v0, path:Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2547
    .local v1, stat:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    if-lez v2, :cond_1c

    .line 2548
    const-string v2, "OK"

    iput-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2549
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2556
    :goto_1b
    return-void

    .line 2552
    :cond_1c
    const-string v2, "NG"

    iput-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2553
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_1b
.end method

.method private innerSpace()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 2570
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/block/mmcblk0/size"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2571
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 2572
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 2573
    const-string v0, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoviNand size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x200

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2576
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoviNand mData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_5a} :catch_5b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5a} :catch_60

    .line 2585
    :goto_5a
    return-void

    .line 2579
    :catch_5b
    move-exception v0

    .line 2580
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_5a

    .line 2582
    :catch_60
    move-exception v0

    .line 2583
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_5a
.end method

.method private isMovinandChecksum()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 4744
    .line 4748
    :try_start_2
    new-instance v2, Ljava/io/FileReader;

    const-string v0, "/mnt/.lfs/movinand_checksum_done"

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_a3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_cf

    .line 4749
    :try_start_9
    new-instance v0, Ljava/io/FileReader;

    const-string v3, "/mnt/.lfs/movinand_checksum_pass"

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_c2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_d2

    .line 4753
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileReader;->read()I

    move-result v1

    .line 4754
    const-string v3, "RilActionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4756
    if-ne v1, v6, :cond_62

    .line 4757
    invoke-virtual {v0}, Ljava/io/FileReader;->read()I

    move-result v1

    .line 4758
    const-string v3, "RilActionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4760
    if-nez v1, :cond_5f

    const-string v1, "NG"

    :goto_4e
    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4764
    :goto_50
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_54
    .catchall {:try_start_10 .. :try_end_54} :catchall_c4
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_54} :catch_67

    .line 4772
    if-eqz v0, :cond_59

    .line 4774
    :try_start_56
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_88

    .line 4780
    :cond_59
    if-eqz v2, :cond_5e

    .line 4782
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_91

    .line 4789
    :cond_5e
    :goto_5e
    return-void

    .line 4760
    :cond_5f
    :try_start_5f
    const-string v1, "OK"

    goto :goto_4e

    .line 4763
    :cond_62
    const-string v1, "NG"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_c4
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_66} :catch_67

    goto :goto_50

    .line 4766
    :catch_67
    move-exception v1

    move-object v1, v2

    .line 4767
    :goto_69
    :try_start_69
    const-string v2, "RilActionService"

    const-string v3, "File open error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4768
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_74
    .catchall {:try_start_69 .. :try_end_74} :catchall_c9

    .line 4772
    if-eqz v0, :cond_79

    .line 4774
    :try_start_76
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_9a

    .line 4780
    :cond_79
    if-eqz v1, :cond_5e

    .line 4782
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_5e

    .line 4783
    :catch_7f
    move-exception v0

    .line 4784
    const-string v0, "RilActionService"

    const-string v1, "File open error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 4775
    :catch_88
    move-exception v0

    .line 4776
    const-string v0, "RilActionService"

    const-string v1, "File open error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 4783
    :catch_91
    move-exception v0

    .line 4784
    const-string v0, "RilActionService"

    const-string v1, "File open error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 4775
    :catch_9a
    move-exception v0

    .line 4776
    const-string v0, "RilActionService"

    const-string v1, "File open error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 4772
    :catchall_a3
    move-exception v0

    move-object v2, v1

    :goto_a5
    if-eqz v1, :cond_aa

    .line 4774
    :try_start_a7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_b0

    .line 4780
    :cond_aa
    if-eqz v2, :cond_af

    .line 4782
    :try_start_ac
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b9

    .line 4785
    :cond_af
    throw v0

    .line 4775
    :catch_b0
    move-exception v0

    .line 4776
    const-string v0, "RilActionService"

    const-string v1, "File open error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 4783
    :catch_b9
    move-exception v0

    .line 4784
    const-string v0, "RilActionService"

    const-string v1, "File open error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 4772
    :catchall_c2
    move-exception v0

    goto :goto_a5

    :catchall_c4
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_a5

    :catchall_c9
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_a5

    .line 4766
    :catch_cf
    move-exception v0

    move-object v0, v1

    goto :goto_69

    :catch_d2
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_69
.end method

.method private joinAP(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3678
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3679
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3681
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3682
    const-string v2, "CMDID"

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3683
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3684
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3686
    :cond_1f
    return-void
.end method

.method private keyShortTest()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    .line 3452
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "sys/class/sec/sec_key/sec_key_pressed"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3453
    .local v0, buf:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3454
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 3455
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    const-string v4, "RELEASE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 3456
    const-string v3, "RELEASE"

    iput-object v3, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3460
    :cond_24
    :goto_24
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3468
    .end local v0           #buf:Ljava/io/BufferedReader;
    :goto_28
    return-void

    .line 3457
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_29
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    const-string v4, "PRESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 3458
    const-string v3, "PRESS"

    iput-object v3, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_37} :catch_38
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_37} :catch_3d

    goto :goto_24

    .line 3462
    .end local v0           #buf:Ljava/io/BufferedReader;
    :catch_38
    move-exception v2

    .line 3463
    .local v2, ex:Ljava/io/FileNotFoundException;
    invoke-direct {p0, v5}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_28

    .line 3465
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catch_3d
    move-exception v1

    .line 3466
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0, v5}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_28
.end method

.method private lcdOff()V
    .registers 5

    .prologue
    .line 2417
    const/4 v1, 0x0

    .line 2420
    :try_start_1
    new-instance v0, Ljava/io/FileWriter;

    const-string v2, "/sys/devices/platform/samsung-pd.2/s3cfb.0/spi_gpio.3/spi3.0/lcd_power"

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_43
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_27

    .line 2421
    :try_start_8
    const-string v1, "RilActionService"

    const-string v2, "File Open"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2423
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_53
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_58

    .line 2431
    if-eqz v0, :cond_1d

    .line 2433
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 2439
    :cond_1d
    :goto_1d
    return-void

    .line 2434
    :catch_1e
    move-exception v0

    .line 2435
    const-string v0, "RilActionService"

    const-string v1, "File Close error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 2425
    :catch_27
    move-exception v0

    move-object v0, v1

    .line 2426
    :goto_29
    :try_start_29
    const-string v1, "RilActionService"

    const-string v2, "File open error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_53

    .line 2431
    if-eqz v0, :cond_1d

    .line 2433
    :try_start_36
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_1d

    .line 2434
    :catch_3a
    move-exception v0

    .line 2435
    const-string v0, "RilActionService"

    const-string v1, "File Close error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 2431
    :catchall_43
    move-exception v0

    :goto_44
    if-eqz v1, :cond_49

    .line 2433
    :try_start_46
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 2436
    :cond_49
    :goto_49
    throw v0

    .line 2434
    :catch_4a
    move-exception v1

    .line 2435
    const-string v1, "RilActionService"

    const-string v2, "File Close error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 2431
    :catchall_53
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_44

    .line 2425
    :catch_58
    move-exception v1

    goto :goto_29
.end method

.method private lcdOn()V
    .registers 5

    .prologue
    .line 2387
    const/4 v1, 0x0

    .line 2390
    :try_start_1
    new-instance v0, Ljava/io/FileWriter;

    const-string v2, "/sys/devices/platform/samsung-pd.2/s3cfb.0/spi_gpio.3/spi3.0/lcd_power"

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_43
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_27

    .line 2391
    :try_start_8
    const-string v1, "RilActionService"

    const-string v2, "File Open"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2393
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_53
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_58

    .line 2401
    if-eqz v0, :cond_1d

    .line 2403
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 2411
    :cond_1d
    :goto_1d
    return-void

    .line 2404
    :catch_1e
    move-exception v0

    .line 2405
    const-string v0, "RilActionService"

    const-string v1, "File Close error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 2395
    :catch_27
    move-exception v0

    move-object v0, v1

    .line 2396
    :goto_29
    :try_start_29
    const-string v1, "RilActionService"

    const-string v2, "File open error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_53

    .line 2401
    if-eqz v0, :cond_1d

    .line 2403
    :try_start_36
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_1d

    .line 2404
    :catch_3a
    move-exception v0

    .line 2405
    const-string v0, "RilActionService"

    const-string v1, "File Close error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 2401
    :catchall_43
    move-exception v0

    :goto_44
    if-eqz v1, :cond_49

    .line 2403
    :try_start_46
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 2406
    :cond_49
    :goto_49
    throw v0

    .line 2404
    :catch_4a
    move-exception v1

    .line 2405
    const-string v1, "RilActionService"

    const-string v2, "File Close error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 2401
    :catchall_53
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_44

    .line 2395
    :catch_58
    move-exception v1

    goto :goto_29
.end method

.method private lcdtype_check()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 5276
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/lcd/panel/lcd_type"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 5277
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 5278
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_17} :catch_18
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_21

    .line 5285
    :goto_17
    return-void

    .line 5279
    :catch_18
    move-exception v0

    .line 5280
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 5281
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_17

    .line 5282
    :catch_21
    move-exception v0

    .line 5283
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_17
.end method

.method private leftSpeakerMax()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 3151
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3153
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setForceSetEarpath(I)V

    .line 3156
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_16

    .line 3157
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 3158
    :cond_16
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 3159
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3161
    const v0, 0x7f050009

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 3162
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 3163
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3165
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3166
    return-void
.end method

.method private leftSpeakerMin()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3169
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3170
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setForceSetEarpath(I)V

    .line 3172
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_16

    .line 3173
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 3174
    :cond_16
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 3175
    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3177
    const v0, 0x7f050009

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 3178
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 3179
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3181
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3182
    return-void
.end method

.method private lightSensorOff()V
    .registers 3

    .prologue
    .line 5106
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorListner:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 5107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 5108
    return-void
.end method

.method private lightSensorOn()V
    .registers 5

    .prologue
    .line 5111
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 5112
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 5113
    .local v0, mLightSensor:Landroid/hardware/Sensor;
    new-instance v1, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;-><init>(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;)V

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorListner:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;

    .line 5114
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorListner:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 5117
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 5118
    return-void
.end method

.method private loadNormalFW(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3579
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3580
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3582
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3583
    const-string v2, "CMDID"

    const/16 v3, 0x12

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3584
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3585
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3587
    :cond_1f
    return-void
.end method

.method private loopbackStart(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/16 v4, 0x8

    .line 5000
    .line 5003
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendData to Ril Reday state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5005
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7e

    .line 5006
    const/4 v0, 0x7

    invoke-direct {p0, v0, v4, v5, v5}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setEndModeData(IIII)[B

    move-result-object v0

    .line 5008
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.LoopbackCMD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5009
    const-string v2, "DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5011
    const-string v0, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5013
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 5016
    invoke-direct {p0, p2, v4, v4, v5}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setEndModeData(IIII)[B

    move-result-object v0

    .line 5018
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.LoopbackCMD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5019
    const-string v2, "DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5021
    const-string v0, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5023
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 5034
    :goto_7d
    return-void

    .line 5025
    :cond_7e
    const/4 v0, 0x0

    invoke-direct {p0, v0, v4, v4, v5}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setEndModeData(IIII)[B

    move-result-object v0

    .line 5027
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.LoopbackCMD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5028
    const-string v2, "DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5030
    const-string v0, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5032
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_7d
.end method

.method private magneticSensor_ADCValues([I[I)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/16 v4, -0x1000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4418
    .line 4419
    aget v0, p2, v5

    if-eq v0, v2, :cond_37

    move v0, v1

    .line 4429
    :goto_b
    if-eqz v0, :cond_69

    .line 4430
    const-string v0, "%d,%d,%d"

    new-array v3, v5, [Ljava/lang/Object;

    aget v4, p2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x6

    aget v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    const/16 v4, 0x8

    aget v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4431
    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4436
    :goto_36
    return-void

    .line 4421
    :cond_37
    const/16 v0, 0xa

    aget v0, p2, v0

    if-eqz v0, :cond_3f

    move v0, v1

    .line 4422
    goto :goto_b

    .line 4423
    :cond_3f
    aget v0, p2, v6

    if-lt v0, v4, :cond_49

    aget v0, p2, v6

    const/16 v3, 0xfff

    if-le v0, v3, :cond_4b

    :cond_49
    move v0, v1

    .line 4424
    goto :goto_b

    .line 4425
    :cond_4b
    const/4 v0, 0x6

    aget v0, p2, v0

    if-lt v0, v4, :cond_57

    const/4 v0, 0x6

    aget v0, p2, v0

    const/16 v3, 0xfff

    if-le v0, v3, :cond_59

    :cond_57
    move v0, v1

    .line 4426
    goto :goto_b

    .line 4427
    :cond_59
    const/16 v0, 0x8

    aget v0, p2, v0

    if-lt v0, v4, :cond_67

    const/16 v0, 0x8

    aget v0, p2, v0

    const/16 v3, 0xfff

    if-le v0, v3, :cond_71

    :cond_67
    move v0, v1

    .line 4428
    goto :goto_b

    .line 4433
    :cond_69
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4434
    invoke-direct {p0, v5}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_36

    :cond_71
    move v0, v2

    goto :goto_b
.end method

.method private magneticSensor_DACValues([I[I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 4407
    .line 4408
    const/16 v0, 0x15

    aget v0, p1, v0

    if-eqz v0, :cond_17

    .line 4409
    const/4 v0, 0x0

    .line 4410
    :goto_8
    if-eqz v0, :cond_12

    .line 4411
    const-string v0, "1,0,0"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4414
    :goto_e
    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4415
    return-void

    .line 4413
    :cond_12
    const-string v0, "0,0,0"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_e

    :cond_17
    move v0, v1

    goto :goto_8
.end method

.method private magneticSensor_SelfTest([I[I)V
    .registers 11
    .parameter "testResult"
    .parameter "testResult2"

    .prologue
    const/16 v3, -0x64

    const/16 v7, 0x13

    const/16 v6, 0x11

    const/16 v4, 0xf

    const/4 v5, 0x1

    .line 4439
    const/4 v0, 0x1

    .line 4440
    .local v0, success:Z
    const/16 v1, 0xe

    aget v1, p2, v1

    if-eq v1, v5, :cond_3c

    .line 4441
    const/4 v0, 0x0

    .line 4448
    :cond_11
    :goto_11
    if-eqz v0, :cond_62

    .line 4449
    const-string v1, "OK,%d,%d,%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aget v3, p2, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aget v4, p2, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4450
    invoke-direct {p0, v5}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4455
    :goto_3b
    return-void

    .line 4442
    :cond_3c
    aget v1, p2, v4

    if-lt v1, v3, :cond_46

    aget v1, p2, v4

    const/16 v2, 0x64

    if-le v1, v2, :cond_48

    .line 4443
    :cond_46
    const/4 v0, 0x0

    goto :goto_11

    .line 4444
    :cond_48
    aget v1, p2, v6

    if-lt v1, v3, :cond_52

    aget v1, p2, v6

    const/16 v2, 0x64

    if-le v1, v2, :cond_54

    .line 4445
    :cond_52
    const/4 v0, 0x0

    goto :goto_11

    .line 4446
    :cond_54
    aget v1, p2, v7

    const/16 v2, -0x3e8

    if-lt v1, v2, :cond_60

    aget v1, p2, v7

    const/16 v2, -0x12c

    if-le v1, v2, :cond_11

    .line 4447
    :cond_60
    const/4 v0, 0x0

    goto :goto_11

    .line 4452
    :cond_62
    const-string v1, "NG"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4453
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_3b
.end method

.method private magneticSensor_TestStep1([I[I)V
    .registers 10
    .parameter "testResult"
    .parameter "testResult2"

    .prologue
    const/16 v6, 0xe

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 4372
    const/4 v0, 0x1

    .line 4373
    .local v0, success:Z
    aget v1, p1, v4

    const/16 v2, 0x48

    if-eq v1, v2, :cond_17

    .line 4374
    const/4 v0, 0x0

    .line 4382
    :cond_d
    :goto_d
    if-eqz v0, :cond_62

    .line 4383
    const-string v1, "OK"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4384
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4389
    :goto_16
    return-void

    .line 4375
    :cond_17
    aget v1, p1, v5

    if-ltz v1, :cond_21

    aget v1, p1, v5

    const/16 v2, 0xff

    if-le v1, v2, :cond_23

    .line 4376
    :cond_21
    const/4 v0, 0x0

    goto :goto_d

    .line 4377
    :cond_23
    const/4 v1, 0x5

    aget v1, p1, v1

    if-nez v1, :cond_56

    const/4 v1, 0x6

    aget v1, p1, v1

    if-nez v1, :cond_56

    const/4 v1, 0x7

    aget v1, p1, v1

    if-nez v1, :cond_56

    const/16 v1, 0x8

    aget v1, p1, v1

    if-nez v1, :cond_56

    const/16 v1, 0x9

    aget v1, p1, v1

    if-nez v1, :cond_56

    const/16 v1, 0xa

    aget v1, p1, v1

    if-nez v1, :cond_56

    const/16 v1, 0xb

    aget v1, p1, v1

    if-nez v1, :cond_56

    const/16 v1, 0xc

    aget v1, p1, v1

    if-nez v1, :cond_56

    const/16 v1, 0xd

    aget v1, p1, v1

    if-eqz v1, :cond_58

    .line 4379
    :cond_56
    const/4 v0, 0x0

    goto :goto_d

    .line 4380
    :cond_58
    aget v1, p1, v6

    if-gez v1, :cond_d

    aget v1, p1, v6

    if-le v1, v3, :cond_d

    .line 4381
    const/4 v0, 0x0

    goto :goto_d

    .line 4386
    :cond_62
    const-string v1, "NG"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4387
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_16
.end method

.method private magneticSensor_TestStep2([I[I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x12

    const/16 v4, 0x11

    const/4 v1, 0x1

    const/16 v3, 0xff

    const/4 v0, 0x0

    .line 4392
    .line 4393
    aget v2, p1, v4

    if-eqz v2, :cond_10

    aget v2, p1, v4

    if-ne v2, v3, :cond_1a

    .line 4399
    :cond_10
    :goto_10
    if-eqz v0, :cond_30

    .line 4400
    const-string v0, "1,0"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4403
    :goto_16
    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4404
    return-void

    .line 4395
    :cond_1a
    aget v2, p1, v5

    if-eqz v2, :cond_10

    aget v2, p1, v5

    if-eq v2, v3, :cond_10

    .line 4397
    const/16 v2, 0x13

    aget v2, p1, v2

    if-eqz v2, :cond_10

    const/16 v2, 0x13

    aget v2, p1, v2

    if-eq v2, v3, :cond_10

    move v0, v1

    goto :goto_10

    .line 4402
    :cond_30
    const-string v0, "0,0"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_16
.end method

.method private mainMEMOSize()V
    .registers 10

    .prologue
    const-wide/16 v6, 0x400

    .line 2590
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2591
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2593
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    .line 2594
    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    div-long/2addr v0, v6

    .line 2595
    sub-long v4, v2, v0

    .line 2596
    const-string v6, "RilActionServicet"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Main]TotalMass : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "KB, FreeMass : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB, UsedMass : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2602
    const-string v0, "RilActionServicet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mainSpace() mData :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2604
    return-void
.end method

.method private mainMenu()V
    .registers 3

    .prologue
    .line 2842
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2843
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2844
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2845
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2847
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2848
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startActivity(Landroid/content/Intent;)V

    .line 2849
    return-void
.end method

.method private mainchipVersionRead()V
    .registers 2

    .prologue
    .line 1979
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 1980
    return-void
.end method

.method private makeCscVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "cscVer"
    .parameter "pdaVer"

    .prologue
    .line 2027
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2028
    .local v1, temp1:Ljava/lang/String;
    const/4 v3, 0x7

    const/16 v4, 0xa

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2029
    .local v2, temp2:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2030
    .local v0, cscResult:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2031
    return-object v0
.end method

.method private masterSimRead()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 3334
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3335
    .local v0, mT:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v2, :cond_15

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-nez v1, :cond_1d

    .line 3336
    :cond_15
    const-string v1, "NOS"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3340
    :goto_19
    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3341
    return-void

    .line 3338
    :cond_1d
    const-string v1, "SIM"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_19
.end method

.method private mediaPlayStop()V
    .registers 2

    .prologue
    .line 5416
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 5417
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 5418
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 5419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 5421
    :cond_11
    return-void
.end method

.method private openDut(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3601
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 3602
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3604
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3605
    const-string v2, "CMDID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3606
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3607
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3609
    :cond_1e
    return-void
.end method

.method private parsing()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 378
    :try_start_1
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 381
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 382
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_1d

    const v1, 0xea60

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->wakeUp(I)Z

    .line 386
    :cond_1d
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 406
    const-string v1, "RilActionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing mTemp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v1, "RilActionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCommand : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v1, "02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 411
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 412
    const-string v1, "0103"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 413
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mainchipVersionRead()V

    .line 1589
    :cond_75
    :goto_75
    return-void

    .line 414
    :cond_76
    const-string v1, "0107"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 415
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->pdaVersionRead()V
    :try_end_81
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_81} :catch_82

    goto :goto_75

    .line 1584
    :catch_82
    move-exception v0

    .line 1585
    invoke-direct {p0, v5}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_75

    .line 416
    :cond_87
    :try_start_87
    const-string v1, "0108"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 417
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->cscVersionRead()V

    goto :goto_75

    .line 418
    :cond_93
    const-string v1, "0301"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 419
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->BootVersionRead()V

    goto :goto_75

    .line 420
    :cond_9f
    const-string v1, "0302"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 421
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->FullVersionRead()V

    goto :goto_75

    .line 425
    :cond_ab
    const-string v1, "03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 426
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 428
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 429
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->reBoot()V

    goto :goto_75

    .line 436
    :cond_c8
    const-string v1, "04"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 437
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 442
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 443
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->goToSleep()V

    goto :goto_75

    .line 449
    :cond_e5
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 450
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->wakeUp()V

    goto :goto_75

    .line 454
    :cond_f1
    const-string v1, "06"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    .line 455
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 456
    const-string v1, "RilDFTACtion Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsing : Bluetooth Command ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v1, "000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15a

    .line 459
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 461
    const-string v1, "RilDFTACtion Service"

    const-string v2, "parsing : Already BT ON -sendResultCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 463
    const-string v0, "ON"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 464
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 465
    const-string v0, "0000000000000000"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    goto/16 :goto_75

    .line 469
    :cond_14e
    const-string v0, "RilDFTACtion Service"

    const-string v1, "parsing : Bluetooth Activation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->btActivation()V

    goto/16 :goto_75

    .line 473
    :cond_15a
    const-string v1, "000100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_168

    .line 474
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 476
    :cond_168
    const-string v1, "000101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_175

    .line 477
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->btSearchWithAck()V

    goto/16 :goto_75

    .line 479
    :cond_175
    const-string v1, "000102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_182

    .line 480
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->btSearchStop()V

    goto/16 :goto_75

    .line 482
    :cond_182
    const-string v1, "000200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18f

    .line 483
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->btNormalDeactivation()V

    goto/16 :goto_75

    .line 485
    :cond_18f
    const-string v1, "000201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19c

    .line 486
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->btRfTestStop()V

    goto/16 :goto_75

    .line 488
    :cond_19c
    const-string v1, "000202"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 489
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 491
    :cond_1aa
    const-string v1, "000300"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b7

    .line 493
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->btRfTest()V

    goto/16 :goto_75

    .line 495
    :cond_1b7
    const-string v1, "000400"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 496
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 503
    :cond_1c5
    const-string v1, "07"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20a

    .line 504
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 509
    const-string v1, "000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e3

    .line 510
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->playMusic()V

    goto/16 :goto_75

    .line 516
    :cond_1e3
    const-string v1, "000001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f0

    .line 517
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stopMusic()V

    goto/16 :goto_75

    .line 523
    :cond_1f0
    const-string v1, "000100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1fd

    .line 524
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->playMusicInternal()V

    goto/16 :goto_75

    .line 530
    :cond_1fd
    const-string v1, "000101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 531
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stopMusic()V

    goto/16 :goto_75

    .line 538
    :cond_20a
    const-string v1, "08"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_279

    .line 539
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 544
    const-string v1, "000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_236

    .line 545
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->FmRadioOnEarphone(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 551
    :cond_236
    const-string v1, "000001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_251

    .line 552
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->FmRadioOnSpeaker(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 558
    :cond_251
    const-string v1, "000100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25e

    .line 559
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->FmRadioOff()V

    goto/16 :goto_75

    .line 565
    :cond_25e
    const-string v1, "010000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 566
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->FmRadioRSS(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 573
    :cond_279
    const-string v1, "09"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_308

    .line 574
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 576
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EarLoopbackTest mTemp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v1, "00000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b3

    .line 579
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLoopBackStatus:I

    .line 580
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startEarLoopMainMIC(I)V

    goto/16 :goto_75

    .line 582
    :cond_2b3
    const-string v1, "00000001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c4

    .line 583
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLoopBackStatus:I

    .line 584
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startEarLoopMainMIC(I)V

    goto/16 :goto_75

    .line 586
    :cond_2c4
    const-string v1, "00000100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d1

    .line 587
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stopLooptest()V

    goto/16 :goto_75

    .line 589
    :cond_2d1
    const-string v1, "01000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2df

    .line 590
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 592
    :cond_2df
    const-string v1, "01000100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2ed

    .line 593
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 595
    :cond_2ed
    const-string v1, "01000200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2fa

    .line 596
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->earDetect()V

    goto/16 :goto_75

    .line 598
    :cond_2fa
    const-string v1, "01010000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 599
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 607
    :cond_308
    const-string v1, "0A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_326

    .line 608
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 610
    const-string v1, "01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 611
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->earswitchInfoRead()V

    goto/16 :goto_75

    .line 615
    :cond_326
    const-string v1, "0B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35f

    .line 616
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 618
    const-string v1, "01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_344

    .line 619
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->rtcRead()V

    goto/16 :goto_75

    .line 621
    :cond_344
    const-string v1, "02"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 622
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->rtcWrite(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 626
    :cond_35f
    const-string v1, "0C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a6

    .line 627
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 629
    const-string v1, "010000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37d

    .line 630
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->readTemp()V

    goto/16 :goto_75

    .line 632
    :cond_37d
    const-string v1, "010001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38b

    .line 633
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 635
    :cond_38b
    const-string v1, "010100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_398

    .line 636
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->readTempAdc()V

    goto/16 :goto_75

    .line 638
    :cond_398
    const-string v1, "010101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 639
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 643
    :cond_3a6
    const-string v1, "0D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3ef

    .line 644
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 646
    const-string v1, "0100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c5

    .line 647
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 649
    :cond_3c5
    const-string v1, "0101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d3

    .line 650
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 652
    :cond_3d3
    const-string v1, "0200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e1

    .line 653
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 655
    :cond_3e1
    const-string v1, "0201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 656
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 660
    :cond_3ef
    const-string v1, "0E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_475

    .line 661
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 663
    const-string v1, "000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40d

    .line 664
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stereoMax()V

    goto/16 :goto_75

    .line 666
    :cond_40d
    const-string v1, "000001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41a

    .line 667
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stereoMin()V

    goto/16 :goto_75

    .line 669
    :cond_41a
    const-string v1, "000100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_427

    .line 671
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->leftSpeakerMax()V

    goto/16 :goto_75

    .line 673
    :cond_427
    const-string v1, "000101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_434

    .line 674
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->leftSpeakerMin()V

    goto/16 :goto_75

    .line 676
    :cond_434
    const-string v1, "000200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_441

    .line 678
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->rightSpeakerMax()V

    goto/16 :goto_75

    .line 680
    :cond_441
    const-string v1, "000201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44e

    .line 681
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->rightSpeakerMin()V

    goto/16 :goto_75

    .line 683
    :cond_44e
    const-string v1, "000300"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45b

    .line 684
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->receiverMax()V

    goto/16 :goto_75

    .line 686
    :cond_45b
    const-string v1, "000301"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_468

    .line 687
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->receiverMin()V

    goto/16 :goto_75

    .line 689
    :cond_468
    const-string v1, "000400"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 690
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->speakerOff()V

    goto/16 :goto_75

    .line 694
    :cond_475
    const-string v1, "0F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f4

    .line 695
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 697
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_494

    .line 698
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 700
    :cond_494
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a2

    .line 701
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 703
    :cond_4a2
    const-string v1, "0002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b0

    .line 704
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 706
    :cond_4b0
    const-string v1, "0003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4bd

    .line 707
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->lcdOn()V

    goto/16 :goto_75

    .line 709
    :cond_4bd
    const-string v1, "0004"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4ca

    .line 710
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->lcdOff()V

    goto/16 :goto_75

    .line 712
    :cond_4ca
    const-string v1, "0005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d8

    .line 713
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 715
    :cond_4d8
    const-string v1, "0006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e6

    .line 716
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 718
    :cond_4e6
    const-string v1, "0007"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 719
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 723
    :cond_4f4
    const-string v1, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6cd

    .line 724
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 726
    const-string v1, "00000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_513

    .line 727
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 729
    :cond_513
    const-string v1, "00010000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_520

    .line 730
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->frontCameraPreview()V

    goto/16 :goto_75

    .line 732
    :cond_520
    const-string v1, "00010001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52d

    .line 733
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->rearCameraPreview()V

    goto/16 :goto_75

    .line 735
    :cond_52d
    const-string v1, "00010100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53b

    .line 736
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 738
    :cond_53b
    const-string v1, "00010102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_549

    .line 739
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 741
    :cond_549
    const-string v1, "00010103"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_557

    .line 742
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 744
    :cond_557
    const-string v1, "00010104"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_565

    .line 745
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 747
    :cond_565
    const-string v1, "00010105"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_573

    .line 748
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 750
    :cond_573
    const-string v1, "00010106"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_581

    .line 751
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 753
    :cond_581
    const-string v1, "00010107"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58f

    .line 754
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 756
    :cond_58f
    const-string v1, "00010108"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59d

    .line 757
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 759
    :cond_59d
    const-string v1, "00010109"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5ab

    .line 760
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 762
    :cond_5ab
    const-string v1, "00010200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b9

    .line 763
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 765
    :cond_5b9
    const-string v1, "00010301"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c7

    .line 766
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 768
    :cond_5c7
    const-string v1, "00010302"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d5

    .line 769
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 771
    :cond_5d5
    const-string v1, "00010303"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e3

    .line 772
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 774
    :cond_5e3
    const-string v1, "00010304"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f1

    .line 775
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 777
    :cond_5f1
    const-string v1, "00010305"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5ff

    .line 778
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 780
    :cond_5ff
    const-string v1, "00020000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60d

    .line 781
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 783
    :cond_60d
    const-string v1, "00020001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61b

    .line 784
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 786
    :cond_61b
    const-string v1, "00020100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_629

    .line 787
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 789
    :cond_629
    const-string v1, "00020101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_637

    .line 790
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 792
    :cond_637
    const-string v1, "00020102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_645

    .line 793
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 795
    :cond_645
    const-string v1, "00020103"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_653

    .line 796
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 798
    :cond_653
    const-string v1, "00020200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_661

    .line 799
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 801
    :cond_661
    const-string v1, "00020300"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66f

    .line 802
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 804
    :cond_66f
    const-string v1, "00030000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67d

    .line 805
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 807
    :cond_67d
    const-string v1, "00030100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68b

    .line 808
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 810
    :cond_68b
    const-string v1, "00030200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_698

    .line 811
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->TurnOnFlash()V

    goto/16 :goto_75

    .line 813
    :cond_698
    const-string v1, "00030300"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a5

    .line 814
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stopCamera()V

    goto/16 :goto_75

    .line 816
    :cond_6a5
    const-string v1, "00040000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b3

    .line 817
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 819
    :cond_6b3
    const-string v1, "00090000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c0

    .line 821
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stopCamera()V

    goto/16 :goto_75

    .line 823
    :cond_6c0
    const-string v1, "00090100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 824
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stopCamera()V

    goto/16 :goto_75

    .line 828
    :cond_6cd
    const-string v1, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f8

    .line 829
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 831
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6eb

    .line 832
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->vibratorOn()V

    goto/16 :goto_75

    .line 834
    :cond_6eb
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 835
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->vibratorOff()V

    goto/16 :goto_75

    .line 842
    :cond_6f8
    const-string v1, "13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a8

    .line 843
    const-string v0, "LOOP AT command"

    const-string v1, "Enter Loopback test"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 846
    const-string v1, "000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_725

    .line 847
    const-string v0, "LOOP AT command"

    const-string v1, "Receive RCV PCM Loopback cmd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startRcvLoopMainMIC(I)V

    goto/16 :goto_75

    .line 850
    :cond_725
    const-string v1, "000001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73a

    .line 851
    const-string v0, "LOOP AT command"

    const-string v1, "Receive SPK PCM Loopback cmd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startLoudSpkLoopMainMIC(I)V

    goto/16 :goto_75

    .line 854
    :cond_73a
    const-string v1, "000002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74f

    .line 855
    const-string v0, "LOOP AT command"

    const-string v1, "Receive RCV Packet Loopback cmd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startRcvLoopMainMIC(I)V

    goto/16 :goto_75

    .line 858
    :cond_74f
    const-string v1, "000003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_764

    .line 859
    const-string v0, "LOOP AT command"

    const-string v1, "Receive SPK Packet Loopback cmd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startLoudSpkLoopMainMIC(I)V

    goto/16 :goto_75

    .line 862
    :cond_764
    const-string v1, "000004"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_779

    .line 863
    const-string v0, "LOOP AT command"

    const-string v1, "Receive SPK Packet Loopback cmd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startLoudSpkLoopMainMIC2(I)V

    goto/16 :goto_75

    .line 866
    :cond_779
    const-string v1, "000005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78e

    .line 867
    const-string v0, "LOOP AT command"

    const-string v1, "Receive SPK Packet Loopback cmd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startLoudSpkLoopMainMIC2(I)V

    goto/16 :goto_75

    .line 870
    :cond_78e
    const-string v1, "000100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a2

    .line 871
    const-string v0, "LOOP AT command"

    const-string v1, "Loopback OFF cmd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stopLooptest()V

    goto/16 :goto_75

    .line 875
    :cond_7a2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 879
    :cond_7a8
    const-string v1, "14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e0

    .line 880
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 882
    const-string v1, "0100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c6

    .line 883
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->masterSimRead()V

    goto/16 :goto_75

    .line 885
    :cond_7c6
    const-string v1, "0101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d3

    .line 886
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->masterSimRead()V

    goto/16 :goto_75

    .line 888
    :cond_7d3
    const-string v1, "0102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 889
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->slaveSimRead()V

    goto/16 :goto_75

    .line 894
    :cond_7e0
    const-string v1, "16"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_845

    .line 895
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 897
    const-string v1, "000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7ff

    .line 898
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 900
    :cond_7ff
    const-string v1, "000001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80d

    .line 901
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 903
    :cond_80d
    const-string v1, "000100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81b

    .line 904
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 906
    :cond_81b
    const-string v1, "010000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_829

    .line 907
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 909
    :cond_829
    const-string v1, "010100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_837

    .line 910
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 912
    :cond_837
    const-string v1, "010200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 913
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 917
    :cond_845
    const-string v1, "17"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_853

    .line 918
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 921
    :cond_853
    const-string v1, "18"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a7e

    .line 922
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 923
    const-string v1, "000100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_874

    const-string v1, "000102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b0

    .line 924
    :cond_874
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    if-nez v1, :cond_882

    .line 925
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 926
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 928
    :cond_882
    const-string v1, "000100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89d

    .line 929
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->closeDut(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 931
    :cond_89d
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->unloadNormalFW(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 937
    :cond_8b0
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->wlanTestStart()V

    .line 938
    const-string v1, "000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8ce

    .line 939
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->channelSetting(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 940
    :cond_8ce
    const-string v1, "000001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e9

    .line 941
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->dataRateSetting(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 942
    :cond_8e9
    const-string v1, "000002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_904

    .line 943
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->preambleSetting(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 944
    :cond_904
    const-string v1, "000003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91f

    .line 945
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->txGainSetting(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 946
    :cond_91f
    const-string v1, "000004"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93a

    .line 947
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->payloadLengthSetting(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 948
    :cond_93a
    const-string v1, "000005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_955

    .line 949
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->burstIntervalSetting(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 950
    :cond_955
    const-string v1, "000006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_970

    .line 951
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->BandSetting(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 952
    :cond_970
    const-string v1, "000007"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98b

    .line 953
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->BandwidthSetting(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 959
    :cond_98b
    const-string v1, "000101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a6

    .line 960
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->openDut(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 968
    :cond_9a6
    const-string v1, "000103"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c1

    .line 970
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->loadNormalFW(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 971
    :cond_9c1
    const-string v1, "000200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9dc

    .line 972
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stopTx(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 973
    :cond_9dc
    const-string v1, "000201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f7

    .line 974
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startTx(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 975
    :cond_9f7
    const-string v1, "000300"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a12

    .line 976
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stopRx(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 977
    :cond_a12
    const-string v1, "000301"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2d

    .line 978
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startRx(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 979
    :cond_a2d
    const-string v1, "000400"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a48

    .line 980
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->rxFrameReceiveError(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 981
    :cond_a48
    const-string v1, "000401"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a63

    .line 982
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->rxFrameReceiveGood(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 983
    :cond_a63
    const-string v1, "000600"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 985
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->joinAP(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 989
    :cond_a7e
    const-string v1, "19"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa9

    .line 990
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 992
    const-string v1, "0100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a9c

    .line 993
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->extraDetect()V

    goto/16 :goto_75

    .line 995
    :cond_a9c
    const-string v1, "0101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 996
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->extraMount()V

    goto/16 :goto_75

    .line 1000
    :cond_aa9
    const-string v1, "1A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aef

    .line 1001
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1003
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ac7

    .line 1005
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->formatSDCard()V

    goto/16 :goto_75

    .line 1007
    :cond_ac7
    const-string v1, "0101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad4

    .line 1008
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->innerDetect()V

    goto/16 :goto_75

    .line 1010
    :cond_ad4
    const-string v1, "0102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae1

    .line 1011
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->innerSpace()V

    goto/16 :goto_75

    .line 1013
    :cond_ae1
    const-string v1, "0103"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1014
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1018
    :cond_aef
    const-string v1, "51"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b69

    .line 1020
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1021
    const-string v1, "RilACtion Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTemp :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const-string v1, "0100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2c

    .line 1023
    const-string v0, "RilACtion Service"

    const-string v1, "swkim mainMEMOSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mainMEMOSize()V

    goto/16 :goto_75

    .line 1026
    :cond_b2c
    const-string v1, "0101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b39

    .line 1027
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->externalMEMOSize()V

    goto/16 :goto_75

    .line 1029
    :cond_b39
    const-string v1, "0103"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1030
    const-string v0, "RilACtion Service"

    const-string v1, "externalMEMOSize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const-string v0, "mounted"

    .line 1034
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b5a

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b5f

    .line 1035
    :cond_b5a
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->externalMEMOSizeSd()V

    goto/16 :goto_75

    .line 1038
    :cond_b5f
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 1039
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1043
    :cond_b69
    const-string v1, "3D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b93

    .line 1049
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 1050
    const-string v2, "RilACtion Service"

    invoke-virtual {v1, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v1

    .line 1051
    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 1055
    const v1, 0x1000001a

    const-string v2, "Factory_WakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 1056
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1057
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->factoryReset()V

    goto/16 :goto_75

    .line 1059
    :cond_b93
    const-string v0, "3E"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bbc

    .line 1061
    new-instance v0, Ljava/io/File;

    const-string v1, "//data/factory/.resetverify"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_bb2

    .line 1063
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 1064
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1068
    :cond_bb2
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 1069
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1103
    :cond_bbc
    const-string v0, "1B"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be7

    .line 1104
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1106
    const-string v1, "0101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bda

    .line 1107
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->batteryStatus()V

    goto/16 :goto_75

    .line 1109
    :cond_bda
    const-string v1, "0102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1110
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->batteryVoltage()V

    goto/16 :goto_75

    .line 1114
    :cond_be7
    const-string v0, "1C"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c05

    .line 1115
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1117
    const-string v1, "00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1118
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->downloadMode()V

    goto/16 :goto_75

    .line 1122
    :cond_c05
    const-string v0, "1D"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c23

    .line 1123
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1125
    const-string v1, "00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1126
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mainMenu()V

    goto/16 :goto_75

    .line 1130
    :cond_c23
    const-string v0, "1E"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c92

    .line 1131
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1133
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c41

    .line 1134
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->gsensorOn()V

    goto/16 :goto_75

    .line 1136
    :cond_c41
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c4e

    .line 1137
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->gsensorOff()V

    goto/16 :goto_75

    .line 1139
    :cond_c4e
    const-string v1, "0100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c5b

    .line 1140
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sensorRead()V

    goto/16 :goto_75

    .line 1142
    :cond_c5b
    const-string v1, "0101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c69

    .line 1143
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1145
    :cond_c69
    const-string v1, "0102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c77

    .line 1146
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1148
    :cond_c77
    const-string v1, "0103"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c85

    .line 1149
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1151
    :cond_c85
    const-string v1, "0104"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1152
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sensorCheckRange()V

    goto/16 :goto_75

    .line 1156
    :cond_c92
    const-string v0, "1F"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cca

    .line 1157
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1159
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cb0

    .line 1160
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->lightSensorOn()V

    goto/16 :goto_75

    .line 1162
    :cond_cb0
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cbd

    .line 1163
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->lightSensorOff()V

    goto/16 :goto_75

    .line 1165
    :cond_cbd
    const-string v1, "0100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1166
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->readlightSensor()V

    goto/16 :goto_75

    .line 1170
    :cond_cca
    const-string v0, "20"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d0c

    .line 1171
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1173
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ce8

    .line 1174
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->usbMsmSelect()V

    goto/16 :goto_75

    .line 1176
    :cond_ce8
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cf5

    .line 1177
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->usbMdmSelect()V

    goto/16 :goto_75

    .line 1179
    :cond_cf5
    const-string v1, "0100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d02

    .line 1180
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->usbSetStatusQ()V

    goto/16 :goto_75

    .line 1182
    :cond_d02
    const-string v1, "0002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    goto/16 :goto_75

    .line 1185
    :cond_d0c
    const-string v0, "21"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2b

    .line 1186
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1188
    const-string v1, "01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1189
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1194
    :cond_d2b
    const-string v0, "22"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d8c

    .line 1195
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1197
    const-string v1, "000200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d4a

    .line 1198
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1201
    :cond_d4a
    const-string v1, "000201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d58

    .line 1202
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1205
    :cond_d58
    const-string v1, "010200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d65

    .line 1206
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->touchkey_firmware_read()V

    goto/16 :goto_75

    .line 1209
    :cond_d65
    const-string v1, "000100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d72

    .line 1210
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->touch_firmware_update()V

    goto/16 :goto_75

    .line 1212
    :cond_d72
    const-string v1, "000101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d7f

    .line 1213
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->touch_check_status()V

    goto/16 :goto_75

    .line 1215
    :cond_d7f
    const-string v1, "010100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1216
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->touch_firmware_read()V

    goto/16 :goto_75

    .line 1220
    :cond_d8c
    const-string v0, "23"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_db9

    .line 1221
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1223
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_dab

    .line 1224
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1226
    :cond_dab
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1227
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1231
    :cond_db9
    const-string v0, "24"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_df4

    .line 1232
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1234
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_dd8

    .line 1235
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1237
    :cond_dd8
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_de6

    .line 1238
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1240
    :cond_de6
    const-string v1, "0100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1241
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1245
    :cond_df4
    const-string v0, "25"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e2f

    .line 1246
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1248
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e13

    .line 1249
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1251
    :cond_e13
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e21

    .line 1252
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1254
    :cond_e21
    const-string v1, "0100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1255
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1259
    :cond_e2f
    const-string v0, "26"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e5c

    .line 1260
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1262
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e4e

    .line 1263
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1265
    :cond_e4e
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1266
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1271
    :cond_e5c
    const-string v0, "27"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e95

    .line 1272
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1274
    const-string v1, "01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e7a

    .line 1275
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->btIdRead()V

    goto/16 :goto_75

    .line 1277
    :cond_e7a
    const-string v1, "02"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1278
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->btIdWrite(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 1282
    :cond_e95
    const-string v0, "28"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ece

    .line 1283
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1285
    const-string v1, "01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_eb3

    .line 1286
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->wlanIdRead()V

    goto/16 :goto_75

    .line 1288
    :cond_eb3
    const-string v1, "02"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1289
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->wlanIdWrite(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 1293
    :cond_ece
    const-string v0, "2C"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f09

    .line 1294
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1296
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_eed

    .line 1297
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1299
    :cond_eed
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_efb

    .line 1300
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1302
    :cond_efb
    const-string v1, "0002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1303
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1307
    :cond_f09
    const-string v0, "31"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f34

    .line 1308
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1310
    const-string v1, "00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f27

    .line 1311
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->fuel_gauge_reset()V

    goto/16 :goto_75

    .line 1313
    :cond_f27
    const-string v1, "01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1314
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->fuel_gauge_read()V

    goto/16 :goto_75

    .line 1319
    :cond_f34
    const-string v0, "32"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fb9

    .line 1322
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1323
    const-string v0, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTemp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1326
    const/16 v0, 0x16

    new-array v0, v0, [I

    .line 1327
    const/16 v2, 0x17

    new-array v2, v2, [I

    .line 1328
    const/16 v3, 0x17

    new-array v3, v3, [I

    .line 1329
    iget-object v4, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v0, v2, v3}, Landroid/hardware/SensorManager;->runMagFactoryTest([I[I[I)I

    .line 1331
    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f85

    .line 1332
    invoke-direct {p0, v0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->magneticSensor_TestStep1([I[I)V

    goto/16 :goto_75

    .line 1333
    :cond_f85
    const-string v3, "0100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f92

    .line 1334
    invoke-direct {p0, v0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->magneticSensor_TestStep2([I[I)V

    goto/16 :goto_75

    .line 1335
    :cond_f92
    const-string v3, "0101"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f9f

    .line 1336
    invoke-direct {p0, v0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->magneticSensor_DACValues([I[I)V

    goto/16 :goto_75

    .line 1337
    :cond_f9f
    const-string v3, "0102"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fac

    .line 1338
    invoke-direct {p0, v0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->magneticSensor_ADCValues([I[I)V

    goto/16 :goto_75

    .line 1339
    :cond_fac
    const-string v3, "0103"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1340
    invoke-direct {p0, v0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->magneticSensor_SelfTest([I[I)V

    goto/16 :goto_75

    .line 1346
    :cond_fb9
    const-string v0, "33"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fd7

    .line 1347
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1349
    const-string v1, "01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1350
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->isMovinandChecksum()V

    goto/16 :goto_75

    .line 1354
    :cond_fd7
    const-string v0, "34"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1004

    .line 1355
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1357
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ff6

    .line 1358
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1360
    :cond_ff6
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1361
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1365
    :cond_1004
    const-string v0, "35"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_102f

    .line 1366
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1368
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1022

    .line 1369
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->autoKeyLock()V

    goto/16 :goto_75

    .line 1371
    :cond_1022
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1372
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->autoKeyUnlock()V

    goto/16 :goto_75

    .line 1376
    :cond_102f
    const-string v0, "38"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_103c

    .line 1377
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->keyShortTest()V

    goto/16 :goto_75

    .line 1380
    :cond_103c
    const-string v0, "39"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_104a

    .line 1381
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1384
    :cond_104a
    const-string v0, "3A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1058

    .line 1385
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1388
    :cond_1058
    const-string v0, "3B"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1066

    .line 1389
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1399
    :cond_1066
    const-string v0, "3C"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10b8

    .line 1400
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1402
    const-string v1, "0100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1084

    .line 1403
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->usbModeCheck()V

    goto/16 :goto_75

    .line 1405
    :cond_1084
    const-string v1, "0200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1091

    .line 1406
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->usbModeSetSamsungUsb()V

    goto/16 :goto_75

    .line 1408
    :cond_1091
    const-string v1, "0201"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_109e

    .line 1409
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->usbModeSetASKOnConnection()V

    goto/16 :goto_75

    .line 1411
    :cond_109e
    const-string v1, "0202"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10ab

    .line 1412
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->usbModeSetMTP()V

    goto/16 :goto_75

    .line 1414
    :cond_10ab
    const-string v1, "0203"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1415
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->usbModeSetMassStorage()V

    goto/16 :goto_75

    .line 1419
    :cond_10b8
    const-string v0, "3D"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c6

    .line 1420
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1423
    :cond_10c6
    const-string v0, "3E"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10d4

    .line 1424
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1427
    :cond_10d4
    const-string v0, "3F"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10e2

    .line 1428
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1431
    :cond_10e2
    const-string v0, "40"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_111a

    .line 1432
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1434
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1100

    .line 1435
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->proximitySensorOff()V

    goto/16 :goto_75

    .line 1437
    :cond_1100
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_110d

    .line 1438
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->proximitySensorOn()V

    goto/16 :goto_75

    .line 1440
    :cond_110d
    const-string v1, "0100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1441
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->proximitySensorRead()V

    goto/16 :goto_75

    .line 1444
    :cond_111a
    const-string v0, "44"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1130

    .line 1446
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "wimax command here"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1447
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->handleWimaxCmds(Ljava/lang/String;)V

    goto/16 :goto_75

    .line 1449
    :cond_1130
    const-string v0, "4C"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1180

    .line 1451
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1452
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTemp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1166

    .line 1455
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->InitGyroscope()V

    goto/16 :goto_75

    .line 1457
    :cond_1166
    const-string v1, "0100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1173

    .line 1458
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->GyroscopeReadTemp()V

    goto/16 :goto_75

    .line 1460
    :cond_1173
    const-string v1, "0101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1461
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->GyroscopeTestResult()V

    goto/16 :goto_75

    .line 1464
    :cond_1180
    const-string v0, "48"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11dd

    .line 1466
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1467
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTemp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11b6

    .line 1470
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->uartMsmCpSelect()V

    goto/16 :goto_75

    .line 1472
    :cond_11b6
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11c3

    .line 1473
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->uartMsmApSelect()V

    goto/16 :goto_75

    .line 1475
    :cond_11c3
    const-string v1, "0100"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11d0

    .line 1476
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->uartSetStatusQ()V

    goto/16 :goto_75

    .line 1478
    :cond_11d0
    const-string v1, "0002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1479
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->uartMdmSelect()V

    goto/16 :goto_75

    .line 1482
    :cond_11dd
    const-string v0, "4B"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1216

    .line 1483
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1484
    const-string v1, "0101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11fb

    .line 1485
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->lcdtype_check()V

    goto/16 :goto_75

    .line 1486
    :cond_11fb
    const-string v1, "0102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1208

    .line 1487
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->batterytype_check()V

    goto/16 :goto_75

    .line 1488
    :cond_1208
    const-string v1, "0103"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1489
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1493
    :cond_1216
    const-string v0, "56"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1274

    .line 1494
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1495
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTemp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_124d

    .line 1497
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1499
    :cond_124d
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_125a

    .line 1500
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hdmi_check()V

    goto/16 :goto_75

    .line 1502
    :cond_125a
    const-string v1, "0002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1267

    .line 1504
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->playHDMI()V

    goto/16 :goto_75

    .line 1514
    :cond_1267
    const-string v1, "0003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1516
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stopHDMI()V

    goto/16 :goto_75

    .line 1525
    :cond_1274
    const-string v0, "57"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12b0

    .line 1526
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1527
    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1290

    .line 1528
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->autorotate_off()V

    goto/16 :goto_75

    .line 1529
    :cond_1290
    const-string v1, "0001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_129d

    .line 1530
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->autorotate_on()V

    goto/16 :goto_75

    .line 1531
    :cond_129d
    const-string v1, "0100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12aa

    .line 1532
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->autorotate_read()V

    goto/16 :goto_75

    .line 1534
    :cond_12aa
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_75

    .line 1537
    :cond_12b0
    const-string v0, "58"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1300

    .line 1538
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1539
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTemp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12e6

    .line 1542
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->factory_Home_Start()V

    goto/16 :goto_75

    .line 1544
    :cond_12e6
    const-string v1, "0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12f3

    .line 1545
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->factory_LCDTestApp_Start()V

    goto/16 :goto_75

    .line 1547
    :cond_12f3
    const-string v1, "0002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1548
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->factory_15TestApp_Start()V

    goto/16 :goto_75

    .line 1551
    :cond_1300
    const-string v0, "60"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1552
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1553
    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1554
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hdcpCheck(I)V
    :try_end_131d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_87 .. :try_end_131d} :catch_82

    goto/16 :goto_75
.end method

.method private payloadLengthSetting(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3525
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3526
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3528
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3529
    const-string v2, "CMDID"

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3530
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3531
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3533
    :cond_1f
    return-void
.end method

.method private pdaVersionRead()V
    .registers 6

    .prologue
    .line 1983
    const-string v0, "ro.build.PDA"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1984
    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1986
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pdaVersion () :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6e

    .line 1988
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPH-D710"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1991
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_53
    const/16 v2, 0x10

    if-ge v1, v2, :cond_6e

    .line 1992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1991
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_53

    .line 1996
    :cond_6e
    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 1997
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 1998
    return-void
.end method

.method private playHDMI()V
    .registers 3

    .prologue
    .line 5424
    const-string v0, "RilActionService"

    const-string v1, "HDMI Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5425
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mediaPlayStop()V

    .line 5426
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 5427
    const v0, 0x7f050008

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 5428
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 5429
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 5432
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/EtcTest/HdmiTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5434
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5435
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startActivity(Landroid/content/Intent;)V

    .line 5437
    return-void
.end method

.method private playMusic()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 2156
    const-string v0, "mounted"

    .line 2157
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getExternalState()Ljava/lang/String;

    move-result-object v0

    .line 2160
    const-string v1, "/mnt/sdcard/external_sd/1kHz.mp3"

    .line 2162
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 2163
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2202
    :goto_24
    return-void

    .line 2167
    :cond_25
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/external_sd/1kHz.mp3"

    const-string v2, "w"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt/sdcard/external_sd/1kHz.mp3 - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_59

    .line 2172
    const-string v0, "/mnt/sdcard/external_sd/1kHz.mp3"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->makeFile(Ljava/lang/String;)V

    .line 2176
    :cond_59
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2178
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_72

    .line 2179
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 2180
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 2181
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 2185
    :cond_72
    const/4 v1, 0x0

    :try_start_73
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 2186
    const/4 v1, 0x3

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2188
    const-string v0, "RilACtion Service"

    const-string v1, "Muscic Start!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 2190
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 2191
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    const-string v1, "/mnt/sdcard/external_sd/1kHz.mp3"

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 2192
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 2193
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 2194
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 2196
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_ae} :catch_b0

    goto/16 :goto_24

    .line 2198
    :catch_b0
    move-exception v0

    .line 2199
    const-string v0, "RilAction Service"

    const-string v1, "Can\'t Play a Song"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto/16 :goto_24
.end method

.method private playMusicInternal()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 2227
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2229
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1b

    .line 2230
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 2231
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 2232
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 2235
    :cond_1b
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 2236
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2238
    const-string v0, "RilACtion Service"

    const-string v1, "Muscic Start!!(Internal)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    const v0, 0x7f050008

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 2240
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 2241
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 2243
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2245
    return-void
.end method

.method private preambleSetting(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3503
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 3504
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3506
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3507
    const-string v2, "CMDID"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3508
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3509
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3511
    :cond_1e
    return-void
.end method

.method private proximitySensorOff()V
    .registers 3

    .prologue
    .line 4793
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorListner:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4794
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4795
    return-void
.end method

.method private proximitySensorOn()V
    .registers 5

    .prologue
    .line 4798
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 4799
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 4800
    .local v0, mProximitySensor:Landroid/hardware/Sensor;
    new-instance v1, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;-><init>(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;)V

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorListner:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;

    .line 4801
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorListner:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$handlersensor;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 4804
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4805
    return-void
.end method

.method private proximitySensorRead()V
    .registers 5

    .prologue
    .line 4808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4809
    const/4 v1, 0x5

    new-array v1, v1, [C

    fill-array-data v1, :array_42

    .line 4810
    const/16 v2, 0x9

    new-array v2, v2, [C

    fill-array-data v2, :array_4c

    .line 4812
    iget v3, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mProximityData:I

    if-lez v3, :cond_3e

    .line 4814
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 4821
    :goto_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4822
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proximitySensorRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4823
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4824
    return-void

    .line 4818
    :cond_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 4809
    :array_42
    .array-data 0x2
        0x46t 0x0t
        0x4ft 0x0t
        0x55t 0x0t
        0x4et 0x0t
        0x44t 0x0t
    .end array-data

    .line 4810
    nop

    :array_4c
    .array-data 0x2
        0x4et 0x0t
        0x4ft 0x0t
        0x54t 0x0t
        0x20t 0x0t
        0x46t 0x0t
        0x4ft 0x0t
        0x55t 0x0t
        0x4et 0x0t
        0x44t 0x0t
    .end array-data
.end method

.method private reBoot()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2320
    .local v0, i:Landroid/content/Intent;
    const-string v1, "nowait"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2321
    const-string v1, "interval"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2322
    const-string v1, "window"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2323
    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2324
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2325
    return-void
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 5338
    const-string v3, ""

    .line 5339
    const/4 v2, 0x0

    .line 5341
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1fa0

    invoke-direct {v1, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_28

    .line 5342
    if-eqz v1, :cond_51

    .line 5343
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_4b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_4d

    move-result-object v0

    .line 5349
    :goto_19
    if-eqz v1, :cond_1e

    .line 5351
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_23

    .line 5357
    :cond_1e
    :goto_1e
    if-nez v0, :cond_22

    .line 5358
    const-string v0, ""

    .line 5360
    :cond_22
    return-object v0

    .line 5352
    :catch_23
    move-exception v1

    .line 5353
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .line 5345
    :catch_28
    move-exception v0

    move-object v1, v2

    .line 5346
    :goto_2a
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 5347
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_4b

    .line 5349
    if-eqz v1, :cond_4f

    .line 5351
    :try_start_33
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_38

    move-object v0, v3

    .line 5354
    goto :goto_1e

    .line 5352
    :catch_38
    move-exception v0

    .line 5353
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v3

    .line 5354
    goto :goto_1e

    .line 5349
    :catchall_3e
    move-exception v0

    move-object v1, v2

    :goto_40
    if-eqz v1, :cond_45

    .line 5351
    :try_start_42
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    .line 5354
    :cond_45
    :goto_45
    throw v0

    .line 5352
    :catch_46
    move-exception v1

    .line 5353
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    .line 5349
    :catchall_4b
    move-exception v0

    goto :goto_40

    .line 5345
    :catch_4d
    move-exception v0

    goto :goto_2a

    :cond_4f
    move-object v0, v3

    goto :goto_1e

    :cond_51
    move-object v0, v3

    goto :goto_19
.end method

.method private readTemp()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 4476
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/power_supply/battery/batt_temp"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4478
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4479
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4480
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 4482
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2d
    const/16 v1, 0xa

    if-ge v0, v1, :cond_4a

    .line 4483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4482
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 4491
    :cond_4a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_4e} :catch_4f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4e} :catch_54

    .line 4499
    :goto_4e
    return-void

    .line 4493
    :catch_4f
    move-exception v0

    .line 4494
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_4e

    .line 4496
    :catch_54
    move-exception v0

    .line 4497
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_4e
.end method

.method private readTempAdc()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 4503
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/power_supply/battery/batt_temp_adc"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4505
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4506
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 4508
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1c
    const/16 v1, 0xa

    if-ge v0, v1, :cond_39

    .line 4509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4508
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 4517
    :cond_39
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_3d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3d} :catch_43

    .line 4525
    :goto_3d
    return-void

    .line 4519
    :catch_3e
    move-exception v0

    .line 4520
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_3d

    .line 4522
    :catch_43
    move-exception v0

    .line 4523
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_3d
.end method

.method private readlightSensor()V
    .registers 8

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 5121
    .line 5122
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 5123
    const-string v2, "RilActionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readlightSensor  - Read1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5124
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 5125
    const-string v2, "RilActionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readlightSensor  - Length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5127
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 5128
    if-ne v1, v6, :cond_91

    .line 5129
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    div-int/lit16 v1, v1, 0x2710

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5130
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5131
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    rem-int/lit16 v1, v1, 0x2710

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5133
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    rem-int/lit16 v1, v1, 0x2710

    rem-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5134
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5135
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    rem-int/lit16 v1, v1, 0x2710

    rem-int/lit16 v1, v1, 0x3e8

    rem-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5136
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5137
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5138
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5139
    :goto_87
    if-ge v0, v6, :cond_140

    .line 5140
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5139
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 5142
    :cond_91
    const/4 v3, 0x4

    if-ne v1, v3, :cond_d1

    .line 5143
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5144
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5145
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    rem-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5146
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5147
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    rem-int/lit16 v1, v1, 0x3e8

    rem-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5148
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5149
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5150
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5151
    :goto_c6
    const/4 v1, 0x6

    if-ge v0, v1, :cond_140

    .line 5152
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5151
    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    .line 5154
    :cond_d1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_102

    .line 5155
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    div-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5156
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5157
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    rem-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5159
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5160
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5161
    :goto_f7
    const/4 v1, 0x7

    if-ge v0, v1, :cond_140

    .line 5162
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5161
    add-int/lit8 v0, v0, 0x1

    goto :goto_f7

    .line 5164
    :cond_102
    const/4 v3, 0x2

    if-ne v1, v3, :cond_127

    .line 5165
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5166
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5167
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5168
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5169
    :goto_11b
    const/16 v1, 0x8

    if-ge v0, v1, :cond_140

    .line 5170
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5169
    add-int/lit8 v0, v0, 0x1

    goto :goto_11b

    .line 5172
    :cond_127
    if-ne v1, v5, :cond_140

    .line 5173
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLightData:I

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5174
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5175
    :goto_134
    const/16 v1, 0x9

    if-ge v0, v1, :cond_140

    .line 5176
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5175
    add-int/lit8 v0, v0, 0x1

    goto :goto_134

    .line 5180
    :cond_140
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 5181
    const-string v0, "RilACtion Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LuxValue Data == ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5182
    invoke-direct {p0, v5}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 5184
    return-void
.end method

.method private rearCameraPreview()V
    .registers 4

    .prologue
    .line 2885
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2886
    const-string v1, "camera_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2887
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2888
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startActivity(Landroid/content/Intent;)V

    .line 2890
    sget-boolean v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCameraStarted:Z

    if-nez v0, :cond_24

    .line 2892
    const-string v0, "RilActionService"

    const-string v1, "Status set true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCameraStarted:Z

    .line 2915
    :goto_23
    return-void

    .line 2897
    :cond_24
    const-string v0, "RilActionService"

    const-string v1, "Status check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.CameraStart.Status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2899
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_23
.end method

.method private receiverMax()V
    .registers 6

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 3218
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mediaPlayStop()V

    .line 3219
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 3220
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3222
    const v0, 0x7f050008

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 3223
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 3224
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3226
    const-wide/16 v0, 0x3e8

    :try_start_27
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_40

    .line 3229
    :goto_2a
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "factory_test_route=rcv"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3230
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3233
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3259
    return-void

    .line 3227
    :catch_40
    move-exception v0

    goto :goto_2a
.end method

.method private receiverMin()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3262
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3263
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setForceSetEarpath(I)V

    .line 3265
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_16

    .line 3266
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 3267
    :cond_16
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3268
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 3270
    :cond_1f
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 3271
    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3273
    const v0, 0x7f050008

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 3274
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 3275
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3277
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3286
    return-void
.end method

.method private rightSpeakerMax()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 3185
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3186
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setForceSetEarpath(I)V

    .line 3188
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_16

    .line 3189
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 3190
    :cond_16
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 3191
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3193
    const v0, 0x7f05000a

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 3194
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 3195
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3197
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3198
    return-void
.end method

.method private rightSpeakerMin()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3201
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3202
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setForceSetEarpath(I)V

    .line 3204
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_16

    .line 3205
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 3206
    :cond_16
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 3207
    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3209
    const v0, 0x7f05000a

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 3210
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 3211
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3213
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3214
    return-void
.end method

.method private rtcRead()V
    .registers 11

    .prologue
    const/16 v8, 0xc

    const/4 v3, 0x5

    const/4 v2, 0x2

    const/4 v9, 0x1

    const/16 v7, 0xa

    .line 3045
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 3046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3047
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_10c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3048
    :goto_43
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v1, v7, :cond_127

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3049
    :goto_60
    const/16 v2, 0x9

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_140

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3050
    :goto_7f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v9, v3, :cond_98

    .line 3051
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3053
    :cond_98
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v3, v7, :cond_15b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3054
    :goto_b5
    const/16 v4, 0xd

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v4, v7, :cond_174

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3055
    :goto_d6
    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-gez v7, :cond_18f

    const-string v5, "6"

    .line 3057
    :goto_e1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3058
    invoke-direct {p0, v9}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3060
    return-void

    .line 3047
    :cond_10c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_43

    .line 3048
    :cond_127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_60

    .line 3049
    :cond_140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7f

    .line 3053
    :cond_15b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b5

    .line 3054
    :cond_174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_d6

    .line 3055
    :cond_18f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_e1
.end method

.method private rtcWrite(Ljava/lang/String;)V
    .registers 15
    .parameter "mTime"

    .prologue
    .line 3063
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 3065
    .local v8, rightNow:Ljava/util/Calendar;
    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stringToInt(Ljava/lang/String;)I

    move-result v7

    .line 3066
    .local v7, mYear:I
    const/16 v11, 0x8

    const/16 v12, 0xc

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stringToInt(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .line 3067
    .local v5, mMonth:I
    const/16 v11, 0xc

    const/16 v12, 0x10

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stringToInt(Ljava/lang/String;)I

    move-result v1

    .line 3068
    .local v1, mDayOfMonth:I
    const/16 v11, 0x10

    const/16 v12, 0x14

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stringToInt(Ljava/lang/String;)I

    move-result v3

    .line 3069
    .local v3, mHour:I
    const/4 v0, 0x0

    .line 3070
    .local v0, mAmPm:I
    const/16 v11, 0xc

    if-le v3, v11, :cond_3d

    .line 3071
    add-int/lit8 v3, v3, -0xc

    .line 3072
    const/4 v0, 0x1

    .line 3074
    :cond_3d
    const/16 v11, 0x14

    const/16 v12, 0x18

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stringToInt(Ljava/lang/String;)I

    move-result v4

    .line 3075
    .local v4, mMinute:I
    const/16 v11, 0x18

    const/16 v12, 0x1c

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stringToInt(Ljava/lang/String;)I

    move-result v6

    .line 3076
    .local v6, mSec:I
    const/16 v11, 0x1c

    const/16 v12, 0x1e

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->stringToInt(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v2, v11, 0x2

    .line 3077
    .local v2, mDayOfWeek:I
    const/16 v11, 0x8

    if-ne v2, v11, :cond_68

    const/4 v2, 0x1

    .line 3079
    :cond_68
    const/4 v11, 0x1

    invoke-virtual {v8, v11, v7}, Ljava/util/Calendar;->set(II)V

    .line 3080
    const/4 v11, 0x2

    invoke-virtual {v8, v11, v5}, Ljava/util/Calendar;->set(II)V

    .line 3081
    const/4 v11, 0x5

    invoke-virtual {v8, v11, v1}, Ljava/util/Calendar;->set(II)V

    .line 3082
    const/16 v11, 0xa

    invoke-virtual {v8, v11, v3}, Ljava/util/Calendar;->set(II)V

    .line 3083
    const/16 v11, 0xc

    invoke-virtual {v8, v11, v4}, Ljava/util/Calendar;->set(II)V

    .line 3084
    const/16 v11, 0xd

    invoke-virtual {v8, v11, v6}, Ljava/util/Calendar;->set(II)V

    .line 3087
    if-nez v0, :cond_97

    const/16 v11, 0x9

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 3090
    :goto_8b
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 3092
    .local v9, when:J
    invoke-static {v9, v10}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 3094
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3095
    return-void

    .line 3088
    .end local v9           #when:J
    :cond_97
    const/16 v11, 0x9

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    goto :goto_8b
.end method

.method private rxFrameReceiveError(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3656
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3657
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3659
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3660
    const-string v2, "CMDID"

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3661
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3662
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3664
    :cond_1f
    return-void
.end method

.method private rxFrameReceiveGood(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3667
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3668
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3670
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3671
    const-string v2, "CMDID"

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3672
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3673
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3675
    :cond_1f
    return-void
.end method

.method private selectUsb(Ljava/lang/String;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 4647
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_70

    .line 4648
    new-array v1, v3, [B

    fill-array-data v1, :array_78

    .line 4649
    new-array v2, v3, [B

    fill-array-data v2, :array_7e

    .line 4650
    new-array v3, v3, [B

    fill-array-data v3, :array_84

    .line 4651
    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_8a

    .line 4653
    new-instance v5, Ljava/io/FileOutputStream;

    const-string v6, "/sys/class/sec/switch/UsbMenuSel"

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 4655
    :try_start_23
    const-string v6, "KIES"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 4656
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_52
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2e} :catch_3e

    .line 4675
    :cond_2e
    :goto_2e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 4677
    :goto_31
    return-void

    .line 4658
    :cond_32
    :try_start_32
    const-string v0, "MTP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 4659
    invoke-virtual {v5, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_52
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_3e

    goto :goto_2e

    .line 4671
    :catch_3e
    move-exception v0

    .line 4672
    :try_start_3f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_52

    .line 4675
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    goto :goto_31

    .line 4661
    :cond_46
    :try_start_46
    const-string v0, "UMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 4662
    invoke-virtual {v5, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_52
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_51} :catch_3e

    goto :goto_2e

    .line 4675
    :catchall_52
    move-exception v0

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 4664
    :cond_57
    :try_start_57
    const-string v0, "VTP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 4665
    invoke-virtual {v5, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_2e

    .line 4667
    :cond_63
    const-string v0, "ASKON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4668
    invoke-virtual {v5, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6e
    .catchall {:try_start_57 .. :try_end_6e} :catchall_52
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_6e} :catch_3e

    goto :goto_2e

    .line 4647
    nop

    :array_70
    .array-data 0x1
        0x4bt
        0x49t
        0x45t
        0x53t
        0x0t
    .end array-data

    .line 4648
    nop

    :array_78
    .array-data 0x1
        0x4dt
        0x54t
        0x50t
        0x0t
    .end array-data

    .line 4649
    :array_7e
    .array-data 0x1
        0x55t
        0x4dt
        0x53t
        0x0t
    .end array-data

    .line 4650
    :array_84
    .array-data 0x1
        0x56t
        0x54t
        0x50t
        0x0t
    .end array-data

    .line 4651
    :array_8a
    .array-data 0x1
        0x41t
        0x53t
        0x4bt
        0x4ft
        0x4et
        0x0t
    .end array-data
.end method

.method private sendResultCommand(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 4892
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.action.RilCommandSend"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4894
    const-string v1, "COMMAND"

    const-string v2, "result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4895
    const-string v1, "TEST_COMMAND"

    iget v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCmd:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4897
    if-nez p1, :cond_5c

    .line 4898
    const-string v1, "ATTR"

    iget v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAttr:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4899
    const-string v1, "LENGTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4914
    :cond_24
    :goto_24
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResultCommand - mode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] mData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] resultIntent["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4916
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4917
    return-void

    .line 4901
    :cond_5c
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7b

    .line 4902
    const-string v1, "ATTR"

    iget v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAttr:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4903
    const-string v1, "DATA"

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4904
    const-string v1, "LENGTH"

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_24

    .line 4906
    :cond_7b
    if-ne p1, v3, :cond_8a

    .line 4907
    const-string v1, "ATTR"

    const/16 v2, 0xfe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4908
    const-string v1, "LENGTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_24

    .line 4910
    :cond_8a
    const/4 v1, 0x3

    if-ne p1, v1, :cond_24

    .line 4911
    const-string v1, "ATTR"

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4912
    const-string v1, "LENGTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_24
.end method

.method private sensorCheckRange()V
    .registers 9

    .prologue
    const/16 v7, 0x1ff

    const/16 v6, -0x200

    .line 3016
    :try_start_4
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorX:I

    .line 3017
    iget v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorY:I

    .line 3018
    iget v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorZ:I

    .line 3020
    const-string v3, "RilActionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sensorCheckRange:x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "z:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorZ:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    if-lt v0, v6, :cond_40

    if-le v0, v7, :cond_99

    .line 3023
    :cond_40
    const-string v0, "F"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3026
    :goto_44
    if-lt v1, v6, :cond_48

    if-le v1, v7, :cond_ab

    .line 3027
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3030
    :goto_5f
    if-lt v2, v6, :cond_63

    if-le v2, v7, :cond_c3

    .line 3031
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3035
    :goto_7a
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensorCheckRange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3042
    :goto_98
    return-void

    .line 3025
    :cond_99
    const-string v0, "P"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9d} :catch_9e

    goto :goto_44

    .line 3037
    :catch_9e
    move-exception v0

    .line 3038
    const-string v0, "RilActionService"

    const-string v1, "sensorCheckRange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_98

    .line 3029
    :cond_ab
    :try_start_ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_5f

    .line 3033
    :cond_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_da} :catch_9e

    goto :goto_7a
.end method

.method private sensorRead()V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x20

    const/4 v7, 0x6

    .line 2964
    new-instance v2, Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorX:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2965
    new-instance v4, Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorY:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2966
    new-instance v1, Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mSensorZ:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2969
    :try_start_25
    const-string v0, "/sys/devices/virtual/accelerometer/accelerometer/acc_file"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2970
    const-string v3, "RilActionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acc rawdata : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2972
    new-instance v3, Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_5f} :catch_99

    .line 2973
    :try_start_5f
    new-instance v2, Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_75} :catch_fc

    .line 2974
    :try_start_75
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v4, 0x2

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_8b} :catch_101

    move-object v1, v2

    move-object v2, v3

    .line 2979
    :goto_8d
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    :goto_91
    if-ge v3, v7, :cond_a3

    .line 2980
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2979
    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    .line 2975
    :catch_99
    move-exception v0

    move-object v3, v0

    move-object v0, v4

    .line 2976
    :goto_9c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_8d

    .line 2982
    :cond_a3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    :goto_a7
    if-ge v3, v7, :cond_af

    .line 2983
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2982
    add-int/lit8 v3, v3, 0x1

    goto :goto_a7

    .line 2985
    :cond_af
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    :goto_b3
    if-ge v3, v7, :cond_bb

    .line 2986
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2985
    add-int/lit8 v3, v3, 0x1

    goto :goto_b3

    .line 2989
    :cond_bb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 2990
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sensorRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    invoke-direct {p0, v9}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2992
    return-void

    .line 2975
    :catch_fc
    move-exception v0

    move-object v2, v3

    move-object v3, v0

    move-object v0, v4

    goto :goto_9c

    :catch_101
    move-exception v0

    move-object v10, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v10

    goto :goto_9c
.end method

.method private setEndModeData(IIII)[B
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5038
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5039
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5042
    :try_start_a
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5043
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 5044
    invoke-virtual {v1, p4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5045
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_1b

    .line 5050
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_1a
    return-object v0

    .line 5046
    :catch_1b
    move-exception v0

    .line 5047
    const-string v0, "RilActionService"

    const-string v1, "IOException in getServMQueryData!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5048
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private setForceSetEarpath(I)V
    .registers 6
    .parameter

    .prologue
    .line 3302
    const/4 v1, 0x0

    .line 3305
    :try_start_1
    new-instance v0, Ljava/io/FileWriter;

    const-string v2, "/sys/class/jack/jack_selector/select_jack"

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_5c

    .line 3308
    if-nez p1, :cond_15

    .line 3309
    const/16 v1, 0x30

    :try_start_c
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(I)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_3e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_1e

    .line 3322
    :cond_f
    :goto_f
    if-eqz v0, :cond_14

    .line 3324
    :try_start_11
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_48

    .line 3331
    :cond_14
    :goto_14
    return-void

    .line 3311
    :cond_15
    const/4 v1, 0x1

    if-ne p1, v1, :cond_35

    .line 3312
    const/16 v1, 0x31

    :try_start_1a
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_3e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_f

    .line 3317
    :catch_1e
    move-exception v1

    .line 3318
    :goto_1f
    :try_start_1f
    const-string v1, "RilActionService"

    const-string v2, "File open error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_3e

    .line 3322
    if-eqz v0, :cond_14

    .line 3324
    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_14

    .line 3325
    :catch_2c
    move-exception v0

    .line 3326
    const-string v0, "RilActionService"

    const-string v1, "File Close error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 3314
    :cond_35
    const/4 v1, 0x2

    if-ne p1, v1, :cond_f

    .line 3315
    const/16 v1, 0x32

    :try_start_3a
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(I)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_1e

    goto :goto_f

    .line 3322
    :catchall_3e
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_42
    if-eqz v1, :cond_47

    .line 3324
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_51

    .line 3327
    :cond_47
    :goto_47
    throw v0

    .line 3325
    :catch_48
    move-exception v0

    .line 3326
    const-string v0, "RilActionService"

    const-string v1, "File Close error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 3325
    :catch_51
    move-exception v1

    .line 3326
    const-string v1, "RilActionService"

    const-string v2, "File Close error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 3322
    :catchall_5a
    move-exception v0

    goto :goto_42

    .line 3317
    :catch_5c
    move-exception v0

    move-object v0, v1

    goto :goto_1f
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3690
    const-string v2, "phoneutil.preferences_name"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3691
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3692
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3693
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3694
    return-void
.end method

.method private slaveSimRead()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 3345
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3346
    .local v0, mT:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v2, :cond_15

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-nez v1, :cond_1d

    .line 3347
    :cond_15
    const-string v1, "NOS"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3351
    :goto_19
    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3352
    return-void

    .line 3349
    :cond_1d
    const-string v1, "SIM"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_19
.end method

.method private speakerOff()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3289
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3292
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 3293
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3295
    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3296
    return-void
.end method

.method private startEarLoopMainMIC(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4958
    const-string v0, "RilActionService"

    const-string v1, "startEarLoop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4960
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-ne v0, v3, :cond_16

    .line 4962
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 4965
    :cond_16
    const-string v0, "RilActionService"

    const-string v1, "startEarLoop, factory_test_route=on..incall..ear_ear"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4966
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "factory_test_route=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4967
    if-ne p1, v3, :cond_3e

    .line 4968
    const-string v0, "RilActionService"

    const-string v1, "startEarLoop, factory_test_route=on..incall..pcmon"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4969
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "factory_test_route=pcmon"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4974
    :goto_34
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 4975
    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4976
    return-void

    .line 4971
    :cond_3e
    const-string v0, "RilActionService"

    const-string v1, "startEarLoop, factory_test_route=on..incall..ear_ear"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4972
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "factory_test_route=ear_ear"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_34
.end method

.method private startLoudSpkLoopMainMIC(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 4920
    const-string v0, "RilActionService"

    const-string v1, "startLoudSpkLoop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4921
    sget v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->LOOPBACK_STOP:I

    invoke-direct {p0, v0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->loopbackStart(II)V

    .line 4923
    const-string v0, "RilActionService"

    const-string v1, "startLoudSpkLoop, factory_test_route=on..incall..spk"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4924
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "factory_test_route=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4925
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 4926
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "factory_test_route=spk"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4929
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v2, v1}, Landroid/media/AudioManager;->setRouting(III)V

    .line 4931
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 4933
    sget v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->LOOPBACK_START:I

    invoke-direct {p0, v0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->loopbackStart(II)V

    .line 4934
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4936
    return-void
.end method

.method private startLoudSpkLoopMainMIC2(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 4939
    const-string v0, "RilActionService"

    const-string v1, "startLoudSpkLoop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4940
    sget v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->LOOPBACK_STOP:I

    invoke-direct {p0, v0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->loopbackStart(II)V

    .line 4942
    const-string v0, "RilActionService"

    const-string v1, "startLoudSpkLoop, factory_test_route=on..incall..spk"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4943
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "factory_test_route=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4944
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 4945
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "factory_test_route=spk"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4948
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v2, v1}, Landroid/media/AudioManager;->setRouting(III)V

    .line 4950
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 4952
    sget v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->LOOPBACK_START:I

    invoke-direct {p0, v0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->loopbackStart(II)V

    .line 4953
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4955
    return-void
.end method

.method private startRcvLoopMainMIC(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 4979
    const-string v0, "RilActionService"

    const-string v1, "startEarLoop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4980
    sget v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->LOOPBACK_STOP:I

    invoke-direct {p0, v0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->loopbackStart(II)V

    .line 4982
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 4984
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 4987
    :cond_1c
    const-string v0, "RilActionService"

    const-string v1, "startRcvLoop, factory_test_route=on..incall..rcv"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4988
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "factory_test_route=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4989
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 4990
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "factory_test_route=rcv"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 4992
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x8

    const/4 v2, -0x1

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 4994
    sget v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->LOOPBACK_START:I

    invoke-direct {p0, v0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->loopbackStart(II)V

    .line 4995
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4996
    return-void
.end method

.method private startRx(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3645
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3646
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3648
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3649
    const-string v2, "CMDID"

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3650
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3651
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3653
    :cond_1f
    return-void
.end method

.method private startTx(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3623
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3624
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3626
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3627
    const-string v2, "CMDID"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3628
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3629
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3631
    :cond_1f
    return-void
.end method

.method private stereoMax()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3098
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3100
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setForceSetEarpath(I)V

    .line 3102
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_17

    .line 3103
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 3104
    :cond_17
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 3105
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v5, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3107
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 3108
    const v0, 0x7f050008

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 3109
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 3110
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3112
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3121
    return-void
.end method

.method private stereoMin()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3124
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3126
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setForceSetEarpath(I)V

    .line 3128
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_16

    .line 3129
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 3130
    :cond_16
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 3131
    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3133
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 3134
    const v0, 0x7f050008

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 3135
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 3136
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3138
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3147
    return-void
.end method

.method private stopCamera()V
    .registers 3

    .prologue
    .line 2943
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.CameraStop.Status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2944
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2945
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCameraStarted:Z

    .line 2946
    return-void
.end method

.method private stopHDMI()V
    .registers 4

    .prologue
    .line 5440
    const-string v0, "RilActionService"

    const-string v1, "HDMI Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5441
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 5442
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mediaPlayStop()V

    .line 5443
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 5444
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taesan HDMI stop (mData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5445
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 5447
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.HDMITEST_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 5449
    return-void
.end method

.method private stopLooptest()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 5054
    const-string v0, "RilActionService"

    const-string v1, "stopLooptest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5055
    sget v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->LOOPBACK_STOP:I

    invoke-direct {p0, v0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->loopbackStart(II)V

    .line 5056
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 5057
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLoopBackStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 5058
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "factory_test_route=pcmoff"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5059
    const-string v0, "RilActionService"

    const-string v1, "stopLooptest, factory_test_route=pcmoff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5061
    :cond_25
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "factory_test_route=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5062
    const-string v0, "RilActionService"

    const-string v1, "stopLooptest, factory_test_route=off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5064
    iput v3, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mLoopBackStatus:I

    .line 5065
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 5066
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x8

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 5067
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 5068
    return-void
.end method

.method private stopMusic()V
    .registers 3

    .prologue
    .line 2248
    const-string v0, "RilACtion Service"

    const-string v1, "Muscic STop!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    .line 2250
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 2251
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mp:Landroid/media/MediaPlayer;

    .line 2255
    :cond_18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2257
    return-void
.end method

.method private stopRx(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3634
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3635
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3637
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3638
    const-string v2, "CMDID"

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3639
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3640
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3642
    :cond_1f
    return-void
.end method

.method private stopTx(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3612
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3613
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3615
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3616
    const-string v2, "CMDID"

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3617
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3618
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3620
    :cond_1f
    return-void
.end method

.method private stringToInt(Ljava/lang/String;)I
    .registers 6
    .parameter "mStringData"

    .prologue
    .line 4856
    const/4 v1, 0x0

    .line 4858
    .local v1, mIntData:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 4859
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_23

    .line 4860
    mul-int/lit8 v1, v1, 0xa

    .line 4861
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    .line 4858
    :cond_23
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 4865
    :cond_26
    return v1
.end method

.method private touch_check_status()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 4326
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/touch/firmware/firmware_ret"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4327
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4328
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 4329
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 4330
    const-string v0, "PASS"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4336
    :goto_28
    const-string v0, "[TSP]touch_check_status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4337
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4348
    :goto_46
    return-void

    .line 4331
    :cond_47
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 4332
    const-string v0, "FAIL"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_55} :catch_56
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_55} :catch_67

    goto :goto_28

    .line 4339
    :catch_56
    move-exception v0

    .line 4340
    const-string v0, "[TSP]touch_check_status"

    const-string v1, "FileNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4341
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_46

    .line 4334
    :cond_62
    :try_start_62
    const-string v0, "DOWNLOADING"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    :try_end_66
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_66} :catch_56
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_66} :catch_67

    goto :goto_28

    .line 4344
    :catch_67
    move-exception v0

    .line 4345
    const-string v0, "[TSP]touch_check_status"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4346
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_46
.end method

.method private touch_firmware_read()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 4307
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/touch/firmware/firmware"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4308
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4309
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 4310
    const-string v0, "[TSP]touch_firmware_read"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firmware version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_34} :catch_35
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_34} :catch_41

    .line 4322
    :goto_34
    return-void

    .line 4313
    :catch_35
    move-exception v0

    .line 4314
    const-string v0, "[TSP]touch_firmware_read"

    const-string v1, "FileNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4315
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_34

    .line 4318
    :catch_41
    move-exception v0

    .line 4319
    const-string v0, "[TSP]touchfirmwareupread"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4320
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_34
.end method

.method private touch_firmware_update()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 4352
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/touch/firmware/firmware"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4353
    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 4354
    const/4 v2, 0x0

    const/16 v3, 0x31

    aput-byte v3, v1, v2

    .line 4355
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4356
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 4357
    const-string v0, "[TSP]touch_firmware_update"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4358
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_39} :catch_3a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_39} :catch_46

    .line 4369
    :goto_39
    return-void

    .line 4360
    :catch_3a
    move-exception v0

    .line 4361
    const-string v0, "[TSP]touch_firmware_update"

    const-string v1, "FileNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4362
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_39

    .line 4365
    :catch_46
    move-exception v0

    .line 4366
    const-string v0, "[TSP]touch_firmware_update"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4367
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_39
.end method

.method private touchkey_firmware_read()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 4245
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/touch/firmware/firmware"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4246
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4247
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 4248
    const-string v0, "touchkey_firmware_read"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firmware version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_34} :catch_35
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_34} :catch_41

    .line 4260
    :goto_34
    return-void

    .line 4251
    :catch_35
    move-exception v0

    .line 4252
    const-string v0, "touchkey_firmware_read"

    const-string v1, "FileNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_34

    .line 4256
    :catch_41
    move-exception v0

    .line 4257
    const-string v0, "touchkeyfirmwareupread"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_34
.end method

.method private trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "version"

    .prologue
    const/16 v2, 0x5f

    .line 2035
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 2036
    const/4 v0, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2038
    .end local p1
    :cond_12
    return-object p1
.end method

.method private txGainSetting(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3514
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 3515
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3517
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3518
    const-string v2, "CMDID"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3519
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3520
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3522
    :cond_1e
    return-void
.end method

.method private uartMdmSelect()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 3961
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3962
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3963
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3964
    return-void
.end method

.method private uartMsmApSelect()V
    .registers 6

    .prologue
    const/4 v0, 0x3

    .line 3901
    const-string v2, "/sys/class/sec/switch/uart_sel"

    .line 3902
    new-array v3, v0, [B

    fill-array-data v3, :array_62

    .line 3903
    const/4 v1, 0x0

    .line 3905
    :try_start_9
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_4b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_2f

    .line 3906
    :try_start_e
    const-string v1, "persist.uart"

    const-string v2, "msm_ap 01"

    invoke-direct {p0, v1, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3907
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 3911
    const-string v1, "OK"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3912
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_5b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_20} :catch_60

    .line 3920
    if-eqz v0, :cond_25

    .line 3922
    :try_start_22
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    .line 3928
    :cond_25
    :goto_25
    return-void

    .line 3923
    :catch_26
    move-exception v0

    .line 3924
    const-string v0, "RilActionService"

    const-string v1, "File Close error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3914
    :catch_2f
    move-exception v0

    move-object v0, v1

    .line 3915
    :goto_31
    :try_start_31
    const-string v1, "RilActionService"

    const-string v2, "File open error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3916
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_5b

    .line 3920
    if-eqz v0, :cond_25

    .line 3922
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_25

    .line 3923
    :catch_42
    move-exception v0

    .line 3924
    const-string v0, "RilActionService"

    const-string v1, "File Close error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3920
    :catchall_4b
    move-exception v0

    :goto_4c
    if-eqz v1, :cond_51

    .line 3922
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 3925
    :cond_51
    :goto_51
    throw v0

    .line 3923
    :catch_52
    move-exception v1

    .line 3924
    const-string v1, "RilActionService"

    const-string v2, "File Close error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 3920
    :catchall_5b
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4c

    .line 3914
    :catch_60
    move-exception v1

    goto :goto_31

    .line 3902
    :array_62
    .array-data 0x1
        0x30t
        0x31t
        0x0t
    .end array-data
.end method

.method private uartMsmCpSelect()V
    .registers 6

    .prologue
    .line 3931
    const-string v2, "/sys/class/sec/switch/uart_sel"

    .line 3932
    const/4 v0, 0x4

    new-array v3, v0, [B

    fill-array-data v3, :array_62

    .line 3933
    const/4 v1, 0x0

    .line 3935
    :try_start_9
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_4b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_2f

    .line 3936
    :try_start_e
    const-string v1, "persist.uart"

    const-string v2, "msm_cp 00"

    invoke-direct {p0, v1, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3937
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 3941
    const-string v1, "OK"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3942
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_5b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_20} :catch_60

    .line 3950
    if-eqz v0, :cond_25

    .line 3952
    :try_start_22
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    .line 3958
    :cond_25
    :goto_25
    return-void

    .line 3953
    :catch_26
    move-exception v0

    .line 3954
    const-string v0, "RilActionService"

    const-string v1, "File Close error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3944
    :catch_2f
    move-exception v0

    move-object v0, v1

    .line 3945
    :goto_31
    :try_start_31
    const-string v1, "RilActionService"

    const-string v2, "File open error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_5b

    .line 3950
    if-eqz v0, :cond_25

    .line 3952
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_25

    .line 3953
    :catch_42
    move-exception v0

    .line 3954
    const-string v0, "RilActionService"

    const-string v1, "File Close error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3950
    :catchall_4b
    move-exception v0

    :goto_4c
    if-eqz v1, :cond_51

    .line 3952
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 3955
    :cond_51
    :goto_51
    throw v0

    .line 3953
    :catch_52
    move-exception v1

    .line 3954
    const-string v1, "RilActionService"

    const-string v2, "File Close error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 3950
    :catchall_5b
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4c

    .line 3944
    :catch_60
    move-exception v1

    goto :goto_31

    .line 3932
    :array_62
    .array-data 0x1
        0x50t
        0x44t
        0x41t
        0x0t
    .end array-data
.end method

.method private uartSetStatusQ()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 4105
    const/16 v0, 0x64

    new-array v2, v0, [B

    .line 4110
    :try_start_6
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/switch/uart_sel"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_12} :catch_7c

    .line 4117
    :goto_12
    :try_start_12
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eqz v0, :cond_9b

    .line 4118
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_e7

    .line 4119
    :try_start_1d
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_35} :catch_aa

    .line 4129
    :goto_35
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4130
    new-instance v1, Ljava/lang/String;

    const-string v2, "PDA"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4131
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4133
    new-instance v2, Ljava/lang/String;

    const-string v3, "LTEMODEM"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4134
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4136
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_c8

    .line 4138
    const-string v0, "RilActionService"

    const-string v1, "setting msm_cp readAndSetUartValue"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4139
    const-string v0, "UART1"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4151
    :goto_5d
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uart_setstatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4153
    return-void

    .line 4111
    :catch_7c
    move-exception v0

    .line 4112
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 4113
    const-string v3, "RilActionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_12

    .line 4121
    :cond_9b
    :try_start_9b
    new-instance v0, Ljava/lang/String;

    const-string v2, "reda fail.............."

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a2} :catch_e7

    .line 4122
    :try_start_a2
    const-string v1, "RilActionService"

    const-string v2, "what\'s the problem !!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a9} :catch_aa

    goto :goto_35

    .line 4124
    :catch_aa
    move-exception v1

    .line 4125
    :goto_ab
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 4126
    const-string v2, "Phoneutil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 4141
    :cond_c8
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_da

    .line 4143
    const-string v0, "RilActionService"

    const-string v1, "else mdm readAndSetUartValue"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    const-string v0, "UART2"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_5d

    .line 4148
    :cond_da
    const-string v0, "RilActionService"

    const-string v1, "Error not reading properly from UART file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4149
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto/16 :goto_5d

    .line 4124
    :catch_e7
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_ab
.end method

.method private unloadNormalFW(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3590
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 3591
    invoke-direct {p0, p1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->hexStringToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3593
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3594
    const-string v2, "CMDID"

    const/16 v3, 0x13

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3595
    const-string v2, "S_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3596
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3598
    :cond_1f
    return-void
.end method

.method private usbMdmSelect()V
    .registers 5

    .prologue
    .line 3806
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3807
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3808
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3809
    return-void
.end method

.method private usbModeCheck()V
    .registers 4

    .prologue
    .line 4571
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "/sys/class/sec/switch/UsbMenuSel"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4572
    packed-switch v0, :pswitch_data_28

    .line 4587
    :goto_e
    :pswitch_e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4588
    return-void

    .line 4574
    :pswitch_13
    const-string v0, "SUSB"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_e

    .line 4577
    :pswitch_18
    const-string v0, "MTP"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_e

    .line 4580
    :pswitch_1d
    const-string v0, "MSTR"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_e

    .line 4583
    :pswitch_22
    const-string v0, "AOC"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto :goto_e

    .line 4572
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_13
        :pswitch_18
        :pswitch_1d
        :pswitch_e
        :pswitch_22
    .end packed-switch
.end method

.method private usbModeSetASKOnConnection()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 4606
    :try_start_1
    const-string v0, "ASKON"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->selectUsb(Ljava/lang/String;)V

    .line 4607
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4608
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_19

    .line 4615
    :goto_e
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "/sys/class/sec/switch/UsbMenuSel"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4616
    return-void

    .line 4610
    :catch_19
    move-exception v0

    .line 4611
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4612
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4613
    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_e
.end method

.method private usbModeSetMTP()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 4620
    :try_start_1
    const-string v0, "MTP"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->selectUsb(Ljava/lang/String;)V

    .line 4621
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4622
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_18

    .line 4629
    :goto_e
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "/sys/class/sec/switch/UsbMenuSel"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4630
    return-void

    .line 4624
    :catch_18
    move-exception v0

    .line 4625
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4626
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4627
    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_e
.end method

.method private usbModeSetMassStorage()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 4634
    :try_start_1
    const-string v0, "UMS"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->selectUsb(Ljava/lang/String;)V

    .line 4635
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4636
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_19

    .line 4643
    :goto_e
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "/sys/class/sec/switch/UsbMenuSel"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4644
    return-void

    .line 4638
    :catch_19
    move-exception v0

    .line 4639
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4640
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4641
    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_e
.end method

.method private usbModeSetSamsungUsb()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 4592
    :try_start_1
    const-string v0, "KIES"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->selectUsb(Ljava/lang/String;)V

    .line 4593
    const-string v0, "OK"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4594
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_19

    .line 4601
    :goto_e
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "/sys/class/sec/switch/UsbMenuSel"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4602
    return-void

    .line 4596
    :catch_19
    move-exception v0

    .line 4597
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4598
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4599
    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_e
.end method

.method private usbMsmSelect()V
    .registers 6

    .prologue
    .line 3703
    const-string v2, "/sys/class/sec/switch/usb_sel"

    .line 3704
    const/4 v0, 0x4

    new-array v3, v0, [B

    fill-array-data v3, :array_62

    .line 3705
    const/4 v1, 0x0

    .line 3707
    :try_start_9
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_4b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_2f

    .line 3708
    :try_start_e
    const-string v1, "persist.usb"

    const-string v2, "msm 00"

    invoke-direct {p0, v1, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3709
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 3713
    const-string v1, "OK"

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3714
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_5b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_20} :catch_60

    .line 3722
    if-eqz v0, :cond_25

    .line 3724
    :try_start_22
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    .line 3730
    :cond_25
    :goto_25
    return-void

    .line 3725
    :catch_26
    move-exception v0

    .line 3726
    const-string v0, "RilActionService"

    const-string v1, "File Close error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3716
    :catch_2f
    move-exception v0

    move-object v0, v1

    .line 3717
    :goto_31
    :try_start_31
    const-string v1, "RilActionService"

    const-string v2, "File open error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_5b

    .line 3722
    if-eqz v0, :cond_25

    .line 3724
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_25

    .line 3725
    :catch_42
    move-exception v0

    .line 3726
    const-string v0, "RilActionService"

    const-string v1, "File Close error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3722
    :catchall_4b
    move-exception v0

    :goto_4c
    if-eqz v1, :cond_51

    .line 3724
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 3727
    :cond_51
    :goto_51
    throw v0

    .line 3725
    :catch_52
    move-exception v1

    .line 3726
    const-string v1, "RilActionService"

    const-string v2, "File Close error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 3722
    :catchall_5b
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4c

    .line 3716
    :catch_60
    move-exception v1

    goto :goto_31

    .line 3704
    :array_62
    .array-data 0x1
        0x50t
        0x44t
        0x41t
        0x0t
    .end array-data
.end method

.method private usbSetStatusQ()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 4054
    const/16 v0, 0x64

    new-array v2, v0, [B

    .line 4059
    :try_start_6
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/switch/usb_sel"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_12} :catch_7c

    .line 4067
    :goto_12
    :try_start_12
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eqz v0, :cond_a2

    .line 4068
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_ef

    .line 4069
    :try_start_1d
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_35} :catch_b1

    .line 4079
    :goto_35
    new-instance v1, Ljava/lang/String;

    const-string v2, "USB Switch : PDA"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4080
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4081
    new-instance v2, Ljava/lang/String;

    const-string v3, "USB Switch : LTEMODEM"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4082
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4083
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4084
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_cf

    .line 4086
    const-string v0, "RilActionService"

    const-string v1, "setting msm"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4087
    const-string v0, "MSM"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 4100
    :goto_5d
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usb_setstatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4101
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 4102
    return-void

    .line 4060
    :catch_7c
    move-exception v0

    .line 4061
    const-string v3, "RilActionService"

    const-string v4, "file not found ex readAndSetUsbValue"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4062
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 4063
    const-string v3, "Phoneutil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_12

    .line 4071
    :cond_a2
    :try_start_a2
    new-instance v0, Ljava/lang/String;

    const-string v2, "reda fail.............."

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a9} :catch_ef

    .line 4072
    :try_start_a9
    const-string v1, "RilActionService"

    const-string v2, "what\'s the problem !!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b0} :catch_b1

    goto :goto_35

    .line 4074
    :catch_b1
    move-exception v1

    .line 4075
    :goto_b2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 4076
    const-string v2, "RilActionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 4089
    :cond_cf
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_e2

    .line 4091
    const-string v0, "RilActionService"

    const-string v1, "setting mdm"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4092
    const-string v0, "MDM"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto/16 :goto_5d

    .line 4096
    :cond_e2
    const-string v0, "RilActionService"

    const-string v1, "Error not reading properly from USB file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4097
    const-string v0, "NG"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    goto/16 :goto_5d

    .line 4074
    :catch_ef
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_b2
.end method

.method private vibratorOff()V
    .registers 2

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 2477
    sget-object v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2478
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2479
    return-void
.end method

.method private vibratorOn()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2443
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2444
    const/16 v1, 0x1a

    const-string v2, "FactoryTest_Full Wake Lock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2445
    sget-object v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2447
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->vibrator:Landroid/os/Vibrator;

    .line 2448
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_2e

    .line 2449
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, v0, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 2461
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2463
    return-void

    .line 2448
    :array_2e
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private wakeUp()V
    .registers 4

    .prologue
    .line 2270
    const-string v0, "RilACtion Service"

    const-string v1, "wake up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    sget-object v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2274
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 2276
    return-void
.end method

.method private wakeUp(I)Z
    .registers 5
    .parameter

    .prologue
    .line 5077
    const-string v0, "RilDFTACtion Service"

    const-string v1, "wake up"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5079
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5082
    const v1, 0x3000001a

    const-string v2, "wake_up"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 5087
    sget-object v0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 5089
    const/4 v0, 0x1

    return v0
.end method

.method private wlanIdRead()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 3414
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/data/.nvmac.info"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3415
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3416
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 3417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    const/16 v2, 0x9

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    const/16 v2, 0xc

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    const/16 v2, 0xf

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;

    .line 3418
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_74} :catch_75
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_74} :catch_7a

    .line 3426
    :goto_74
    return-void

    .line 3420
    :catch_75
    move-exception v0

    .line 3421
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_74

    .line 3423
    :catch_7a
    move-exception v0

    .line 3424
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    goto :goto_74
.end method

.method private wlanIdWrite(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3429
    const-string v1, ""

    .line 3431
    const/4 v0, 0x1

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_52

    .line 3432
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x34

    if-eq v2, v3, :cond_21

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x36

    if-ne v2, v3, :cond_3c

    .line 3433
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, 0x10

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3431
    :goto_39
    add-int/lit8 v1, v1, 0x2

    goto :goto_7

    .line 3436
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 3440
    :cond_52
    const/16 v1, 0xc

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3442
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.WlanIdWrite"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3443
    const-string v2, "ADDR"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3444
    invoke-virtual {p0, v1}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3446
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V

    .line 3447
    return-void
.end method

.method private wlanTestStart()V
    .registers 4

    .prologue
    .line 3471
    iget v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I

    if-nez v0, :cond_1f

    .line 3472
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3473
    const-string v1, "com.sec.android.app.wlantest"

    const-string v2, "com.sec.android.app.wlantest.WlanTest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3474
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3475
    const-string v1, "MODE"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3476
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->startActivity(Landroid/content/Intent;)V

    .line 3478
    :cond_1f
    return-void
.end method


# virtual methods
.method public makeFile(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 2207
    :try_start_0
    const-string v0, "RilActionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2209
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 2211
    const/16 v2, 0x7d0

    new-array v2, v2, [B

    .line 2213
    :goto_31
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_59

    .line 2214
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_31

    .line 2221
    :catch_3b
    move-exception v0

    .line 2222
    const-string v1, "RilActionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileCopyError => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    :goto_58
    return-void

    .line 2217
    :cond_59
    :try_start_59
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 2218
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 2219
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_62} :catch_3b

    goto :goto_58
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 169
    const-string v0, "RilACtion Service"

    const-string v1, "service start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAudioManager:Landroid/media/AudioManager;

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v1, "com.sec.android.app.wlantest.WIFI_TEST_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "android.intent.action.WIFI_DRIVER_INDICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "test.mode.radio.freq.response"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "com.android.samsungtest.CameraStop.Pass"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v1, "com.android.samsungtest.CameraStop.Fail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v1, "com.android.samsungtest.CameraStart.Pass"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v1, "com.android.samsungtest.CameraStart.Fail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v1, "com.android.samsungtest.wimaxtest.Response"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v1, "com.android.samsungtest.wimaxtest.MACResponse"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v1, "com.android.samsungtest.HDMITEST_RUN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    const-string v0, "RilACtion Service"

    const-string v1, "service stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 359
    const-string v0, "COMMAND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;

    .line 360
    const-string v0, "CMD"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCmd:I

    .line 361
    const-string v0, "ATTR"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mAttr:I

    .line 363
    const-string v0, "RilACtion Service"

    const-string v1, "get Command"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->parsing()V

    .line 367
    const/4 v0, 0x0

    return v0
.end method
