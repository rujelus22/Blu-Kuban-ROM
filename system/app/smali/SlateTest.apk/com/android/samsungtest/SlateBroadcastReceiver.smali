.class public Lcom/android/samsungtest/SlateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SlateBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;
    }
.end annotation


# static fields
.field private static final SET_FAIL:Ljava/lang/Byte;

.field private static final SET_SUCCESS:Ljava/lang/Byte;

.field private static mFlagBTTestModeService:Z

.field private static mFlagBTVisibleMode:Z


# instance fields
.field private final EXTENDED_VERSION_INFO:I

.field private final GET_AIRPLANE_MODE:I

.field private final GET_BACKLIGHT_SETTING:I

.field private final GET_BATTERYCHARGING_STATE:I

.field private final GET_BATTERY_LEVEL:I

.field private final GET_BLUETOOTH_STATUS:I

.field private final GET_DISPLAY_TEXT:I

.field private final GET_GPS_STATUS:I

.field private final GET_KEYPAD_BACKLIGHT:I

.field private final GET_ROAMING_MODE:I

.field private final GET_SCREEN_CAPTURE:I

.field private final GET_UI_SCREEN_ID:I

.field private final GET_WIFI_STATUS:I

.field private final OEM_FACTORY_SLATE_TEST:I

.field private final OEM_FUNCTION_ID_FACTORY:I

.field private SAME_AS_SCREEN_OFF_TIMEOUT:I

.field private final SET_AIRPLANE_MODE:I

.field private final SET_BACKLIGHT_SETTING:I

.field private final SET_BLUETOOTH_STATUS:I

.field private final SET_CHANGING:I

.field private final SET_DISABLECHANGING:I

.field private final SET_GPS_STATUS:I

.field private final SET_KEYPAD_BACKLIGHT:I

.field private final SET_SCREENORIENTATIONLOCK:I

.field private final SET_WIFI_STATUS:I

.field private TAG:Ljava/lang/String;

.field private counter:Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;

.field private followScreenTimeout:I

.field private length:Ljava/lang/String;

.field private mCommand:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSendDelayedResultHandler:Landroid/os/Handler;

.field private realsubcmd:Ljava/lang/String;

.field private screenId:I

.field private subcmd:Ljava/lang/String;

.field private subcommand:I

