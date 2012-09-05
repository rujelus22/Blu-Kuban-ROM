.class public Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RilSupportBroadcastReceiver.java"


# static fields
.field private static FactoryResetWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static final SIO_MODE_STR:[Ljava/lang/String;

.field static isFirst:Z

.field static isNotFirst:Z

.field private static isSdcardMounted:I

.field private static mCameraStarted:Z

.field private static final mHandler:Landroid/os/Handler;

.field private static mIsSend2ndACK:Z

.field private static pm:Landroid/os/PowerManager;

.field private static status:Ljava/lang/String;


# instance fields
.field private final ADC_VALUE:Ljava/lang/String;

.field private final BT_WRITE:I

.field private final CAMERA_BIT:B

.field private final CAMERA_STATUS_FAILURE:I

.field private final CAMERA_STATUS_SUCESS:I

.field private final DAC_VALUE:Ljava/lang/String;

.field private DIAG_TEST_MODE:Ljava/lang/String;

.field private final IPC_FACTORY_AUTO_CDMA_ACTION_START:I

.field private final IPC_FACTORY_AUTO_CDMA_ACTION_STOP:I

.field private final IPC_FACTORY_AUTO_CDMA_COMMAND_LENGTH:I

.field private final IPC_FACTORY_AUTO_CDMA_COMMAND_LENGTH_LOOPBACK:I

.field private final IPC_FACTORY_AUTO_CDMA_MODE_AUDIO_LOOPBACK_EARPHONE:I

.field private final IPC_FACTORY_AUTO_CDMA_MODE_AUDIO_LOOPBACK_LOUDSPEAKER:I

.field private final IPC_FACTORY_AUTO_CDMA_MODE_AUDIO_LOOPBACK_RECEIVER:I

.field private final LOOPBACK_START:Ljava/lang/String;

.field private final LOOPBACK_STOP:Ljava/lang/String;

.field private final MAGNETIC_SENSOR_RESULT:Ljava/lang/String;

.field private final MS_ADC:B

.field private final MS_DAC:B

.field private final MS_RESULT:B

.field private final MS_SELF_TEST:B

.field private final MS_TEMP:B

.field private final OEM_CFG_SET_AUDIO_LOOPBACK_TEST:I

.field private final OEM_FACTORY_GET_PROCESS_TEST:I

.field private final OEM_FACTORY_SET_PROCESS_TEST:I

.field private final OEM_FUNCTION_ID_CONFIGURATION:I

.field private final OEM_FUNCTION_ID_FACTORY:I

.field private final SELF_VALUE:Ljava/lang/String;

.field private final SHIPMENT_TEST:B

.field private final STATUS_START:I

.field private final STATUS_STOP:I

.field private TAG:Ljava/lang/String;

.field private final TEMPERATURE:Ljava/lang/String;

.field private final WLAN_WRITE:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field protected mInactivityHandler:Landroid/os/Handler;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mode_ID:B

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "U1_DM   USB2_NULL"

    aput-object v1, v0, v3

    const-string v1, "Unknown"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "U1_HFK   USB2_DM"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->SIO_MODE_STR:[Ljava/lang/String;

    .line 172
    const-string v0, "init"

    sput-object v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->status:Ljava/lang/String;

    .line 174
    sput-boolean v3, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mCameraStarted:Z

    .line 196
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mHandler:Landroid/os/Handler;

    .line 200
    sput-boolean v3, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isFirst:Z

    .line 201
    sput-boolean v4, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isNotFirst:Z

    .line 202
    sput-boolean v3, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mIsSend2ndACK:Z

    .line 203
    sput-object v5, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->pm:Landroid/os/PowerManager;

    .line 204
    sput v3, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isSdcardMounted:I

    .line 205
    sput-object v5, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->FactoryResetWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 73
    const-string v0, "RilSupportBroadcastReceiver"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 118
    const-string v0, "com.android.samsungtest.DIAG_TEST_MODE"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->DIAG_TEST_MODE:Ljava/lang/String;

    .line 136
    iput v3, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->BT_WRITE:I

    .line 137
    iput v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->WLAN_WRITE:I

    .line 140
    iput v4, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->OEM_FACTORY_SET_PROCESS_TEST:I

    .line 141
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->OEM_FACTORY_GET_PROCESS_TEST:I

    .line 142
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->OEM_FUNCTION_ID_FACTORY:I

    .line 143
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->IPC_FACTORY_AUTO_CDMA_COMMAND_LENGTH:I

    .line 144
    iput v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->CAMERA_STATUS_SUCESS:I

    .line 145
    iput v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->CAMERA_STATUS_FAILURE:I

    .line 147
    iput-byte v3, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->SHIPMENT_TEST:B

    .line 148
    iput-byte v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->MS_RESULT:B

    .line 149
    iput-byte v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->MS_TEMP:B

    .line 150
    iput-byte v3, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->MS_DAC:B

    .line 151
    iput-byte v5, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->MS_ADC:B

    .line 152
    iput-byte v4, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->MS_SELF_TEST:B

    .line 153
    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->CAMERA_BIT:B

    .line 155
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->LOOPBACK_START:Ljava/lang/String;

    .line 156
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->LOOPBACK_STOP:Ljava/lang/String;

    .line 157
    const-string v0, "result"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->MAGNETIC_SENSOR_RESULT:Ljava/lang/String;

    .line 158
    const-string v0, "temp"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TEMPERATURE:Ljava/lang/String;

    .line 159
    const-string v0, "adc_value"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->ADC_VALUE:Ljava/lang/String;

    .line 160
    const-string v0, "dac_value"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->DAC_VALUE:Ljava/lang/String;

    .line 161
    const-string v0, "self_test"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->SELF_VALUE:Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mMountService:Landroid/os/storage/IMountService;

    .line 177
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->OEM_FUNCTION_ID_CONFIGURATION:I

    .line 178
    iput v4, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->OEM_CFG_SET_AUDIO_LOOPBACK_TEST:I

    .line 179
    iput v4, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->IPC_FACTORY_AUTO_CDMA_MODE_AUDIO_LOOPBACK_RECEIVER:I

    .line 180
    iput v3, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->IPC_FACTORY_AUTO_CDMA_MODE_AUDIO_LOOPBACK_LOUDSPEAKER:I

    .line 181
    iput v5, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->IPC_FACTORY_AUTO_CDMA_MODE_AUDIO_LOOPBACK_EARPHONE:I

    .line 182
    iput v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->IPC_FACTORY_AUTO_CDMA_ACTION_STOP:I

    .line 183
    iput v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->IPC_FACTORY_AUTO_CDMA_ACTION_START:I

    .line 184
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->IPC_FACTORY_AUTO_CDMA_COMMAND_LENGTH_LOOPBACK:I

    .line 187
    iput v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->STATUS_START:I

    .line 188
    iput v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->STATUS_STOP:I

    .line 209
    new-instance v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$1;-><init>(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mInactivityHandler:Landroid/os/Handler;

    return-void
.end method

.method private CameraStop()V
    .registers 3

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "CameraStop.Status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.CameraStop.Status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1624
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1625
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mCameraStarted:Z

    .line 1626
    return-void
.end method

.method private DFT_checkExtMemoryStatus()V
    .registers 5

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "checkExtMemoryStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1763
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current status of ext storage is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1768
    :cond_33
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "MEDIA_MOUNTED or MEDIA_MOUNTED_READ_ONLY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const/4 v0, 0x2

    .line 1780
    :goto_3b
    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_DFT_ExtMemStatus(B)V

    .line 1781
    return-void

    .line 1771
    :cond_3f
    const-string v1, "nofs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1773
    :cond_4f
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "MEDIA_NOFS or MEDIA_CHECKING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    const/4 v0, 0x1

    goto :goto_3b

    .line 1777
    :cond_58
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method static synthetic access$000(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRilFactoryResetResult()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRilSelectiveResetResult()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)B
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-byte v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mode_ID:B

    return v0
.end method

.method static synthetic access$302(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;B)B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-byte p1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mode_ID:B

    return p1
.end method

.method static synthetic access$400(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->FactoryResetWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$502(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    sput-object p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->FactoryResetWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method private checkExtMemoryStatus()V
    .registers 5

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "checkExtMemoryStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1058
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current status of ext storage is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1062
    :cond_33
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "MEDIA_MOUNTED or MEDIA_MOUNTED_READ_ONLY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const/4 v0, 0x1

    .line 1067
    :goto_3b
    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_ExtMemStatus(B)V

    .line 1068
    return-void

    .line 1065
    :cond_3f
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method private flashWithCamera()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1680
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "FlashOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1682
    const-string v1, "com.android.samsungtest.FactoryTest"

    const-string v2, "com.android.samsungtest.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1683
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1684
    const-string v1, "flash_enable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1686
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1688
    sget-boolean v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mCameraStarted:Z

    if-nez v0, :cond_33

    .line 1690
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Status set true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    sput-boolean v3, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mCameraStarted:Z

    .line 1699
    :goto_32
    return-void

    .line 1695
    :cond_33
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Status check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.CameraStart.Status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1697
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_32
.end method

.method private formatSize(J)Ljava/lang/String;
    .registers 4
    .parameter "size"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private frontCameraPreview()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1633
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Front"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1635
    const-string v1, "com.android.samsungtest.FactoryTest"

    const-string v2, "com.android.samsungtest.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1636
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1637
    const-string v1, "camera_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1638
    const-string v1, "ommision_test"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1639
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1640
    sget-boolean v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mCameraStarted:Z

    if-nez v0, :cond_38

    .line 1642
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Status set true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    sput-boolean v3, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mCameraStarted:Z

    .line 1652
    :goto_37
    return-void

    .line 1647
    :cond_38
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Status check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.CameraStart.Status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1649
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_37
.end method

.method private getDataFromRilFactory()V
    .registers 5

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "getDataFromRilFactory!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 1869
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1870
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1872
    const/4 v2, 0x1

    .line 1880
    const/16 v3, 0x12

    :try_start_1a
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1881
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1882
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1883
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_47

    .line 1889
    :goto_28
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "getdatafromrilfactory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mInactivityHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1892
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "invokeOemRilRequestRaw!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    return-void

    .line 1885
    :catch_47
    move-exception v1

    .line 1887
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException while writing to stream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .registers 3

    .prologue
    .line 1896
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mMountService:Landroid/os/storage/IMountService;

    if-nez v0, :cond_13

    .line 1897
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1898
    if-eqz v0, :cond_17

    .line 1899
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mMountService:Landroid/os/storage/IMountService;

    .line 1905
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mMountService:Landroid/os/storage/IMountService;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1f

    monitor-exit p0

    return-object v0

    .line 1902
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t get mount service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1f

    goto :goto_13

    .line 1896
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private mount(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 1912
    if-eqz v0, :cond_22

    .line 1913
    :try_start_1e
    invoke-interface {v0, p1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 1921
    :goto_21
    return-void

    .line 1916
    :cond_22
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Mount service is null, can\'t mount"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_29} :catch_2a

    goto :goto_21

    .line 1918
    :catch_2a
    move-exception v0

    goto :goto_21
.end method

.method private rearCameraPreview()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1656
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Rear"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1658
    const-string v1, "com.android.samsungtest.FactoryTest"

    const-string v2, "com.android.samsungtest.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1659
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1660
    const-string v1, "camera_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1661
    const-string v1, "ommision_test"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1662
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1664
    sget-boolean v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mCameraStarted:Z

    if-nez v0, :cond_39

    .line 1666
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Status set true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    sput-boolean v3, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mCameraStarted:Z

    .line 1676
    :goto_38
    return-void

    .line 1671
    :cond_39
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Status check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.CameraStart.Status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1673
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_38
.end method

.method private sendFactoryProcessTestGetResult(BB)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1031
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1032
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1035
    const-string v2, "RilSupportBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting factory test result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-string v2, "RilSupportBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " read_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const-string v2, "RilSupportBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/16 v2, 0x12

    :try_start_54
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1041
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1042
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1043
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1044
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1046
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_6f} :catch_70

    .line 1051
    :goto_6f
    return-void

    .line 1048
    :catch_70
    move-exception v0

    .line 1049
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "IOException in getServMQueryData!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f
.end method

.method private sendFactoryProcessTestResult(BLjava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1010
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1011
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1014
    const-string v2, "RilSupportBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending factory test result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const/16 v2, 0x12

    :try_start_2e
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1018
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1019
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1020
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1021
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1023
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_49} :catch_4a

    .line 1028
    :goto_49
    return-void

    .line 1025
    :catch_4a
    move-exception v0

    .line 1026
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "IOException in getServMQueryData!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private sendToRilAddr(ILjava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 990
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 991
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 992
    const/16 v2, 0x12

    .line 995
    const/16 v3, 0xc

    :try_start_e
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 996
    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 997
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 998
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 999
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_52

    .line 1004
    :goto_1f
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 1005
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1006
    const-string v0, "MAC_ID_WRITE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WRITE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-void

    .line 1000
    :catch_52
    move-exception v0

    .line 1001
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f
.end method

.method private sendToRilFactoryResetResult()V
    .registers 5

    .prologue
    .line 1810
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 1812
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sendToRilFactoryResetResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1815
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1816
    const/4 v2, 0x5

    .line 1819
    const/16 v3, 0x11

    :try_start_1a
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1820
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1821
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1822
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_33

    .line 1828
    :goto_28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1829
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1830
    return-void

    .line 1823
    :catch_33
    move-exception v1

    .line 1825
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException while writing to stream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private sendToRilFactoryTestHistoryView()V
    .registers 8

    .prologue
    .line 1126
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1127
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1128
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x7

    .line 1131
    .local v3, fileSize:I
    const/16 v4, 0x12

    :try_start_d
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1132
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1133
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1134
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1135
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1136
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_23} :catch_34

    .line 1141
    :goto_23
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 1142
    iget-object v4, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1144
    return-void

    .line 1137
    :catch_34
    move-exception v2

    .line 1138
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23
.end method

.method private sendToRilFactoryTestStatus(CC)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1102
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1103
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1104
    const/16 v2, 0x9

    .line 1107
    const/16 v3, 0x12

    :try_start_e
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1108
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1109
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1110
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1111
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1112
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1113
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1114
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2a} :catch_65

    .line 1119
    :goto_2a
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 1120
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1122
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendToRil: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bosSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    return-void

    .line 1115
    :catch_65
    move-exception v0

    .line 1116
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a
.end method

.method private sendToRilSelectiveResetResult()V
    .registers 5

    .prologue
    .line 1835
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 1837
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sendToRilSelectiveResetResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1840
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1841
    const/4 v2, 0x5

    .line 1844
    const/16 v3, 0x12

    :try_start_1a
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1845
    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1846
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1847
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_29} :catch_34

    .line 1853
    :goto_29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1854
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1855
    return-void

    .line 1848
    :catch_34
    move-exception v1

    .line 1850
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException while writing to stream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method private sendToRil_DFT_ExtMemStatus(B)V
    .registers 6
    .parameter

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sendToRil_ExtMemStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1786
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1787
    const/4 v2, 0x5

    .line 1790
    const/16 v3, 0x12

    :try_start_14
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1791
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1792
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1793
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1795
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3a} :catch_52

    .line 1800
    :goto_3a
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 1801
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1802
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Send to RIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    return-void

    .line 1796
    :catch_52
    move-exception v1

    .line 1798
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException while writing to stream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method private sendToRil_ExtMemStatus(B)V
    .registers 6
    .parameter

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sendToRil_ExtMemStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1073
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1074
    const/4 v2, 0x5

    .line 1077
    const/16 v3, 0x12

    :try_start_14
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1078
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1079
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1080
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1082
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_39} :catch_51

    .line 1087
    :goto_39
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 1088
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1089
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Send to RIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    return-void

    .line 1083
    :catch_51
    move-exception v1

    .line 1085
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException while writing to stream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method private sendToRil_MemoryFormatCheckResult(B)V
    .registers 6
    .parameter

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sendToRil_MemoryFormatCheckResult"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2057
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2058
    const/4 v2, 0x6

    .line 2061
    const/16 v3, 0x12

    :try_start_14
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2062
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2063
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2064
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2065
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2067
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3e} :catch_56

    .line 2072
    :goto_3e
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 2073
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2074
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Send to RIL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    return-void

    .line 2068
    :catch_56
    move-exception v1

    .line 2070
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException while writing to stream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method private sendToRil_MemoryFormatResult(B)V
    .registers 6
    .parameter

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sendToRil_MemoryFormatResult"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1991
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1996
    const/16 v2, 0x12

    :try_start_13
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1997
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1998
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1999
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2000
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2002
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_3e} :catch_56

    .line 2007
    :goto_3e
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 2008
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2009
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Send to RIL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    return-void

    .line 2003
    :catch_56
    move-exception v1

    .line 2005
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException while writing to stream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method private sendToRil_MemorySizeCheckResult(B)V
    .registers 6
    .parameter

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sendToRil_MemoryFormatResult"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2188
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2189
    const/4 v2, 0x6

    .line 2192
    const/16 v3, 0x12

    :try_start_14
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2193
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2194
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2195
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2196
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2198
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3e} :catch_56

    .line 2203
    :goto_3e
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 2204
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2205
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Send to RIL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    return-void

    .line 2199
    :catch_56
    move-exception v1

    .line 2201
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException while writing to stream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method private sendToRil_SpeakerTestResult(B)V
    .registers 6
    .parameter

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sendToRil_SpeakerTestResult"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2211
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2212
    const/4 v2, 0x5

    .line 2216
    const/16 v3, 0x11

    :try_start_14
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2217
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2218
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2219
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2221
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Status is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3a} :catch_52

    .line 2226
    :goto_3a
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 2227
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2228
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Send to RIL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    return-void

    .line 2222
    :catch_52
    move-exception v1

    .line 2224
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException while writing to stream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method private sendToRil_TempSensor_ADCValues()V
    .registers 16

    .prologue
    const/4 v4, 0x3

    const/16 v7, 0x10

    const/16 v2, 0x30

    const/4 v6, 0x0

    const/16 v1, 0x20

    .line 1292
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "sendToRil_TempSensor_ADCValues"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1296
    new-array v10, v4, [I

    .line 1326
    const/4 v5, 0x1

    .line 1327
    aget v0, v10, v6

    div-int/lit8 v0, v0, 0x64

    if-lez v0, :cond_d1

    .line 1328
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "[[[[[[[[[1]]]]]]]]"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    aget v0, v10, v6

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    add-int/lit8 v0, v0, 0x30

    int-to-byte v4, v0

    .line 1330
    aget v0, v10, v6

    rem-int/lit8 v0, v0, 0x64

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    add-int/lit8 v0, v0, 0x30

    int-to-byte v3, v0

    .line 1331
    aget v0, v10, v6

    rem-int/lit8 v0, v0, 0x64

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    move v6, v0

    move v7, v3

    move v8, v4

    move v9, v5

    move v0, v1

    move v3, v1

    move v4, v1

    move v5, v2

    .line 1381
    :goto_64
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1382
    new-instance v12, Ljava/io/DataOutputStream;

    invoke-direct {v12, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1383
    const/16 v13, 0xf

    .line 1386
    const/16 v14, 0x12

    :try_start_72
    invoke-virtual {v12, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1387
    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1388
    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1389
    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1390
    invoke-virtual {v12, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1391
    invoke-virtual {v12, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1392
    invoke-virtual {v12, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1393
    invoke-virtual {v12, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1394
    invoke-virtual {v12, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1395
    invoke-virtual {v12, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1396
    invoke-virtual {v12, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1397
    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1398
    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1399
    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1401
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Shipment test type is : 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const-string v0, "RilSupportBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASC x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v10, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_c0} :catch_13b

    .line 1409
    :goto_c0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 1410
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1411
    return-void

    .line 1340
    :cond_d1
    aget v0, v10, v6

    div-int/lit8 v0, v0, 0xa

    if-lez v0, :cond_106

    .line 1341
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "[[[[[[[[[3]]]]]]]]"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    aget v0, v10, v6

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    add-int/lit8 v0, v0, 0x30

    int-to-byte v3, v0

    .line 1343
    aget v0, v10, v6

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    move v4, v1

    move v6, v1

    move v7, v0

    move v8, v3

    move v9, v5

    move v0, v1

    move v5, v2

    move v3, v1

    .line 1351
    goto/16 :goto_64

    .line 1353
    :cond_106
    aget v0, v10, v6

    div-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_12a

    .line 1354
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "[[[[[[[[[5]]]]]]]]"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    aget v0, v10, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    move v3, v1

    move v4, v1

    move v6, v1

    move v7, v1

    move v8, v0

    move v9, v5

    move v0, v1

    move v5, v2

    .line 1364
    goto/16 :goto_64

    .line 1367
    :cond_12a
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "[[[[[[[[[6]]]]]]]]"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move v3, v1

    move v4, v1

    move v6, v1

    move v7, v1

    move v8, v2

    move v9, v5

    move v5, v2

    .line 1377
    goto/16 :goto_64

    .line 1405
    :catch_13b
    move-exception v0

    .line 1407
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "IOException while writing to stream"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c0
.end method

.method private sendToRil_TempSensor_DACValues()V
    .registers 20

    .prologue
    .line 1414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "sendToRil_TempSensor_DACValues"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 1418
    const/4 v1, 0x3

    new-array v11, v1, [I

    .line 1422
    const/4 v3, 0x0

    .line 1423
    const/4 v2, 0x0

    .line 1424
    const/4 v1, 0x0

    .line 1425
    const/4 v6, 0x0

    .line 1426
    const/4 v5, 0x0

    .line 1427
    const/4 v4, 0x0

    .line 1428
    const/4 v1, 0x0

    .line 1429
    const/4 v1, 0x0

    .line 1430
    const/4 v1, 0x0

    .line 1439
    const/4 v10, 0x1

    .line 1440
    const/4 v1, 0x0

    aget v1, v11, v1

    div-int/lit8 v1, v1, 0x64

    if-lez v1, :cond_1bc

    .line 1441
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "[[[[[[[[[1]]]]]]]]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    const/4 v1, 0x0

    aget v1, v11, v1

    div-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v1

    add-int/lit8 v1, v1, 0x30

    int-to-byte v3, v1

    .line 1443
    const/4 v1, 0x0

    aget v1, v11, v1

    rem-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v1

    add-int/lit8 v1, v1, 0x30

    int-to-byte v2, v1

    .line 1444
    const/4 v1, 0x0

    aget v1, v11, v1

    rem-int/lit8 v1, v1, 0x64

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v1

    add-int/lit8 v1, v1, 0x30

    int-to-byte v1, v1

    .line 1465
    :goto_70
    const/4 v4, 0x1

    aget v4, v11, v4

    div-int/lit8 v4, v4, 0x64

    if-lez v4, :cond_22b

    .line 1466
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v5, "[[[[[[[[[7]]]]]]]]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    const/4 v4, 0x1

    aget v4, v11, v4

    div-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-byte v6, v4

    .line 1468
    const/4 v4, 0x1

    aget v4, v11, v4

    rem-int/lit8 v4, v4, 0x64

    div-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-byte v5, v4

    .line 1469
    const/4 v4, 0x1

    aget v4, v11, v4

    rem-int/lit8 v4, v4, 0x64

    rem-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x10

    invoke-static {v4, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-byte v4, v4

    .line 1490
    :goto_ba
    const/4 v7, 0x2

    aget v7, v11, v7

    div-int/lit8 v7, v7, 0x64

    if-lez v7, :cond_29a

    .line 1491
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v8, "[[[[[[[[[13]]]]]]]]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const/4 v7, 0x2

    aget v7, v11, v7

    div-int/lit8 v7, v7, 0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v7

    add-int/lit8 v7, v7, 0x30

    int-to-byte v9, v7

    .line 1493
    const/4 v7, 0x2

    aget v7, v11, v7

    rem-int/lit8 v7, v7, 0x64

    div-int/lit8 v7, v7, 0xa

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v7

    add-int/lit8 v7, v7, 0x30

    int-to-byte v8, v7

    .line 1494
    const/4 v7, 0x2

    aget v7, v11, v7

    rem-int/lit8 v7, v7, 0x64

    rem-int/lit8 v7, v7, 0xa

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x10

    invoke-static {v7, v12}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v7

    add-int/lit8 v7, v7, 0x30

    int-to-byte v7, v7

    move/from16 v16, v7

    move v7, v1

    move/from16 v1, v16

    move/from16 v17, v9

    move v9, v3

    move/from16 v3, v17

    move/from16 v18, v2

    move v2, v8

    move/from16 v8, v18

    .line 1516
    :goto_113
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1517
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1518
    const/16 v14, 0xf

    .line 1521
    const/16 v15, 0x12

    :try_start_121
    invoke-virtual {v13, v15}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1522
    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1523
    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1524
    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1525
    invoke-virtual {v13, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1526
    invoke-virtual {v13, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1527
    invoke-virtual {v13, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1528
    invoke-virtual {v13, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1529
    invoke-virtual {v13, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1530
    invoke-virtual {v13, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1531
    invoke-virtual {v13, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1532
    invoke-virtual {v13, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1533
    invoke-virtual {v13, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1534
    invoke-virtual {v13, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Shipment test type is : 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const-string v1, "RilSupportBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DAC x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v11, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    const-string v1, "RilSupportBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DAC y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v11, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    const-string v1, "RilSupportBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DAC z="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v11, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_1a7} :catch_336

    .line 1544
    :goto_1a7
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 1545
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1546
    return-void

    .line 1446
    :cond_1bc
    const/4 v1, 0x0

    aget v1, v11, v1

    div-int/lit8 v1, v1, 0xa

    if-lez v1, :cond_1f4

    .line 1447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "[[[[[[[[[3]]]]]]]]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const/4 v1, 0x0

    aget v1, v11, v1

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v1

    add-int/lit8 v1, v1, 0x30

    int-to-byte v3, v1

    .line 1449
    const/4 v1, 0x0

    aget v1, v11, v1

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v1

    add-int/lit8 v1, v1, 0x30

    int-to-byte v2, v1

    .line 1450
    const/16 v1, 0x20

    goto/16 :goto_70

    .line 1452
    :cond_1f4
    const/4 v1, 0x0

    aget v1, v11, v1

    div-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_21a

    .line 1453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "[[[[[[[[[5]]]]]]]]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const/4 v1, 0x0

    aget v1, v11, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v1

    add-int/lit8 v1, v1, 0x30

    int-to-byte v3, v1

    .line 1455
    const/16 v2, 0x20

    .line 1456
    const/16 v1, 0x20

    goto/16 :goto_70

    .line 1459
    :cond_21a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "[[[[[[[[[6]]]]]]]]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const/16 v3, 0x30

    .line 1461
    const/16 v2, 0x20

    .line 1462
    const/16 v1, 0x20

    goto/16 :goto_70

    .line 1471
    :cond_22b
    const/4 v4, 0x1

    aget v4, v11, v4

    div-int/lit8 v4, v4, 0xa

    if-lez v4, :cond_263

    .line 1472
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v5, "[[[[[[[[[9]]]]]]]]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const/4 v4, 0x1

    aget v4, v11, v4

    div-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-byte v6, v4

    .line 1474
    const/4 v4, 0x1

    aget v4, v11, v4

    rem-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-byte v5, v4

    .line 1475
    const/16 v4, 0x20

    goto/16 :goto_ba

    .line 1477
    :cond_263
    const/4 v4, 0x1

    aget v4, v11, v4

    div-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_289

    .line 1478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v5, "[[[[[[[[[11]]]]]]]]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    const/4 v4, 0x1

    aget v4, v11, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-byte v6, v4

    .line 1480
    const/16 v5, 0x20

    .line 1481
    const/16 v4, 0x20

    goto/16 :goto_ba

    .line 1484
    :cond_289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v5, "[[[[[[[[[12]]]]]]]]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const/16 v6, 0x30

    .line 1486
    const/16 v5, 0x20

    .line 1487
    const/16 v4, 0x20

    goto/16 :goto_ba

    .line 1496
    :cond_29a
    const/4 v7, 0x2

    aget v7, v11, v7

    div-int/lit8 v7, v7, 0xa

    if-lez v7, :cond_2e1

    .line 1497
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v8, "[[[[[[[[[15]]]]]]]]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/4 v7, 0x2

    aget v7, v11, v7

    div-int/lit8 v7, v7, 0xa

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v7

    add-int/lit8 v7, v7, 0x30

    int-to-byte v9, v7

    .line 1499
    const/4 v7, 0x2

    aget v7, v11, v7

    rem-int/lit8 v7, v7, 0xa

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v7

    add-int/lit8 v7, v7, 0x30

    int-to-byte v8, v7

    .line 1500
    const/16 v7, 0x20

    move/from16 v16, v7

    move v7, v1

    move/from16 v1, v16

    move/from16 v17, v9

    move v9, v3

    move/from16 v3, v17

    move/from16 v18, v2

    move v2, v8

    move/from16 v8, v18

    goto/16 :goto_113

    .line 1502
    :cond_2e1
    const/4 v7, 0x2

    aget v7, v11, v7

    div-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_316

    .line 1503
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v8, "[[[[[[[[[17]]]]]]]]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const/4 v7, 0x2

    aget v7, v11, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v7

    add-int/lit8 v7, v7, 0x30

    int-to-byte v9, v7

    .line 1505
    const/16 v8, 0x20

    .line 1506
    const/16 v7, 0x20

    move/from16 v16, v7

    move v7, v1

    move/from16 v1, v16

    move/from16 v17, v9

    move v9, v3

    move/from16 v3, v17

    move/from16 v18, v2

    move v2, v8

    move/from16 v8, v18

    goto/16 :goto_113

    .line 1509
    :cond_316
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v8, "[[[[[[[[[18]]]]]]]]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    const/16 v9, 0x30

    .line 1511
    const/16 v8, 0x20

    .line 1512
    const/16 v7, 0x20

    move/from16 v16, v7

    move v7, v1

    move/from16 v1, v16

    move/from16 v17, v9

    move v9, v3

    move/from16 v3, v17

    move/from16 v18, v2

    move v2, v8

    move/from16 v8, v18

    goto/16 :goto_113

    .line 1540
    :catch_336
    move-exception v1

    .line 1542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException while writing to stream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a7
.end method

.method private sendToRil_TempSensor_SelfTest()V
    .registers 6

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sendToRil_TempSensor_SelfTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1553
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1564
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sendToRil_TempSensor_SelfTest[SUCCESS]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 v0, 0x1

    .line 1579
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1580
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1581
    const/4 v3, 0x6

    .line 1584
    const/16 v4, 0x12

    :try_start_2b
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1585
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1586
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1587
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1588
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1590
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Shipment test type is : 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SelfTest = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_5b} :catch_6c

    .line 1596
    :goto_5b
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 1597
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1598
    return-void

    .line 1592
    :catch_6c
    move-exception v0

    .line 1594
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException while writing to stream"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method private sendToRil_TempSensor_State()V
    .registers 6

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sendToRil_TempSensor_SensorState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1151
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1162
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sendToRil_TempSensor_State[SUCCESS]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const/4 v0, 0x1

    .line 1166
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1167
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1168
    const/4 v3, 0x6

    .line 1171
    const/16 v4, 0x12

    :try_start_2b
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1172
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1173
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1174
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1175
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1177
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Shipment test type is : 0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_5b} :catch_6c

    .line 1183
    :goto_5b
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 1184
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1185
    return-void

    .line 1179
    :catch_6c
    move-exception v0

    .line 1181
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException while writing to stream"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method private sendToRil_TempSensor_TemperatureData()V
    .registers 13

    .prologue
    const/16 v4, 0x2d

    const/16 v3, 0x20

    const/4 v2, 0x0

    const/16 v7, 0x10

    const/4 v1, 0x1

    .line 1188
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v5, "sendToRil_TempSensor_TemperatureData"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1192
    const/4 v0, 0x3

    new-array v5, v0, [I

    .line 1210
    aget v0, v5, v2

    if-ne v0, v1, :cond_138

    move v0, v1

    .line 1217
    :goto_23
    aget v6, v5, v1

    if-ltz v6, :cond_1fc

    .line 1218
    aget v2, v5, v1

    div-int/lit8 v2, v2, 0x64

    if-lez v2, :cond_13b

    .line 1219
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "[[[[[[[[[1]]]]]]]]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(String)data[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v5, v1

    div-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(String)data[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v5, v1

    rem-int/lit8 v4, v4, 0x64

    div-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(String)data[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v5, v1

    rem-int/lit8 v4, v4, 0x64

    rem-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    aget v2, v5, v1

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v2

    add-int/lit8 v2, v2, 0x30

    int-to-byte v4, v2

    .line 1225
    aget v2, v5, v1

    rem-int/lit8 v2, v2, 0x64

    div-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v2

    add-int/lit8 v2, v2, 0x30

    int-to-byte v3, v2

    .line 1226
    aget v2, v5, v1

    rem-int/lit8 v2, v2, 0x64

    rem-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v2

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    move v10, v4

    move v4, v1

    move v1, v0

    move v0, v10

    .line 1266
    :goto_cd
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1267
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1268
    const/16 v8, 0xa

    .line 1271
    const/16 v9, 0x12

    :try_start_db
    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1272
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1273
    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1274
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1275
    invoke-virtual {v7, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1276
    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1277
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1278
    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1279
    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1281
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Shipment test type is : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "int_st is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v5, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  tmps is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, v5, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_127} :catch_249

    .line 1287
    :goto_127
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 1288
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1289
    return-void

    :cond_138
    move v0, v2

    .line 1214
    goto/16 :goto_23

    .line 1228
    :cond_13b
    aget v2, v5, v1

    div-int/lit8 v2, v2, 0xa

    if-lez v2, :cond_1af

    .line 1229
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, "[[[[[[[[[3]]]]]]]]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(String)data[1]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v5, v1

    div-int/lit8 v6, v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(String)data[1]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v5, v1

    rem-int/lit8 v6, v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    aget v2, v5, v1

    div-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v2

    add-int/lit8 v2, v2, 0x30

    int-to-byte v4, v2

    .line 1233
    aget v2, v5, v1

    rem-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v2

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    move v10, v3

    move v3, v2

    move v2, v10

    move v11, v4

    move v4, v1

    move v1, v0

    move v0, v11

    .line 1234
    goto/16 :goto_cd

    .line 1236
    :cond_1af
    aget v2, v5, v1

    div-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1ed

    .line 1237
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, "[[[[[[[[[5]]]]]]]]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(String)data[1]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v5, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    aget v2, v5, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v2

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    move v4, v1

    move v1, v0

    move v0, v2

    move v2, v3

    .line 1241
    goto/16 :goto_cd

    .line 1244
    :cond_1ed
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, "[[[[[[[[[6]]]]]]]]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const/16 v2, 0x30

    move v4, v1

    move v1, v0

    move v0, v2

    move v2, v3

    .line 1247
    goto/16 :goto_cd

    .line 1251
    :cond_1fc
    aget v6, v5, v1

    neg-int v6, v6

    div-int/lit8 v6, v6, 0xa

    if-lez v6, :cond_228

    .line 1252
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "[[[[[[[[[7]]]]]]]]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    aget v2, v5, v1

    div-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v3

    .line 1255
    aget v2, v5, v1

    rem-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v2

    move v10, v4

    move v4, v1

    move v1, v0

    move v0, v10

    goto/16 :goto_cd

    .line 1257
    :cond_228
    aget v6, v5, v1

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_253

    .line 1258
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v6, "[[[[[[[[[8]]]]]]]]"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    aget v2, v5, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v2

    move v10, v3

    move v3, v2

    move v2, v10

    move v11, v4

    move v4, v1

    move v1, v0

    move v0, v11

    .line 1261
    goto/16 :goto_cd

    .line 1283
    :catch_249
    move-exception v0

    .line 1285
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "IOException while writing to stream"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_127

    :cond_253
    move v3, v2

    move v4, v1

    move v1, v0

    move v0, v2

    goto/16 :goto_cd
.end method

.method private setEndModeData(I)[B
    .registers 7
    .parameter

    .prologue
    .line 971
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 972
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 976
    :try_start_a
    const-string v2, "Soni "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RilBroadcastreceiver setEndModeData"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 978
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 979
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 980
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_33} :catch_38

    .line 986
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_37
    return-object v0

    .line 982
    :catch_38
    move-exception v0

    .line 984
    const/4 v0, 0x0

    goto :goto_37
.end method

.method private startMemoryFormatCheck()V
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2014
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "startMemoryFormatCheck()"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    sget-object v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->status:Ljava/lang/String;

    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->status:Ljava/lang/String;

    const-string v3, "mounted_ro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 2016
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "MEDIA_MOUNTED or MEDIA_MOUNTED_READ_ONLY"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mount(Ljava/lang/String;)V

    .line 2018
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 2023
    :cond_34
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2024
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2025
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    .line 2026
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v6, v0

    .line 2027
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v8, v0

    .line 2031
    new-instance v0, Ljava/math/BigInteger;

    const-string v3, "7212300000"

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2033
    mul-long/2addr v6, v4

    .line 2034
    mul-long v3, v8, v4

    .line 2036
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 2037
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 2039
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 2040
    if-eqz v0, :cond_71

    const/4 v3, -0x1

    if-ne v0, v3, :cond_78

    :cond_71
    move v0, v2

    .line 2045
    :goto_72
    if-eqz v0, :cond_7a

    .line 2047
    invoke-direct {p0, v2}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_MemoryFormatCheckResult(B)V

    .line 2053
    :goto_77
    return-void

    :cond_78
    move v0, v1

    .line 2043
    goto :goto_72

    .line 2051
    :cond_7a
    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_MemoryFormatCheckResult(B)V

    goto :goto_77
.end method

.method private startMemorySizeCheck()V
    .registers 10

    .prologue
    const/high16 v8, 0x3f80

    const/4 v0, 0x0

    .line 2079
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "startMemorySizeCheck()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    sget-object v1, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->status:Ljava/lang/String;

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    sget-object v1, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->status:Ljava/lang/String;

    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 2081
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "MEDIA_MOUNTED or MEDIA_MOUNTED_READ_ONLY"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mount(Ljava/lang/String;)V

    .line 2083
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 2088
    :cond_35
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 2090
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2091
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v3, v1

    .line 2092
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v5, v1

    .line 2093
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    .line 2097
    mul-long/2addr v5, v3

    .line 2098
    mul-long/2addr v1, v3

    .line 2099
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "totalSpace="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    iget-object v3, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "availableSpace="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    invoke-direct {p0, v5, v6}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    .line 2102
    invoke-direct {p0, v1, v2}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    .line 2103
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "available="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    const-string v2, "GB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2109
    const/4 v3, -0x1

    if-eq v2, v3, :cond_fd

    .line 2111
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2113
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2115
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2119
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2121
    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "availablesize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    const/high16 v2, 0x4380

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_fe

    .line 2124
    const/16 v0, 0x9

    .line 2164
    :cond_fa
    :goto_fa
    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_MemorySizeCheckResult(B)V

    .line 2184
    :cond_fd
    :goto_fd
    return-void

    .line 2126
    :cond_fe
    const/high16 v2, 0x4300

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_107

    .line 2128
    const/16 v0, 0x8

    goto :goto_fa

    .line 2130
    :cond_107
    const/high16 v2, 0x4280

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_10f

    .line 2132
    const/4 v0, 0x7

    goto :goto_fa

    .line 2134
    :cond_10f
    const/high16 v2, 0x4200

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_117

    .line 2136
    const/4 v0, 0x6

    goto :goto_fa

    .line 2138
    :cond_117
    const/high16 v2, 0x4180

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_11f

    .line 2140
    const/4 v0, 0x5

    goto :goto_fa

    .line 2142
    :cond_11f
    const/high16 v2, 0x4100

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_127

    .line 2144
    const/4 v0, 0x4

    goto :goto_fa

    .line 2146
    :cond_127
    const/high16 v2, 0x4080

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_12f

    .line 2148
    const/4 v0, 0x3

    goto :goto_fa

    .line 2150
    :cond_12f
    const/high16 v2, 0x4000

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_137

    .line 2152
    const/4 v0, 0x2

    goto :goto_fa

    .line 2154
    :cond_137
    cmpl-float v2, v1, v8

    if-ltz v2, :cond_13d

    .line 2156
    const/4 v0, 0x1

    goto :goto_fa

    .line 2158
    :cond_13d
    cmpg-float v1, v1, v8

    if-gez v1, :cond_fa

    .line 2161
    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_MemorySizeCheckResult(B)V

    goto :goto_fd
.end method

.method private startOrientationSensor()V
    .registers 4

    .prologue
    .line 1095
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "startOrientationSensor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/samsungtest/rilsupport/SensorReadingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1097
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1098
    return-void
.end method


# virtual methods
.method protected Selective_startTimer()V
    .registers 5

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mInactivityHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 278
    return-void
.end method

.method public loopbackStart()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 936
    .line 938
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x8

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 940
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 943
    const-string v0, "Loopback"

    const-string v1, "SendData to Ril Reday"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->setEndModeData(I)[B

    move-result-object v0

    .line 946
    if-eqz v0, :cond_3e

    .line 947
    const-string v1, "Loopback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendData to Ril :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 950
    :cond_3e
    return-void
.end method

.method public loopbackStop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 954
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.4dmech.loopbackstop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 955
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 958
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 959
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 962
    const-string v0, "Loopback"

    const-string v1, "SendData to Ril Reday"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->setEndModeData(I)[B

    move-result-object v0

    .line 964
    if-eqz v0, :cond_48

    .line 965
    const-string v1, "Loopback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendData to Ril :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 968
    :cond_48
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x1000

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 284
    .line 285
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 286
    iput-object p1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 288
    const-string v0, "RilSupportBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive Intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SimpleFunctionTest.LoopbackTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 307
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 308
    const-string v0, "STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/sound_tty/loopback_mode"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_8f

    .line 318
    const-string v0, "Loopback"

    const-string v2, "loopbackStart"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 322
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 323
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 327
    :try_start_6e
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 328
    const-string v1, "1\n"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 329
    const-string v1, "Loopback"

    const-string v2, "Set loopback mode to 1 !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_82} :catch_86

    .line 335
    :goto_82
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->loopbackStart()V

    .line 933
    :cond_85
    :goto_85
    return-void

    .line 331
    :catch_86
    move-exception v0

    .line 332
    const-string v0, "Loopback"

    const-string v1, "Set loopback mode FAIL !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 336
    :cond_8f
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_85

    .line 337
    const-string v0, "Loopback"

    const-string v2, "loopbackStop"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :try_start_9e
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 341
    const-string v1, "0\n"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 342
    const-string v1, "Loopback"

    const-string v2, "Set loopback mode to 1 !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_b2} :catch_b6

    .line 348
    :goto_b2
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->loopbackStop()V

    goto :goto_85

    .line 344
    :catch_b6
    move-exception v0

    .line 345
    const-string v0, "Loopback"

    const-string v1, "Set loopback mode FAIL !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    .line 350
    :cond_bf
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 354
    const-string v2, "767*3855"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 357
    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/Factory_reset;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 358
    const-string v1, "RilSupportBroadcastReceiver"

    const-string v2, "factory reset"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 360
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_85

    .line 363
    :cond_f5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.BtIdWrite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 364
    const-string v0, "ADDR"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-direct {p0, v5, v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRilAddr(ILjava/lang/String;)V

    goto/16 :goto_85

    .line 367
    :cond_10c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.WlanIdWrite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_123

    .line 368
    const-string v0, "ADDR"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-direct {p0, v3, v0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRilAddr(ILjava/lang/String;)V

    goto/16 :goto_85

    .line 372
    :cond_123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SendResultToRil"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_180

    .line 373
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 374
    const-string v0, "FUNCTION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    const-string v1, "RESULT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    const-string v2, "RilSupportBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEND_RESULT_TO_RIL -- Func Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v2, "P"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_173

    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 380
    :cond_173
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendFactoryProcessTestResult(BLjava/lang/String;)V

    goto/16 :goto_85

    .line 383
    :cond_180
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SendGetResultToRil"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 384
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->phone:Lcom/android/internal/telephony/Phone;

    .line 385
    const-string v0, "READ_TYPE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    const-string v1, "INDEX"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    const-string v2, "RilSupportBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " read_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v2, "RilSupportBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v2, "ril.cdma.factory_receive"

    const-string v3, "FALSE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendFactoryProcessTestGetResult(BB)V

    goto/16 :goto_85

    .line 392
    :cond_1ea
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SendGetResultToRilRsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_327

    .line 394
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "SEND_GET_RESULT_TO_RIL_RSP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T19"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T19"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T20"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T21"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T21"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T22"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T22"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T23"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T23"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T24"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T24"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T25"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T25"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T26"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T26"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T27"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T27"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T29"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T29"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T32"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T32"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T33"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T33"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T34"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T34"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T35"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T35"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T38"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T38"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T17"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T17"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    const-string v1, "RilSupportBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " temp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v0, "ril.cdma.factory_receive"

    const-string v1, "TRUE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_85

    .line 421
    :cond_327
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.InFTA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35b

    .line 422
    const-string v0, "INDEX"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    const-string v1, "IN_FTA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    goto/16 :goto_85

    .line 431
    :cond_35b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.OrientationTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_373

    .line 432
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "Orientation Test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->startOrientationSensor()V

    goto/16 :goto_85

    .line 434
    :cond_373
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.ExternalMemoryTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38b

    .line 435
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "Memory status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->checkExtMemoryStatus()V

    goto/16 :goto_85

    .line 437
    :cond_38b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.MagneticTest_yamaha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_408

    .line 438
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "Magnetic Sensor Test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v0, "STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    const-string v1, "result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_3b8

    .line 442
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "STATUS is MAGNETIC_SENSOR_RESULT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_TempSensor_State()V

    goto/16 :goto_85

    .line 444
    :cond_3b8
    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_3cc

    .line 445
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "STATUS is TEMPERATURE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_TempSensor_TemperatureData()V

    goto/16 :goto_85

    .line 447
    :cond_3cc
    const-string v1, "adc_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_3e0

    .line 448
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "STATUS is ADC_VALUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_TempSensor_ADCValues()V

    goto/16 :goto_85

    .line 450
    :cond_3e0
    const-string v1, "dac_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_3f4

    .line 451
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "STATUS is DAC_VALUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_TempSensor_DACValues()V

    goto/16 :goto_85

    .line 453
    :cond_3f4
    const-string v1, "self_test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_85

    .line 454
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "STATUS is SELF_VALUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_TempSensor_SelfTest()V

    goto/16 :goto_85

    .line 458
    :cond_408
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.FactoryTestStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_425

    .line 460
    const-string v0, "ITEM_ID"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    .line 461
    const-string v1, "RESULT"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v1

    .line 462
    invoke-direct {p0, v0, v1}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRilFactoryTestStatus(CC)V

    goto/16 :goto_85

    .line 463
    :cond_425
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.RequestFactoryTestHistoryView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_436

    .line 464
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRilFactoryTestHistoryView()V

    goto/16 :goto_85

    .line 514
    :cond_436
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.CameraStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47a

    .line 516
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "CAMERA_START from RIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v0, "camera_id"

    sget v1, Lcom/android/samsungtest/camera/Camera;->NONE:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/android/samsungtest/camera/Camera;->FRONT:I

    if-ne v0, v1, :cond_461

    .line 521
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "CAMERA_START with Extra FRONT!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->frontCameraPreview()V

    goto/16 :goto_85

    .line 526
    :cond_461
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "CAMERA_START with Extra REAR!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v0, "flash_enable"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_475

    .line 528
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->flashWithCamera()V

    goto/16 :goto_85

    .line 530
    :cond_475
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->rearCameraPreview()V

    goto/16 :goto_85

    .line 581
    :cond_47a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.CameraFlash.On"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_492

    .line 583
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "CAMERA_FLASH_ON from RIL using Camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->flashWithCamera()V

    goto/16 :goto_85

    .line 588
    :cond_492
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.CameraFlash.Off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4aa

    .line 590
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "CAMERA_FLASH_OFF from RIL using Camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->CameraStop()V

    goto/16 :goto_85

    .line 596
    :cond_4aa
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.STAModeSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 601
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SIOModeSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d2

    .line 602
    const-string v0, "Mode"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_85

    goto/16 :goto_85

    .line 610
    :cond_4d2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.DFTExternalMemoryTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ea

    .line 611
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "DFT Memory status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->DFT_checkExtMemoryStatus()V

    goto/16 :goto_85

    .line 614
    :cond_4ea
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_519

    .line 616
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_MAX"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v6, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MAX_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 621
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_SpeakerTestResult(B)V

    goto/16 :goto_85

    .line 623
    :cond_519
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_542

    .line 625
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_MIN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MIN_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 631
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_SpeakerTestResult(B)V

    goto/16 :goto_85

    .line 634
    :cond_542
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_566

    .line 636
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_OFF_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 640
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_SpeakerTestResult(B)V

    goto/16 :goto_85

    .line 644
    :cond_566
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MAX_L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_595

    .line 646
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_MAX_L"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v5, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 648
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MAX_L_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 651
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_SpeakerTestResult(B)V

    goto/16 :goto_85

    .line 653
    :cond_595
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MIN_L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5be

    .line 655
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_MIN_L"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v5, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 657
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MIN_L_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 660
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_SpeakerTestResult(B)V

    goto/16 :goto_85

    .line 662
    :cond_5be
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MAX_R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ed

    .line 664
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_MAX_R"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v5, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 666
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MAX_R_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 669
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_SpeakerTestResult(B)V

    goto/16 :goto_85

    .line 671
    :cond_5ed
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MIN_R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_616

    .line 673
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_MIN_R"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v5, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 675
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MIN_R_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 676
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 678
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_SpeakerTestResult(B)V

    goto/16 :goto_85

    .line 682
    :cond_616
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.RESETACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62b

    .line 683
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "FACTORYRESET_ACK"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_85

    .line 692
    :cond_62b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_772

    .line 694
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "csfc_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6b6

    .line 695
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "***** FIRST BOOT ***** 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    sput-boolean v4, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isNotFirst:Z

    .line 697
    sget-boolean v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isFirst:Z

    if-nez v0, :cond_6ae

    .line 699
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "csfc_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 700
    sput-boolean v3, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isFirst:Z

    .line 701
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "***** FIRST BOOT ***** true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_664
    :goto_664
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 719
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 721
    sget v2, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isSdcardMounted:I

    if-nez v2, :cond_6eb

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_681

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6eb

    .line 722
    :cond_681
    sput v5, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isSdcardMounted:I

    .line 728
    :goto_683
    sget-boolean v2, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isFirst:Z

    if-ne v2, v3, :cond_6f5

    sget-boolean v2, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mIsSend2ndACK:Z

    if-nez v2, :cond_6f5

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6f5

    .line 729
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Media Scan completed, not support SD memory"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->startTimer()V

    .line 731
    sput-boolean v4, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isFirst:Z

    .line 732
    sput-boolean v3, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mIsSend2ndACK:Z

    .line 734
    new-instance v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$2;-><init>(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)V

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_85

    .line 705
    :cond_6ae
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "***** FIRST BOOT ***** false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_664

    .line 709
    :cond_6b6
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***** Settings.System.FACTORYRESET_ACK == 1 isNotFirst :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isNotFirst:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    sget-boolean v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isNotFirst:Z

    if-ne v0, v3, :cond_664

    .line 711
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.DELETE_RESETVERIFY_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 713
    sput-boolean v4, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isNotFirst:Z

    .line 714
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "sendBroadcast => com.android.samsungtest.DELETE_RESETVERIFY_FILE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_664

    .line 723
    :cond_6eb
    sget v2, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isSdcardMounted:I

    if-ne v2, v5, :cond_6f2

    .line 724
    sput v3, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isSdcardMounted:I

    goto :goto_683

    .line 726
    :cond_6f2
    sput v3, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isSdcardMounted:I

    goto :goto_683

    .line 745
    :cond_6f5
    sget v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isSdcardMounted:I

    if-ne v0, v3, :cond_71c

    sget-boolean v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isFirst:Z

    if-ne v0, v3, :cond_71c

    sget-boolean v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mIsSend2ndACK:Z

    if-nez v0, :cond_71c

    .line 747
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Media Scan completed, send a 2nd ack "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->startTimer()V

    .line 749
    sput-boolean v4, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isFirst:Z

    .line 750
    sput-boolean v3, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mIsSend2ndACK:Z

    .line 752
    new-instance v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$3;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver$3;-><init>(Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;)V

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_85

    .line 763
    :cond_71c
    sget v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isSdcardMounted:I

    if-ne v0, v5, :cond_751

    sget-boolean v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isFirst:Z

    if-ne v0, v3, :cond_751

    sget-boolean v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mIsSend2ndACK:Z

    if-nez v0, :cond_751

    .line 765
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Media Scan completed SDCard Mounted, nothing to do "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    sget-object v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->pm:Landroid/os/PowerManager;

    if-nez v0, :cond_73d

    .line 768
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->pm:Landroid/os/PowerManager;

    .line 770
    :cond_73d
    sget-object v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->pm:Landroid/os/PowerManager;

    const v1, 0x3000001a

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->FactoryResetWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 771
    sget-object v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->FactoryResetWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_85

    .line 774
    :cond_751
    sget-boolean v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isFirst:Z

    if-ne v0, v3, :cond_769

    sget-boolean v0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mIsSend2ndACK:Z

    if-nez v0, :cond_769

    .line 776
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Media Scan completed, send a 2nd ack "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->startTimer()V

    .line 778
    sput-boolean v4, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->isFirst:Z

    .line 779
    sput-boolean v3, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mIsSend2ndACK:Z

    goto/16 :goto_85

    .line 783
    :cond_769
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Media Scan completed 2, nothing to do "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_85

    .line 787
    :cond_772
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SELECTIVEACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78a

    .line 788
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "SELECTIVERESET_ACK"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-virtual {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->Selective_startTimer()V

    goto/16 :goto_85

    .line 792
    :cond_78a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.LcdOffSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7ae

    .line 793
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "leewh_LCD_OFF_SET"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 795
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    goto/16 :goto_85

    .line 798
    :cond_7ae
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.MemoryFormatCmd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7df

    .line 799
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "MEMORY_FORMAT_CMD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v0, "FACTORY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7db

    .line 804
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_MemoryFormatResult(B)V

    .line 810
    :goto_7d2
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "MEMORY_FORMAT_CMD2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_85

    .line 808
    :cond_7db
    invoke-direct {p0, v4}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_MemoryFormatResult(B)V

    goto :goto_7d2

    .line 812
    :cond_7df
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.MemoryFormatCheck"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7fe

    .line 813
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "MEMORY_FORMAT_CHECK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->startMemoryFormatCheck()V

    .line 815
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "MEMORY_FORMAT_CHECK2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_85

    .line 817
    :cond_7fe
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.MemorySizeCheck"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81d

    .line 818
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "MEMORY_SIZE_CHECK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->startMemorySizeCheck()V

    .line 820
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "MEMORY_SIZE_CHECK2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_85

    .line 821
    :cond_81d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.Mp3_TEST_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_849

    .line 823
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "Mp3_TEST_START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v6, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 825
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.MP3_TEST_START_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_85

    .line 831
    :cond_849
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.Mp3_TEST_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86a

    .line 833
    const-string v0, "RilSupportBroadcastReceiver"

    const-string v1, "Mp3_TEST_STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.MP3_TEST_STOP_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 835
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_85

    .line 841
    :cond_86a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_899

    .line 843
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_MAX"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v6, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 845
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MAX_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 846
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 848
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_SpeakerTestResult(B)V

    goto/16 :goto_85

    .line 866
    :cond_899
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c2

    .line 867
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_MIN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 869
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_MIN_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 870
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 873
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_SpeakerTestResult(B)V

    goto/16 :goto_85

    .line 895
    :cond_8c2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e6

    .line 896
    const-string v0, "FactoryTestBroadcastReceiver"

    const-string v1, "SPEAKER_TEST_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SPEAKER_TEST_OFF_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 898
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 900
    invoke-direct {p0, v3}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->sendToRil_SpeakerTestResult(B)V

    goto/16 :goto_85

    .line 926
    :cond_8e6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.rilsupport.RilSupportBroadcastReceiver.TEST_HISTORY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 929
    invoke-direct {p0}, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->getDataFromRilFactory()V

    goto/16 :goto_85
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "startTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :try_start_7
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->mInactivityHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    .line 274
    :goto_f
    return-void

    .line 266
    :catch_10
    move-exception v0

    .line 268
    :try_start_11
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/RilSupportBroadcastReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1b

    goto :goto_f

    .line 271
    :catchall_1b
    move-exception v0

    throw v0
.end method