.field private testCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_SUCCESS:Ljava/lang/Byte;

    .line 103
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_FAIL:Ljava/lang/Byte;

    .line 159
    sput-boolean v1, Lcom/android/samsungtest/SlateBroadcastReceiver;->mFlagBTVisibleMode:Z

    .line 160
    sput-boolean v1, Lcom/android/samsungtest/SlateBroadcastReceiver;->mFlagBTTestModeService:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 67
    const-string v0, "SlateBroadcastReceiver"

    iput-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 108
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->OEM_FUNCTION_ID_FACTORY:I

    .line 109
    const/16 v0, 0x17

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->OEM_FACTORY_SLATE_TEST:I

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->EXTENDED_VERSION_INFO:I

    .line 112
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->GET_DISPLAY_TEXT:I

    .line 113
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->GET_SCREEN_CAPTURE:I

    .line 114
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->GET_AIRPLANE_MODE:I

    .line 115
    const/16 v0, 0x21

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_AIRPLANE_MODE:I

    .line 116
    const/16 v0, 0x22

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->GET_BACKLIGHT_SETTING:I

    .line 117
    const/16 v0, 0x23

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_BACKLIGHT_SETTING:I

    .line 118
    const/16 v0, 0x24

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->GET_BATTERYCHARGING_STATE:I

    .line 119
    const/16 v0, 0x25

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_CHANGING:I

    .line 120
    const/16 v0, 0x26

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->GET_BATTERY_LEVEL:I

    .line 121
    const/16 v0, 0x27

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->GET_BLUETOOTH_STATUS:I

    .line 122
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_BLUETOOTH_STATUS:I

    .line 123
    const/16 v0, 0x29

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->GET_GPS_STATUS:I

    .line 124
    const/16 v0, 0x2a

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_GPS_STATUS:I

    .line 125
    const/16 v0, 0x2b

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->GET_KEYPAD_BACKLIGHT:I

    .line 126
    const/16 v0, 0x2c

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_KEYPAD_BACKLIGHT:I

    .line 127
    const/16 v0, 0x30

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->GET_ROAMING_MODE:I

    .line 128
    const/16 v0, 0x33

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->GET_UI_SCREEN_ID:I

    .line 129
    const/16 v0, 0x35

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->GET_WIFI_STATUS:I

    .line 130
    const/16 v0, 0x36

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_WIFI_STATUS:I

    .line 131
    const/16 v0, 0x37

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_DISABLECHANGING:I

    .line 132
    const/16 v0, 0x38

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_SCREENORIENTATIONLOCK:I

    .line 138
    iput-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mCommand:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->length:Ljava/lang/String;

    .line 140
    iput v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    .line 141
    iput v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->testCode:I

    .line 142
    iput-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcmd:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    .line 144
    iput v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->screenId:I

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->followScreenTimeout:I

    .line 155
    const v0, 0x1869f

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SAME_AS_SCREEN_OFF_TIMEOUT:I

    .line 158
    iput-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->counter:Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;

    .line 1245
    new-instance v0, Lcom/android/samsungtest/SlateBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SlateBroadcastReceiver$1;-><init>(Lcom/android/samsungtest/SlateBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mSendDelayedResultHandler:Landroid/os/Handler;

    .line 1419
    return-void
.end method

.method private BluetoothResult(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1163
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    sget-boolean v0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mFlagBTTestModeService:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->testCode:I

    .line 1166
    :cond_22
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->counter:Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->counter:Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;

    invoke-virtual {v0}, Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;->cancel()V

    .line 1167
    :cond_2b
    sput-boolean v3, Lcom/android/samsungtest/SlateBroadcastReceiver;->mFlagBTVisibleMode:Z

    .line 1168
    sput-boolean v3, Lcom/android/samsungtest/SlateBroadcastReceiver;->mFlagBTTestModeService:Z

    .line 1170
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    .line 1171
    return-void
.end method

.method private IsWifiOn(Landroid/content/Context;)B
    .registers 7
    .parameter "context"

    .prologue
    .line 533
    const/4 v1, 0x1

    .line 534
    .local v1, WIFI_IN_ON:B
    const/4 v0, 0x0

    .line 536
    .local v0, WIFI_IN_OFF:B
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 537
    .local v2, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 538
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, "IsWifiOn : 1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v3, 0x1

    .line 543
    :goto_18
    return v3

    .line 542
    :cond_19
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, "IsWifiOn : 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v3, 0x0

    goto :goto_18
.end method

.method private RunScreenOrientationLock(I)V
    .registers 6
    .parameter

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "unlock screen"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1270
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 1273
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Intent is com.android.windowmanager.SKIP_ROTATE_CHECK"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.windowmanager.SKIP_ROTATE_CHECK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1275
    const-string v2, "DATA"

    const-string v3, "SKIP_ROTATE_CHECK"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1276
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1280
    :try_start_37
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freezeRotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_52} :catch_66

    .line 1292
    :goto_52
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Lock the screen"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1294
    return-void

    .line 1282
    :catch_66
    move-exception v0

    goto :goto_52
.end method

.method static synthetic access$000(Lcom/android/samsungtest/SlateBroadcastReceiver;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SlateBroadcastReceiver;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Byte;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_SUCCESS:Ljava/lang/Byte;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/samsungtest/SlateBroadcastReceiver;B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    return-void
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mFlagBTTestModeService:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/samsungtest/SlateBroadcastReceiver;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SlateBroadcastReceiver;->BluetoothResult(I)V

    return-void
.end method

.method private extendedVersionInfo()V
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v10, 0xa

    .line 1051
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 1053
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1054
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 1055
    const-string v0, "gsm.version.baseband"

    const-string v2, "Unknown"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1056
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v7

    .line 1057
    sget-object v8, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 1058
    const-string v2, ""

    .line 1061
    const-string v0, "ril.hw_ver"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v10, :cond_d3

    .line 1062
    const/4 v9, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1066
    :goto_2b
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1067
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1079
    :try_start_35
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ", "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1080
    const-string v0, "US-ASCII"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_79
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_35 .. :try_end_79} :catch_d7

    move-result-object v0

    .line 1085
    :goto_7a
    iget-object v4, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extendedVersionInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x3

    int-to-byte v2, v2

    .line 1090
    const/16 v4, 0x12

    :try_start_9a
    invoke-virtual {v10, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1091
    const/16 v4, 0x17

    invoke-virtual {v10, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1092
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1093
    iget v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->testCode:I

    int-to-byte v2, v2

    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    move v2, v3

    .line 1094
    :goto_ae
    array-length v3, v0

    if-ge v2, v3, :cond_f6

    .line 1096
    aget-byte v3, v0, v2

    invoke-virtual {v10, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1097
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes[i] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_d0} :catch_114

    .line 1094
    add-int/lit8 v2, v2, 0x1

    goto :goto_ae

    .line 1064
    :cond_d3
    const-string v0, "Unknown"

    goto/16 :goto_2b

    .line 1081
    :catch_d7
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    .line 1082
    iget-object v4, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extendedVersionInfo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    move-object v0, v1

    goto :goto_7a

    .line 1099
    :cond_f6
    const/16 v0, 0xd

    :try_start_f8
    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1100
    const/16 v0, 0xa

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1101
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_104} :catch_114

    .line 1105
    :goto_104
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1106
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1107
    return-void

    .line 1102
    :catch_114
    move-exception v0

    .line 1103
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException in sendToRil_SlateResult !!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_104
.end method

.method private getAirplaneMode()V
    .registers 5

    .prologue
    .line 577
    const/4 v0, -0x1

    .line 578
    .local v0, AirplaneMode:B
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "getAirplaneMode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-byte v0, v1

    .line 583
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AirplaneMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    if-gez v0, :cond_38

    .line 586
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Wrong AirplaneMode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :goto_37
    return-void

    .line 589
    :cond_38
    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    goto :goto_37
.end method

.method private getBacklightSetting()V
    .registers 7

    .prologue
    const/16 v5, 0x7530

    .line 696
    const/4 v0, -0x1

    .line 697
    .local v0, BacklightSetting:I
    const/4 v1, -0x1

    .line 698
    .local v1, backlight:B
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "getBacklightSetting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 703
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BacklightSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/16 v2, 0x3a98

    if-ne v0, v2, :cond_39

    .line 707
    const/16 v1, 0xf

    .line 736
    :goto_35
    invoke-direct {p0, v1}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    .line 737
    :cond_38
    return-void

    .line 709
    :cond_39
    if-ne v0, v5, :cond_3e

    .line 711
    const/16 v1, 0x1e

    goto :goto_35

    .line 713
    :cond_3e
    const v2, 0xea60

    if-ne v0, v2, :cond_46

    .line 715
    const/16 v1, 0x3c

    goto :goto_35

    .line 717
    :cond_46
    const v2, 0x1d4c0

    if-ne v0, v2, :cond_4e

    .line 719
    const/16 v1, 0x78

    goto :goto_35

    .line 721
    :cond_4e
    const v2, 0x927c0

    if-ne v0, v2, :cond_38

    .line 723
    const/16 v1, 0x7e

    goto :goto_35
.end method

.method private getBatteryChargingState()V
    .registers 7

    .prologue
    .line 391
    const/4 v2, 0x0

    .line 392
    .local v2, sBatteryChargingState:Ljava/lang/String;
    const/4 v0, 0x1

    .line 393
    .local v0, CHARGING:B
    const/4 v1, 0x0

    .line 395
    .local v1, NOCHARGING:B
    const-string v3, "/sys/class/power_supply/battery/status"

    invoke-direct {p0, v3}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " BatteryChargingState result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "charging"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 399
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    .line 403
    :goto_31
    return-void

    .line 401
    :cond_32
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    goto :goto_31
.end method

.method private getBatteryLevel()V
    .registers 5

    .prologue
    .line 481
    const/4 v0, -0x1

    .line 483
    .local v0, iBatteryLevel:B
    const-string v1, "/sys/class/power_supply/battery/fg_soc"

    invoke-direct {p0, v1}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getByteFromFile(Ljava/lang/String;)B

    move-result v0

    .line 484
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending  BatteryLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    if-gez v0, :cond_29

    .line 487
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Wrong BatteryLevel"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_28
    return-void

    .line 491
    :cond_29
    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    goto :goto_28
.end method

.method private getBluetoothStatus()V
    .registers 5

    .prologue
    .line 1148
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1151
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_18

    .line 1152
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "getBluetoothStatus() status: BluetoothAdapter.STATE_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/4 v0, 0x0

    .line 1159
    :goto_14
    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->BluetoothResult(I)V

    .line 1160
    return-void

    .line 1155
    :cond_18
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBluetoothStatus() status: BluetoothAdapter.STATE_ON ScanMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_3e

    const/4 v0, 0x3

    goto :goto_14

    .line 1157
    :cond_3e
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private getByteFromFile(Ljava/lang/String;)B
    .registers 10
    .parameter "path"

    .prologue
    .line 496
    const/4 v1, 0x0

    .line 499
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_39

    .line 501
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, s:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   get Byte from File == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 504
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 505
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_54

    move-result v3

    .local v3, ret:B
    move-object v1, v2

    .line 510
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #s:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_38
    return v3

    .line 506
    .end local v3           #ret:B
    :catch_39
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/Exception;
    :goto_3a
    iget-object v5, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v3, -0x1

    .restart local v3       #ret:B
    goto :goto_38

    .line 506
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v3           #ret:B
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_54
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_3a
.end method

.method private getDisplayText(Landroid/content/Context;B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1180
    .line 1182
    packed-switch p2, :pswitch_data_1c

    .line 1202
    :pswitch_3
    const-string v0, ""

    .line 1205
    :goto_5
    invoke-direct {p0, p2, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_UIScreenTextResults(BLjava/lang/String;)V

    .line 1206
    return-void

    .line 1184
    :pswitch_9
    const-string v0, "Home Screen"

    goto :goto_5

    .line 1187
    :pswitch_c
    const-string v0, "Settings Menu Screen"

    goto :goto_5

    .line 1190
    :pswitch_f
    const-string v0, "Dialer Screen"

    goto :goto_5

    .line 1193
    :pswitch_12
    const-string v0, "Browser Screen"

    goto :goto_5

    .line 1196
    :pswitch_15
    const-string v0, "Phone Info Screen"

    goto :goto_5

    .line 1199
    :pswitch_18
    const-string v0, "Send Message Screen"

    goto :goto_5

    .line 1182
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_3
        :pswitch_15
        :pswitch_3
        :pswitch_18
    .end packed-switch
.end method

.method private getFormattedKernelVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1000
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/version"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_47

    .line 1002
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_42

    move-result-object v1

    .line 1004
    :try_start_12
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1007
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 1017
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1018
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1020
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_52

    .line 1021
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regex did not match on /proc/version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const-string v0, "Unavailable"

    .line 1047
    :goto_41
    return-object v0

    .line 1004
    :catchall_42
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_47} :catch_47

    .line 1042
    :catch_47
    move-exception v0

    .line 1043
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1047
    const-string v0, "Unavailable"

    goto :goto_41

    .line 1023
    :cond_52
    :try_start_52
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_7e

    .line 1024
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regex match on /proc/version only returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " groups"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-string v0, "Unavailable"

    goto :goto_41

    .line 1039
    :cond_7e
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_8b} :catch_47

    move-result-object v0

    goto :goto_41
.end method

.method private getGPSStatus()V
    .registers 5

    .prologue
    .line 626
    const/4 v0, -0x1

    .line 627
    .local v0, GPSStatus:B
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "getGPSStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    .line 632
    const/4 v0, 0x1

    .line 639
    :goto_18
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPSStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    if-gez v0, :cond_3c

    .line 642
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Wrong GPSStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :goto_39
    return-void

    .line 636
    :cond_3a
    const/4 v0, 0x0

    goto :goto_18

    .line 646
    :cond_3c
    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    goto :goto_39
.end method

.method private getKeypadBacklight()V
    .registers 7

    .prologue
    const/16 v5, 0x1770

    .line 804
    const/4 v1, -0x1

    .line 805
    .local v1, KeypadSetting:I
    const/4 v0, -0x1

    .line 806
    .local v0, KeypadBacklight:B
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "getKeypadBacklight"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "button_key_light"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 817
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeypadSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/16 v2, 0x5dc

    if-ne v1, v2, :cond_39

    .line 820
    const/16 v0, 0xf

    .line 880
    :goto_35
    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    .line 881
    :cond_38
    return-void

    .line 822
    :cond_39
    if-ne v1, v5, :cond_3d

    .line 824
    const/4 v0, 0x6

    goto :goto_35

    .line 826
    :cond_3d
    if-nez v1, :cond_41

    .line 828
    const/4 v0, 0x0

    goto :goto_35

    .line 830
    :cond_41
    const/4 v2, -0x1

    if-ne v1, v2, :cond_38

    .line 832
    const/16 v0, 0x63

    goto :goto_35
.end method

.method private getRoamingMode()V
    .registers 7

    .prologue
    const/4 v0, 0x2

    .line 965
    .line 966
    const/4 v1, -0x1

    .line 967
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "getRoamingMode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 971
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_settings"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 975
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RoamingMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    if-nez v2, :cond_3e

    .line 985
    const/4 v0, 0x1

    .line 993
    :cond_3a
    :goto_3a
    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    .line 994
    return-void

    .line 987
    :cond_3e
    if-eq v2, v0, :cond_3a

    move v0, v1

    goto :goto_3a
.end method

.method private getScreenCapture(Landroid/content/Context;B)V
    .registers 3
    .parameter "context"
    .parameter "screenId"

    .prologue
    .line 1175
    invoke-direct {p0, p2}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    .line 1176
    return-void
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "path"

    .prologue
    .line 514
    const/4 v1, 0x0

    .line 518
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_31

    .line 519
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, s:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   get String from File == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 522
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2f} :catch_4d

    move-object v1, v2

    .line 527
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_30
    return-object v3

    .line 523
    .end local v3           #s:Ljava/lang/String;
    :catch_31
    move-exception v0

    .line 524
    .local v0, e:Ljava/lang/Exception;
    :goto_32
    iget-object v4, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v3, "ERROR"

    .restart local v3       #s:Ljava/lang/String;
    goto :goto_30

    .line 523
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v3           #s:Ljava/lang/String;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_4d
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_32
.end method

.method private getSubData()V
    .registers 6

    .prologue
    .line 365
    const/4 v1, 0x0

    .line 366
    .local v1, subcmd:Ljava/lang/String;
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    .line 368
    :try_start_4
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mCommand:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_13

    move-result-object v1

    .line 373
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    .line 374
    :goto_12
    return-void

    .line 369
    :catch_13
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slate Test SubCmd error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private getSubData2()V
    .registers 7

    .prologue
    .line 346
    const/4 v1, 0x0

    .line 347
    .local v1, subcmd:Ljava/lang/String;
    const/4 v2, 0x0

    .line 348
    .local v2, subcmd2:Ljava/lang/String;
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    .line 353
    :try_start_5
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mCommand:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 354
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mCommand:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after Slate Test SubCmd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3e} :catch_47

    .line 361
    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    .line 362
    :goto_46
    return-void

    .line 357
    :catch_47
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slate Test SubCmd error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method private getSubDataforBacklight()V
    .registers 6

    .prologue
    .line 377
    const/4 v1, 0x0

    .line 380
    .local v1, subcmd3:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mCommand:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_3e

    move-result-object v1

    .line 385
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubDataforBacklight subcmd3 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iput-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    .line 387
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubDataforBacklight realsubcmd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_3d
    return-void

    .line 381
    :catch_3e
    move-exception v0

    .line 382
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slate Test SubCmd error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method private getUIScreenID(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1210
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1211
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1212
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1214
    const-string v2, "com.android.launcher"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1215
    invoke-direct {p0, v4}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_UIScreenIDResults(B)V

    .line 1240
    :goto_35
    return-void

    .line 1217
    :cond_36
    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1218
    const-string v1, "com.android.settings.Settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1219
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_UIScreenIDResults(B)V

    goto :goto_35

    .line 1221
    :cond_4b
    const-string v1, "com.android.settings.DeviceInfoSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1222
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_UIScreenIDResults(B)V

    goto :goto_35

    .line 1225
    :cond_58
    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 1226
    const-string v1, "com.android.contacts.DialtactsActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "com.android.contacts.ContactsLaunchActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1227
    :cond_70
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_UIScreenIDResults(B)V

    goto :goto_35

    .line 1230
    :cond_75
    const-string v2, "com.android.browser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 1231
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_UIScreenIDResults(B)V

    goto :goto_35

    .line 1233
    :cond_82
    const-string v2, "com.android.mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 1234
    const-string v1, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1235
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_UIScreenIDResults(B)V

    goto :goto_35

    .line 1239
    :cond_98
    invoke-direct {p0, v3}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_UIScreenIDResults(B)V

    goto :goto_35
.end method

.method private getWIFIStatus(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "getWIFIStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SlateBroadcastReceiver;->IsWifiOn(Landroid/content/Context;)B

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    .line 549
    return-void
.end method

.method private sendToRil_SlateResult(B)V
    .registers 7
    .parameter

    .prologue
    .line 1401
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1402
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1404
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendToRil_SlateResult   result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    const/16 v2, 0x12

    :try_start_24
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1408
    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1409
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1410
    iget v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->testCode:I

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1411
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_39} :catch_4a

    .line 1415
    :goto_39
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1416
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1417
    return-void

    .line 1412
    :catch_4a
    move-exception v1

    .line 1413
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException in sendToRil_SlateResult !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method private sendToRil_UIScreenIDResults(B)V
    .registers 7
    .parameter

    .prologue
    .line 1381
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1382
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1384
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendToRil_UIScreenIDResults  result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    const/16 v2, 0x12

    :try_start_24
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1388
    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1389
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1390
    iget v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->testCode:I

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1391
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1392
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3d} :catch_4e

    .line 1396
    :goto_3d
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1397
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1398
    return-void

    .line 1393
    :catch_4e
    move-exception v1

    .line 1394
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException in sendToRil_SlateResult !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method private sendToRil_UIScreenTextResults(BLjava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1345
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1346
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1348
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendToRil_UIScreenTextResults  screenId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendToRil_UIScreenTextResults  screenText = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1352
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1355
    const/16 v5, 0x12

    :try_start_45
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1356
    const/16 v5, 0x17

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1357
    if-eqz v3, :cond_6b

    .line 1358
    add-int/lit8 v5, v3, 0x8

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1362
    :goto_56
    iget v5, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->testCode:I

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1363
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1364
    if-eqz v3, :cond_8a

    .line 1365
    :goto_61
    if-ge v0, v3, :cond_8a

    .line 1366
    aget-byte v5, v4, v0

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1365
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    .line 1360
    :cond_6b
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_70} :catch_71

    goto :goto_56

    .line 1372
    :catch_71
    move-exception v0

    .line 1373
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "IOException in sendToRil_SlateResult !!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :goto_79
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1376
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1377
    return-void

    .line 1369
    :cond_8a
    const/16 v0, 0xd

    :try_start_8c
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1370
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1371
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_98} :catch_71

    goto :goto_79
.end method

.method private setAirplaneMode()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 593
    const/4 v0, -0x1

    .line 596
    .local v0, AirplaneMode:B
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "setAirplaneMode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-byte v0, v2

    .line 601
    iget v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    if-ne v2, v5, :cond_3a

    .line 602
    if-nez v0, :cond_30

    .line 603
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Intent is com.android.settings.APON"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.APON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 620
    .end local v1           #intent:Landroid/content/Intent;
    :cond_30
    :goto_30
    sget-object v2, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_SUCCESS:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    .line 622
    :goto_39
    return-void

    .line 608
    :cond_3a
    iget v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    if-nez v2, :cond_54

    .line 609
    if-ne v0, v5, :cond_30

    .line 610
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Intent is com.android.settings.APOFF"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.APOFF"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_30

    .line 616
    .end local v1           #intent:Landroid/content/Intent;
    :cond_54
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Wrong setAirplaneMode subcmd value"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    sget-object v2, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_FAIL:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    goto :goto_39
.end method

.method private setBacklightSetting()V
    .registers 9

    .prologue
    .line 740
    const/4 v3, 0x1

    .line 741
    .local v3, result:B
    const/4 v1, 0x0

    .line 742
    .local v1, SET_SUCCESS:B
    const/4 v0, 0x1

    .line 749
    .local v0, SET_FAIL:B
    iget-object v5, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v6, "setBacklightSetting"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v5, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "realsubcmd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v5, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    const-string v6, "0F"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 755
    const/16 v4, 0x3a98

    .line 786
    .local v4, value:I
    :goto_30
    iget-object v5, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v5, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 796
    iget-object v5, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v6, "Intent is com.android.settings.BACKLIGHTCHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.BACKLIGHTCHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 798
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 800
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    .line 801
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #value:I
    :goto_6a
    return-void

    .line 757
    :cond_6b
    iget-object v5, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    const-string v6, "1E"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 759
    const/16 v4, 0x7530

    .restart local v4       #value:I
    goto :goto_30

    .line 761
    .end local v4           #value:I
    :cond_78
    iget-object v5, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    const-string v6, "3C"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 763
    const v4, 0xea60

    .restart local v4       #value:I
    goto :goto_30

    .line 765
    .end local v4           #value:I
    :cond_86
    iget-object v5, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    const-string v6, "78"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 767
    const v4, 0x1d4c0

    .restart local v4       #value:I
    goto :goto_30

    .line 769
    .end local v4           #value:I
    :cond_94
    iget-object v5, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    const-string v6, "7E"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 771
    const v4, 0x927c0

    .restart local v4       #value:I
    goto :goto_30

    .line 782
    .end local v4           #value:I
    :cond_a2
    iget-object v5, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v6, "Wrong setBacklightSetting subcmd value"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    goto :goto_6a
.end method

.method private setBluetoothActivation()V
    .registers 6

    .prologue
    .line 1110
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1111
    const/4 v1, 0x0

    .line 1112
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBluetoothDeactivation() State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_30

    .line 1115
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->setBluetoothVisible()V

    .line 1116
    invoke-direct {p0, v1}, Lcom/android/samsungtest/SlateBroadcastReceiver;->BluetoothResult(I)V

    .line 1120
    :goto_2f
    return-void

    .line 1118
    :cond_30
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_2f
.end method

.method private setBluetoothDeactivation()V
    .registers 6

    .prologue
    .line 1123
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1124
    const/4 v1, 0x0

    .line 1125
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBluetoothDeactivation() State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2d

    .line 1128
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1132
    :goto_2c
    return-void

    .line 1130
    :cond_2d
    invoke-direct {p0, v1}, Lcom/android/samsungtest/SlateBroadcastReceiver;->BluetoothResult(I)V

    goto :goto_2c
.end method

.method private setBluetoothVisible()V
    .registers 5

    .prologue
    .line 1135
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1137
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "etBluetoothVisible() mFlagBTVisibleMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/samsungtest/SlateBroadcastReceiver;->mFlagBTVisibleMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    sget-boolean v1, Lcom/android/samsungtest/SlateBroadcastReceiver;->mFlagBTVisibleMode:Z

    if-eqz v1, :cond_2f

    .line 1140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.test.bluetooth.intent.action.HOSTREQ_BTSLATETESTMODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1141
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1145
    :goto_2e
    return-void

    .line 1144
    :cond_2f
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    goto :goto_2e
.end method

.method private setChargingStart()V
    .registers 4

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, " SetChargingStart  send intent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SLATE_TEST.setCharging"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DATA"

    iget v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 478
    return-void
.end method

.method private setDisableChargingStart()V
    .registers 4

    .prologue
    .line 467
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, " SetDisableChargingStart  send intent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SLATE_TEST.setDisableCharging"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DATA"

    iget v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 471
    return-void
.end method

.method private setGPSStatus()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 650
    const/4 v0, -0x1

    .line 653
    .local v0, GPSStatus:B
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, "setGPSStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_52

    .line 658
    const/4 v0, 0x1

    .line 665
    :goto_18
    iget v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    if-ne v3, v5, :cond_54

    .line 666
    if-nez v0, :cond_48

    .line 667
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 669
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.GPS_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    .local v1, i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 671
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, "Intent is com.android.settings.GPSON"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.GPSON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 692
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_48
    :goto_48
    sget-object v3, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_SUCCESS:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    .line 693
    :goto_51
    return-void

    .line 662
    :cond_52
    const/4 v0, 0x0

    goto :goto_18

    .line 676
    :cond_54
    iget v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    if-nez v3, :cond_86

    .line 677
    if-ne v0, v5, :cond_48

    .line 678
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 680
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.GPS_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .restart local v1       #i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 682
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, "Intent is com.android.settings.GPSOFF"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.GPSOFF"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_48

    .line 688
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_86
    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v4, "Wrong setGPSStatus subcmd value"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    sget-object v3, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_FAIL:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    goto :goto_51
.end method

.method private setKeypadBacklight()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 884
    .line 890
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "setKeypadBacklight"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "realsubcmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    const-string v2, "0F"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 915
    const/16 v0, 0x5dc

    .line 935
    :goto_2e
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "button_key_light"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 957
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Intent is com.android.settings.KEYPADBACKLIGHTCHANGED"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.KEYPADBACKLIGHTCHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 959
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 961
    invoke-direct {p0, v1}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    .line 962
    :goto_67
    return-void

    .line 917
    :cond_68
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    const-string v2, "06"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 919
    const/16 v0, 0x1770

    goto :goto_2e

    .line 921
    :cond_75
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    move v0, v1

    .line 923
    goto :goto_2e

    .line 925
    :cond_81
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    const-string v2, "63"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 927
    const/4 v0, -0x1

    goto :goto_2e

    .line 931
    :cond_8d
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Wrong setKeypadBacklight subcmd value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    goto :goto_67
.end method

.method private setScreenOrientationLock()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1301
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1302
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 1303
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenOrientationLock() subcommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    packed-switch v1, :pswitch_data_8c

    .line 1325
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Wrong setScreenOrientationLock value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.windowmanager.SKIP_ROTATE_CHECK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1327
    const-string v2, "DATA"

    const-string v3, "RESTORE_ROTATE_CHECK"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1328
    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1330
    :try_start_50
    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_53} :catch_89

    .line 1332
    :goto_53
    sget-object v0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_FAIL:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    .line 1338
    :goto_5c
    return-void

    .line 1307
    :pswitch_5d
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "unlock screen"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1337
    :goto_6f
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mSendDelayedResultHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5c

    .line 1311
    :pswitch_77
    invoke-direct {p0, v5}, Lcom/android/samsungtest/SlateBroadcastReceiver;->RunScreenOrientationLock(I)V

    goto :goto_6f

    .line 1314
    :pswitch_7b
    invoke-direct {p0, v4}, Lcom/android/samsungtest/SlateBroadcastReceiver;->RunScreenOrientationLock(I)V

    goto :goto_6f

    .line 1317
    :pswitch_7f
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->RunScreenOrientationLock(I)V

    goto :goto_6f

    .line 1320
    :pswitch_84
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->RunScreenOrientationLock(I)V

    goto :goto_6f

    .line 1331
    :catch_89
    move-exception v0

    goto :goto_53

    .line 1304
    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_77
        :pswitch_7b
        :pswitch_7f
        :pswitch_84
    .end packed-switch
.end method

.method private setWIFIStatus(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 553
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "setWIFIStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 557
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    iget v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    if-ne v1, v3, :cond_27

    .line 558
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SlateBroadcastReceiver;->IsWifiOn(Landroid/content/Context;)B

    move-result v1

    if-nez v1, :cond_1d

    .line 559
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 572
    :cond_1d
    :goto_1d
    sget-object v1, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_SUCCESS:Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    .line 573
    :goto_26
    return-void

    .line 562
    :cond_27
    iget v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    if-nez v1, :cond_36

    .line 563
    invoke-direct {p0, p1}, Lcom/android/samsungtest/SlateBroadcastReceiver;->IsWifiOn(Landroid/content/Context;)B

    move-result v1

    if-ne v1, v3, :cond_1d

    .line 564
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1d

    .line 568
    :cond_36
    iget-object v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Wrong setCharging subcmd value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    sget-object v1, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_FAIL:Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    goto :goto_26
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x4

    const/4 v12, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x2

    const/4 v11, 0x1

    .line 164
    iput-object p1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 166
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

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

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SLATE_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_220

    .line 169
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive SLATE_TEST_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v0, "DATA"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mCommand:Ljava/lang/String;

    .line 171
    const-string v0, "LENGTH"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->length:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLATE_TEST_ACTION  mCommand ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  length ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->length:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mCommand:Ljava/lang/String;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->length:Ljava/lang/String;

    if-nez v0, :cond_7d

    .line 176
    :cond_75
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Wrong Slate Command."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_7c
    :goto_7c
    return-void

    .line 180
    :cond_7d
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->length:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 181
    .local v7, ilength:I
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->testCode:I

    .line 183
    if-le v7, v11, :cond_ef

    .line 185
    iget v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->testCode:I

    const/16 v1, 0x23

    if-eq v0, v1, :cond_9d

    iget v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->testCode:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_e1

    .line 187
    :cond_9d
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "testCode is SET_BACKLIGHT_SETTING or SET_KEYPAD_BACKLIGHT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getSubDataforBacklight()V

    .line 189
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realsubcmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_c1
    iget v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->testCode:I

    sparse-switch v0, :sswitch_data_2f6

    .line 296
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slate Test mCommand error ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 191
    :cond_e1
    iget v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->testCode:I

    const/16 v1, 0x37

    if-ne v0, v1, :cond_eb

    .line 193
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getSubData2()V

    goto :goto_c1

    .line 197
    :cond_eb
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getSubData()V

    goto :goto_c1

    .line 201
    :cond_ef
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    goto :goto_c1

    .line 207
    :sswitch_f3
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->extendedVersionInfo()V

    goto :goto_7c

    .line 210
    :sswitch_f7
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->screenId:I

    .line 211
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->screenId:I

    int-to-byte v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getScreenCapture(Landroid/content/Context;B)V

    goto/16 :goto_7c

    .line 214
    :sswitch_10d
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->screenId:I

    .line 215
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->screenId:I

    int-to-byte v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getDisplayText(Landroid/content/Context;B)V

    goto/16 :goto_7c

    .line 219
    :sswitch_123
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getAirplaneMode()V

    goto/16 :goto_7c

    .line 222
    :sswitch_128
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->setAirplaneMode()V

    goto/16 :goto_7c

    .line 225
    :sswitch_12d
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getBacklightSetting()V

    goto/16 :goto_7c

    .line 228
    :sswitch_132
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_BACKLIGHT_SETTING realsubcmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->setBacklightSetting()V

    goto/16 :goto_7c

    .line 232
    :sswitch_151
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getBatteryChargingState()V

    goto/16 :goto_7c

    .line 235
    :sswitch_156
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->setDisableChargingStart()V

    goto/16 :goto_7c

    .line 238
    :sswitch_15b
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->setChargingStart()V

    goto/16 :goto_7c

    .line 241
    :sswitch_160
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getBatteryLevel()V

    goto/16 :goto_7c

    .line 244
    :sswitch_165
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getBluetoothStatus()V

    goto/16 :goto_7c

    .line 247
    :sswitch_16a
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_BLUETOOTH_STATUS subcommand : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;-><init>(Lcom/android/samsungtest/SlateBroadcastReceiver;JJ)V

    iput-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->counter:Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;

    .line 249
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->counter:Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;

    invoke-virtual {v0}, Lcom/android/samsungtest/SlateBroadcastReceiver$CheckCount;->start()Landroid/os/CountDownTimer;

    .line 250
    sput-boolean v11, Lcom/android/samsungtest/SlateBroadcastReceiver;->mFlagBTTestModeService:Z

    .line 251
    iget v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a3

    .line 252
    sput-boolean v11, Lcom/android/samsungtest/SlateBroadcastReceiver;->mFlagBTVisibleMode:Z

    .line 253
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->setBluetoothActivation()V

    goto/16 :goto_7c

    .line 254
    :cond_1a3
    iget v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    if-ne v0, v11, :cond_1ae

    .line 255
    sput-boolean v12, Lcom/android/samsungtest/SlateBroadcastReceiver;->mFlagBTVisibleMode:Z

    .line 256
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->setBluetoothActivation()V

    goto/16 :goto_7c

    .line 257
    :cond_1ae
    iget v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->subcommand:I

    if-nez v0, :cond_1b7

    .line 258
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->setBluetoothDeactivation()V

    goto/16 :goto_7c

    .line 260
    :cond_1b7
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slate Set Bluetooth Test mCommand error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7c

    .line 264
    :sswitch_1d3
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getGPSStatus()V

    goto/16 :goto_7c

    .line 268
    :sswitch_1d8
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->setGPSStatus()V

    goto/16 :goto_7c

    .line 272
    :sswitch_1dd
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getKeypadBacklight()V

    goto/16 :goto_7c

    .line 275
    :sswitch_1e2
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_KEYPAD_BACKLIGHT realsubcmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->realsubcmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->setKeypadBacklight()V

    goto/16 :goto_7c

    .line 279
    :sswitch_201
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getRoamingMode()V

    goto/16 :goto_7c

    .line 282
    :sswitch_206
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getUIScreenID(Landroid/content/Context;)V

    goto/16 :goto_7c

    .line 285
    :sswitch_20d
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->getWIFIStatus(Landroid/content/Context;)V

    goto/16 :goto_7c

    .line 288
    :sswitch_214
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->setWIFIStatus(Landroid/content/Context;)V

    goto/16 :goto_7c

    .line 292
    :sswitch_21b
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->setScreenOrientationLock()V

    goto/16 :goto_7c

    .line 300
    .end local v7           #ilength:I
    :cond_220
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SLATE_TEST.setChargingResult"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_273

    .line 301
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive SLATE_SETCHARGING_RESULT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/16 v0, 0x25

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->testCode:I

    .line 304
    const-string v0, "RESULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 305
    .local v9, result:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLATE_SETCHARGING_RESULT  == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v0, "SUCCESS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_268

    .line 308
    sget-object v0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_SUCCESS:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    goto/16 :goto_7c

    .line 310
    :cond_268
    sget-object v0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_FAIL:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    goto/16 :goto_7c

    .line 313
    .end local v9           #result:Ljava/lang/String;
    :cond_273
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.SLATE_TEST.setDisableChargingResult"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c6

    .line 314
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive SLATE_SETDISABLECHARGING_RESULT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/16 v0, 0x37

    iput v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->testCode:I

    .line 317
    const-string v0, "RESULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 318
    .restart local v9       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/samsungtest/SlateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLATE_SETDISABLECHARGING_RESULT  == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v0, "SUCCESS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bb

    .line 321
    sget-object v0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_SUCCESS:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    goto/16 :goto_7c

    .line 323
    :cond_2bb
    sget-object v0, Lcom/android/samsungtest/SlateBroadcastReceiver;->SET_FAIL:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->sendToRil_SlateResult(B)V

    goto/16 :goto_7c

    .line 326
    .end local v9           #result:Ljava/lang/String;
    :cond_2c6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 327
    sget-boolean v0, Lcom/android/samsungtest/SlateBroadcastReceiver;->mFlagBTTestModeService:Z

    if-eqz v0, :cond_7c

    .line 328
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x8000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 329
    .local v10, state:I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    .line 330
    .local v8, mAdapter:Landroid/bluetooth/BluetoothAdapter;
    const/4 v6, 0x0

    .line 332
    .local v6, BTresult:I
    packed-switch v10, :pswitch_data_350

    :pswitch_2e6
    goto/16 :goto_7c

    .line 338
    :pswitch_2e8
    invoke-direct {p0, v6}, Lcom/android/samsungtest/SlateBroadcastReceiver;->BluetoothResult(I)V

    goto/16 :goto_7c

    .line 334
    :pswitch_2ed
    invoke-direct {p0}, Lcom/android/samsungtest/SlateBroadcastReceiver;->setBluetoothVisible()V

    .line 335
    invoke-direct {p0, v6}, Lcom/android/samsungtest/SlateBroadcastReceiver;->BluetoothResult(I)V

    goto/16 :goto_7c

    .line 204
    nop

    :sswitch_data_2f6
    .sparse-switch
        0x2 -> :sswitch_f3
        0x3 -> :sswitch_10d
        0x4 -> :sswitch_f7
        0x20 -> :sswitch_123
        0x21 -> :sswitch_128
        0x22 -> :sswitch_12d
        0x23 -> :sswitch_132
        0x24 -> :sswitch_151
        0x25 -> :sswitch_15b
        0x26 -> :sswitch_160
        0x27 -> :sswitch_165
        0x28 -> :sswitch_16a
        0x29 -> :sswitch_1d3
        0x2a -> :sswitch_1d8
        0x2b -> :sswitch_1dd
        0x2c -> :sswitch_1e2
        0x30 -> :sswitch_201
        0x33 -> :sswitch_206
        0x35 -> :sswitch_20d
        0x36 -> :sswitch_214
        0x37 -> :sswitch_156
        0x38 -> :sswitch_21b
    .end sparse-switch

    .line 332
    :pswitch_data_350
    .packed-switch 0xa
        :pswitch_2e8
        :pswitch_2e6
        :pswitch_2ed
    .end packed-switch
.end method
