.class public Lcom/sec/android/app/wlantest/WlanTest;
.super Landroid/app/Activity;
.source "WlanTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;,
        Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;,
        Lcom/sec/android/app/wlantest/WlanTest$CommandArgs;,
        Lcom/sec/android/app/wlantest/WlanTest$DutId;,
        Lcom/sec/android/app/wlantest/WlanTest$FWMode;
    }
.end annotation


# static fields
.field public static final BROADCAST_DATA_ACTION_FOR_DRIVER:Ljava/lang/String; = "android.intent.action.WIFI_DRIVER_INDICATION"

.field public static final BROADCAST_SEC_WLAN_TEST_RESP:Ljava/lang/String; = "com.sec.android.app.wlantest.WIFI_TEST_RESPONSE"

.field private static final DRIVER_STATUS:Ljava/lang/String; = "wlan.driver.status"

.field private static final DUT_COMMAND:I = 0x1

.field protected static final EVENT_CHANGE_DRIVER:I = 0x104

.field protected static final EVENT_COMMAND:I = 0x106

.field protected static final EVENT_DRIVER_STATUS:I = 0x105

.field protected static final EVENT_GUI_UPDATE:I = 0x101

.field protected static final EVENT_LOAD_DRIVER:I = 0x102

.field protected static final EVENT_UNLOAD_DRIVER:I = 0x103

.field public static final MFGDRIVER_LOAD:Ljava/lang/String; = "mfgloader:-l"

.field public static final MFGDRIVER_UNLOAD:Ljava/lang/String; = "mfgloader:-u"

.field public static final RECEIVE_SEC_WLAN_TEST_CMD:Ljava/lang/String; = "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

.field public static final SEC_CMDID:Ljava/lang/String; = "CMDID"

.field public static final SEC_CMD_STRING_DATA:Ljava/lang/String; = "S_DATA"

.field public static final SEC_RESP_DATA:Ljava/lang/String; = "S_DATA"

.field private static final TAG:Ljava/lang/String; = "WlanTest"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "WlanTest"

.field private static final WLANDUTSERVICE_PROP_NAME:Ljava/lang/String; = "init.svc.wlandutservice"

.field private static mFirmware:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

.field private static mScrollView:Landroid/widget/ScrollView;

.field private static mTextView:Landroid/widget/TextView;

.field static myGUIUpdateHandler:Landroid/os/Handler;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private StopByCloseDUT:Z

.field absRxTest:Landroid/widget/RelativeLayout;

.field absTxTest:Landroid/widget/RelativeLayout;

.field absVersion:Landroid/widget/RelativeLayout;

.field bandRx:Landroid/widget/Spinner;

.field bandTx:Landroid/widget/Spinner;

.field bandwidthTx:Landroid/widget/Spinner;

.field btClearRx:Landroid/widget/Button;

.field btStartRx:Landroid/widget/Button;

.field btStartTx:Landroid/widget/Button;

.field btStopRx:Landroid/widget/Button;

.field btStopTx:Landroid/widget/Button;

.field burst:Landroid/widget/EditText;

.field channelRx:Landroid/widget/Spinner;

.field channelTx:Landroid/widget/Spinner;

.field driverStatus:Ljava/lang/String;

.field error:Landroid/widget/EditText;

.field linStatus:Landroid/widget/LinearLayout;

.field private mBufferedResultMessage:Ljava/lang/String;

.field private mCommandHandler:Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;

.field private mDriverHandler:Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsScreenOn:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWLService:Landroid/os/IBinder;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field packetTx:Landroid/widget/Spinner;

.field payload:Landroid/widget/EditText;

.field per:Landroid/widget/EditText;

.field posBandRx:Ljava/lang/String;

.field posBandTx:Ljava/lang/String;

.field posBandwidthTx:Ljava/lang/String;

.field posBurstTx:Ljava/lang/String;

.field posChannelRx:Ljava/lang/String;

.field posChannelTx:Ljava/lang/String;

.field posPacketTx:Ljava/lang/String;

.field posPayloadTx:Ljava/lang/String;

.field posPower:Ljava/lang/String;

.field posPreambleTx:Ljava/lang/String;

.field posTxRate:Ljava/lang/String;

.field power:Landroid/widget/Spinner;

.field preamble:Landroid/widget/Spinner;

.field received:Landroid/widget/EditText;

.field txRate:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 174
    new-instance v0, Lcom/sec/android/app/wlantest/WlanTest$1;

    invoke-direct {v0}, Lcom/sec/android/app/wlantest/WlanTest$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/wlantest/WlanTest;->myGUIUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest;->mIntentFilter:Landroid/content/IntentFilter;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->StopByCloseDUT:Z

    .line 158
    iput-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest;->driverStatus:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->mIsScreenOn:Z

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->mBufferedResultMessage:Ljava/lang/String;

    .line 240
    new-instance v0, Lcom/sec/android/app/wlantest/WlanTest$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/wlantest/WlanTest$2;-><init>(Lcom/sec/android/app/wlantest/WlanTest;)V

    iput-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1268
    return-void
.end method

.method static synthetic access$000()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/sec/android/app/wlantest/WlanTest;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/ScrollView;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/sec/android/app/wlantest/WlanTest;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/wlantest/WlanTest;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/app/wlantest/WlanTest;->convertSubCmd(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/wlantest/WlanTest;)Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->mCommandHandler:Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/sec/android/app/wlantest/WlanTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500()Lcom/sec/android/app/wlantest/WlanTest$FWMode;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/sec/android/app/wlantest/WlanTest;->mFirmware:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/wlantest/WlanTest$FWMode;)Lcom/sec/android/app/wlantest/WlanTest$FWMode;
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    sput-object p0, Lcom/sec/android/app/wlantest/WlanTest;->mFirmware:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/android/app/wlantest/WlanTest;)Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->mDriverHandler:Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/sec/android/app/wlantest/WlanTest;->checkDriverResult(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static checkDriverResult(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .parameter "expectedResult"
    .parameter "timeout"

    .prologue
    .line 1067
    mul-int/lit8 v2, p1, 0xa

    .line 1068
    .local v2, tryCount:I
    const-string v0, "NG"

    .local v0, loadResult:Ljava/lang/String;
    move v3, v2

    .line 1069
    .end local v2           #tryCount:I
    .local v3, tryCount:I
    :goto_5
    add-int/lit8 v2, v3, -0x1

    .end local v3           #tryCount:I
    .restart local v2       #tryCount:I
    if-lez v3, :cond_2f

    .line 1070
    const-string v4, "wlan.driver.status"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1072
    .local v1, prop:Ljava/lang/String;
    const-string v4, "WlanTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wlan.driver.status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1074
    const-string v0, "OK"

    .line 1084
    .end local v1           #prop:Ljava/lang/String;
    :cond_2f
    :goto_2f
    return-object v0

    .line 1076
    .restart local v1       #prop:Ljava/lang/String;
    :cond_30
    const-string v4, "failed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    const-string v4, "timeout"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    if-nez v2, :cond_45

    .line 1077
    :cond_42
    const-string v0, "NG"

    .line 1078
    goto :goto_2f

    .line 1081
    :cond_45
    const-wide/16 v4, 0x64

    :try_start_47
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4a} :catch_4c

    :goto_4a
    move v3, v2

    .line 1082
    .end local v2           #tryCount:I
    .restart local v3       #tryCount:I
    goto :goto_5

    .line 1081
    .end local v3           #tryCount:I
    .restart local v2       #tryCount:I
    :catch_4c
    move-exception v4

    goto :goto_4a
.end method

.method private convertSubCmd(Ljava/lang/String;)I
    .registers 4
    .parameter "subCmd"

    .prologue
    const/16 v1, 0x10

    .line 193
    if-nez p1, :cond_6

    .line 194
    const/4 v1, -0x1

    .line 237
    :goto_5
    :sswitch_5
    return v1

    .line 196
    :cond_6
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 197
    .local v0, cmd:I
    sparse-switch v0, :sswitch_data_40

    .line 237
    const/4 v1, -0x2

    goto :goto_5

    .line 199
    :sswitch_f
    const/4 v1, 0x0

    goto :goto_5

    .line 201
    :sswitch_11
    const/4 v1, 0x1

    goto :goto_5

    .line 203
    :sswitch_13
    const/4 v1, 0x2

    goto :goto_5

    .line 205
    :sswitch_15
    const/4 v1, 0x5

    goto :goto_5

    .line 207
    :sswitch_17
    const/4 v1, 0x6

    goto :goto_5

    .line 209
    :sswitch_19
    const/4 v1, 0x7

    goto :goto_5

    .line 211
    :sswitch_1b
    const/16 v1, 0x8

    goto :goto_5

    .line 213
    :sswitch_1e
    const/16 v1, 0x9

    goto :goto_5

    .line 215
    :sswitch_21
    const/16 v1, 0xa

    goto :goto_5

    .line 217
    :sswitch_24
    const/16 v1, 0xb

    goto :goto_5

    .line 219
    :sswitch_27
    const/16 v1, 0xc

    goto :goto_5

    .line 221
    :sswitch_2a
    const/16 v1, 0xd

    goto :goto_5

    .line 223
    :sswitch_2d
    const/16 v1, 0xe

    goto :goto_5

    .line 225
    :sswitch_30
    const/16 v1, 0xf

    goto :goto_5

    .line 229
    :sswitch_33
    const/16 v1, 0x11

    goto :goto_5

    .line 231
    :sswitch_36
    const/16 v1, 0x12

    goto :goto_5

    .line 233
    :sswitch_39
    const/16 v1, 0x13

    goto :goto_5

    .line 235
    :sswitch_3c
    const/16 v1, 0x14

    goto :goto_5

    .line 197
    nop

    :sswitch_data_40
    .sparse-switch
        0x0 -> :sswitch_17
        0x1 -> :sswitch_13
        0x2 -> :sswitch_15
        0x3 -> :sswitch_19
        0x4 -> :sswitch_1e
        0x5 -> :sswitch_1b
        0x6 -> :sswitch_5
        0x7 -> :sswitch_33
        0x100 -> :sswitch_11
        0x101 -> :sswitch_f
        0x102 -> :sswitch_39
        0x103 -> :sswitch_36
        0x200 -> :sswitch_24
        0x201 -> :sswitch_21
        0x300 -> :sswitch_2a
        0x301 -> :sswitch_27
        0x400 -> :sswitch_2d
        0x401 -> :sswitch_30
        0x600 -> :sswitch_3c
    .end sparse-switch
.end method

.method private declared-synchronized disableKeyguard()V
    .registers 3

    .prologue
    .line 983
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_14

    .line 984
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "WlanTest"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 985
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 987
    :cond_14
    monitor-exit p0

    return-void

    .line 983
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized enableKeyguard()V
    .registers 2

    .prologue
    .line 976
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_d

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 978
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 980
    :cond_d
    monitor-exit p0

    return-void

    .line 976
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private lcdOff()V
    .registers 7

    .prologue
    .line 1112
    iget-boolean v3, p0, Lcom/sec/android/app/wlantest/WlanTest;->mIsScreenOn:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    .line 1113
    const/4 v1, 0x0

    .line 1115
    .local v1, out:Ljava/io/FileWriter;
    :try_start_6
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/sys/devices/platform/lcdc_s6d04m0_qvga.0/lcd_power_clock"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_3b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_24

    .line 1116
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    const/16 v3, 0x30

    :try_start_f
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 1117
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/wlantest/WlanTest;->mIsScreenOn:Z
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_4b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_4e

    .line 1122
    if-eqz v2, :cond_1a

    .line 1124
    :try_start_17
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 1131
    .end local v2           #out:Ljava/io/FileWriter;
    :cond_1a
    :goto_1a
    return-void

    .line 1125
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_1b
    move-exception v0

    .line 1126
    .local v0, e:Ljava/io/IOException;
    const-string v3, "WlanTest"

    const-string v4, "File Close error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 1118
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    :catch_24
    move-exception v0

    .line 1119
    .restart local v0       #e:Ljava/io/IOException;
    :goto_25
    :try_start_25
    const-string v3, "WlanTest"

    const-string v4, "File open error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_3b

    .line 1122
    if-eqz v1, :cond_1a

    .line 1124
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_1a

    .line 1125
    :catch_32
    move-exception v0

    .line 1126
    const-string v3, "WlanTest"

    const-string v4, "File Close error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 1122
    .end local v0           #e:Ljava/io/IOException;
    :catchall_3b
    move-exception v3

    :goto_3c
    if-eqz v1, :cond_41

    .line 1124
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 1127
    :cond_41
    :goto_41
    throw v3

    .line 1125
    :catch_42
    move-exception v0

    .line 1126
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "WlanTest"

    const-string v5, "File Close error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 1122
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catchall_4b
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_3c

    .line 1118
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_4e
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_25
.end method

.method private lcdOn()V
    .registers 7

    .prologue
    .line 1089
    iget-boolean v3, p0, Lcom/sec/android/app/wlantest/WlanTest;->mIsScreenOn:Z

    if-nez v3, :cond_19

    .line 1090
    const/4 v1, 0x0

    .line 1092
    .local v1, out:Ljava/io/FileWriter;
    :try_start_5
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/sys/devices/platform/lcdc_s6d04m0_qvga.0/lcd_power_clock"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_23

    .line 1093
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    const/16 v3, 0x31

    :try_start_e
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 1094
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/wlantest/WlanTest;->mIsScreenOn:Z
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_4a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_4d

    .line 1099
    if-eqz v2, :cond_19

    .line 1101
    :try_start_16
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 1108
    .end local v2           #out:Ljava/io/FileWriter;
    :cond_19
    :goto_19
    return-void

    .line 1102
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_1a
    move-exception v0

    .line 1103
    .local v0, e:Ljava/io/IOException;
    const-string v3, "WlanTest"

    const-string v4, "File Close error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 1095
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    :catch_23
    move-exception v0

    .line 1096
    .restart local v0       #e:Ljava/io/IOException;
    :goto_24
    :try_start_24
    const-string v3, "WlanTest"

    const-string v4, "File open error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_3a

    .line 1099
    if-eqz v1, :cond_19

    .line 1101
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_19

    .line 1102
    :catch_31
    move-exception v0

    .line 1103
    const-string v3, "WlanTest"

    const-string v4, "File Close error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 1099
    .end local v0           #e:Ljava/io/IOException;
    :catchall_3a
    move-exception v3

    :goto_3b
    if-eqz v1, :cond_40

    .line 1101
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 1104
    :cond_40
    :goto_40
    throw v3

    .line 1102
    :catch_41
    move-exception v0

    .line 1103
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "WlanTest"

    const-string v5, "File Close error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 1099
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catchall_4a
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_3b

    .line 1095
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_4d
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_24
.end method


# virtual methods
.method public dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "cmdId"
    .parameter "data"

    .prologue
    const/16 v12, 0x101

    const/4 v11, 0x0

    .line 992
    const-string v8, "WlanTest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enter dutCommand!!! cmdId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const-string v8, "WlanTest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enter dutCommand!!! data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    sget-object v8, Lcom/sec/android/app/wlantest/WlanTest$DutId;->JN:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-ne p1, v8, :cond_62

    .line 996
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\nTrying to Join ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 997
    .local v4, joinMsg:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/sec/android/app/wlantest/WlanTest;->mIsScreenOn:Z

    if-eqz v8, :cond_112

    .line 998
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 999
    .local v5, message:Landroid/os/Message;
    iput v12, v5, Landroid/os/Message;->what:I

    .line 1000
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1001
    sget-object v8, Lcom/sec/android/app/wlantest/WlanTest;->myGUIUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1007
    .end local v4           #joinMsg:Ljava/lang/String;
    .end local v5           #message:Landroid/os/Message;
    :cond_62
    :goto_62
    const-string v1, ""

    .line 1009
    .local v1, dutResult:Ljava/lang/String;
    :try_start_64
    iget-object v8, p0, Lcom/sec/android/app/wlantest/WlanTest;->mWLService:Landroid/os/IBinder;

    if-eqz v8, :cond_129

    .line 1010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1011
    .local v2, dutcmd:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 1012
    .local v7, reply:Landroid/os/Parcel;
    const-string v8, "android.wifi.IWlanDutService"

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p1}, Lcom/sec/android/app/wlantest/WlanTest$DutId;->ordinal()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1014
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1015
    iget-object v8, p0, Lcom/sec/android/app/wlantest/WlanTest;->mWLService:Landroid/os/IBinder;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v8, v9, v2, v7, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1016
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1017
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1018
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_90} :catch_134

    .line 1028
    .end local v2           #dutcmd:Landroid/os/Parcel;
    .end local v7           #reply:Landroid/os/Parcel;
    :goto_90
    const-string v8, "WlanTest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "After Execute DUT Command!!! result : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1031
    .local v6, parsedstatus:Ljava/lang/String;
    const-string v8, "NG"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_154

    .line 1032
    sget-object v8, Lcom/sec/android/app/wlantest/WlanTest$DutId;->JN:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-ne p1, v8, :cond_140

    .line 1033
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - Fail to join ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1051
    :goto_e4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/wlantest/WlanTest;->mBufferedResultMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/wlantest/WlanTest;->mBufferedResultMessage:Ljava/lang/String;

    .line 1053
    iget-boolean v8, p0, Lcom/sec/android/app/wlantest/WlanTest;->mIsScreenOn:Z

    if-eqz v8, :cond_111

    .line 1054
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1055
    .restart local v5       #message:Landroid/os/Message;
    iput v12, v5, Landroid/os/Message;->what:I

    .line 1056
    iget-object v8, p0, Lcom/sec/android/app/wlantest/WlanTest;->mBufferedResultMessage:Ljava/lang/String;

    iput-object v8, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1057
    sget-object v8, Lcom/sec/android/app/wlantest/WlanTest;->myGUIUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1058
    const-string v8, ""

    iput-object v8, p0, Lcom/sec/android/app/wlantest/WlanTest;->mBufferedResultMessage:Ljava/lang/String;

    .line 1061
    .end local v5           #message:Landroid/os/Message;
    :cond_111
    return-object v1

    .line 1003
    .end local v1           #dutResult:Ljava/lang/String;
    .end local v6           #parsedstatus:Ljava/lang/String;
    .restart local v4       #joinMsg:Ljava/lang/String;
    :cond_112
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/app/wlantest/WlanTest;->mBufferedResultMessage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/wlantest/WlanTest;->mBufferedResultMessage:Ljava/lang/String;

    goto/16 :goto_62

    .line 1020
    .end local v4           #joinMsg:Ljava/lang/String;
    .restart local v1       #dutResult:Ljava/lang/String;
    :cond_129
    :try_start_129
    const-string v8, "WlanTest"

    const-string v9, "Can not get WLService"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v1, "NG"
    :try_end_132
    .catch Landroid/os/RemoteException; {:try_start_129 .. :try_end_132} :catch_134

    goto/16 :goto_90

    .line 1023
    :catch_134
    move-exception v3

    .line 1024
    .local v3, ex:Landroid/os/RemoteException;
    const-string v8, "WlanTest"

    const-string v9, "Fail to operate WLService"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const-string v1, "NG"

    goto/16 :goto_90

    .line 1035
    .end local v3           #ex:Landroid/os/RemoteException;
    .restart local v6       #parsedstatus:Ljava/lang/String;
    :cond_140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Command failed\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_e4

    .line 1037
    :cond_154
    sget-object v8, Lcom/sec/android/app/wlantest/WlanTest$DutId;->RG:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-eq p1, v8, :cond_15c

    sget-object v8, Lcom/sec/android/app/wlantest/WlanTest$DutId;->RE:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-ne p1, v8, :cond_1ae

    .line 1038
    :cond_15c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " frame count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1039
    const-string v0, "000000"

    .line 1040
    .local v0, countBase:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    rsub-int/lit8 v9, v9, 0x6

    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1041
    const-string v8, "WlanTest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "frame count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    .end local v0           #countBase:Ljava/lang/String;
    :cond_1ae
    sget-object v8, Lcom/sec/android/app/wlantest/WlanTest$DutId;->JN:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    if-ne p1, v8, :cond_1d1

    .line 1045
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - join to ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] successfully\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_e4

    .line 1047
    :cond_1d1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Command completed\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_e4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 34
    .parameter "savedInstanceState"

    .prologue
    .line 286
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 288
    const-string v2, "WlanTest"

    const-string v3, "on create"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const v2, 0x7f020001

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->setContentView(I)V

    .line 291
    const-string v2, "WlanTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Mode : "

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/wlantest/WlanTest;->getIntent()Landroid/content/Intent;

    move-result-object v30

    const-string v31, "MODE"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->mIntentFilter:Landroid/content/IntentFilter;

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.app.wlantest.WIFI_TEST_INDICATION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const v2, 0x7f050006

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/sec/android/app/wlantest/WlanTest;->mTextView:Landroid/widget/TextView;

    .line 297
    const v2, 0x7f050005

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    sput-object v2, Lcom/sec/android/app/wlantest/WlanTest;->mScrollView:Landroid/widget/ScrollView;

    .line 299
    const-string v2, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/PowerManager;

    .line 300
    .local v26, powerManager:Landroid/os/PowerManager;
    const v2, 0x2000000a

    const-string v3, "WlanTest"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/wlantest/WlanTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 301
    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 303
    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NotSet:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    sput-object v2, Lcom/sec/android/app/wlantest/WlanTest;->mFirmware:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    .line 306
    const-string v2, "keyguard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 308
    const-string v2, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 310
    new-instance v19, Landroid/os/HandlerThread;

    const-string v2, "Driver Handler Thread"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 311
    .local v19, driverThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v19 .. v19}, Landroid/os/HandlerThread;->start()V

    .line 312
    new-instance v2, Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;

    invoke-virtual/range {v19 .. v19}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;-><init>(Lcom/sec/android/app/wlantest/WlanTest;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->mDriverHandler:Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;

    .line 314
    new-instance v18, Landroid/os/HandlerThread;

    const-string v2, "Command Handler Thread"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 315
    .local v18, commandThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->start()V

    .line 316
    new-instance v2, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;-><init>(Lcom/sec/android/app/wlantest/WlanTest;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->mCommandHandler:Lcom/sec/android/app/wlantest/WlanTest$CommandHandler;

    .line 318
    const-string v2, "WlanTest"

    const-string v3, "In onCreate...Registering main Receiver[mReceiver]!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/wlantest/WlanTest;->mIntentFilter:Landroid/content/IntentFilter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v23

    .line 322
    .local v23, isNormaWifiOn:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v22

    .line 323
    .local v22, isApDriverLoaded:Z
    const/16 v24, 0x1

    .line 324
    .local v24, isUnloadedSuccessfully:Z
    const-string v2, "WlanTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "...isNormalDriverLoaded : "

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v2, "WlanTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "...isApDriverLoaded : "

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_16d

    .line 328
    const-string v2, "WlanTest"

    const-string v3, "...WiFi Driver already loaded!!!Removing the Drivers!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v25, Landroid/os/Message;

    invoke-direct/range {v25 .. v25}, Landroid/os/Message;-><init>()V

    .line 331
    .local v25, message:Landroid/os/Message;
    const/16 v2, 0x101

    move-object/from16 v0, v25

    iput v2, v0, Landroid/os/Message;->what:I

    .line 332
    const-string v2, "\nUnloading Normal Driver and Loading Mfg Driver\n"

    move-object/from16 v0, v25

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 333
    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest;->myGUIUpdateHandler:Landroid/os/Handler;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 338
    const-string v2, "unloaded"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->checkDriverResult(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    if-ne v2, v3, :cond_596

    const/16 v24, 0x1

    .line 344
    .end local v25           #message:Landroid/os/Message;
    :cond_16d
    :goto_16d
    const-string v2, "init.svc.wlandutservice"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "running"

    if-eq v2, v3, :cond_59a

    .line 345
    const-string v2, "WlanTest"

    const-string v3, "...Start wlandutservice !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v2, "wlandutservice"

    invoke-static {v2}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 351
    :goto_183
    const/16 v28, 0x32

    .local v28, tryCount:I
    move/from16 v29, v28

    .line 352
    .end local v28           #tryCount:I
    .local v29, tryCount:I
    :goto_187
    add-int/lit8 v28, v29, -0x1

    .end local v29           #tryCount:I
    .restart local v28       #tryCount:I
    if-lez v29, :cond_1ce

    .line 353
    const-string v2, "init.svc.wlandutservice"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 354
    .local v27, prop:Ljava/lang/String;
    const-string v2, "WlanTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "init.svc.wlandutservice : "

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v2, "running"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5aa

    .line 357
    const-string v2, "WlanDutService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->mWLService:Landroid/os/IBinder;

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->mWLService:Landroid/os/IBinder;

    if-eqz v2, :cond_5a3

    .line 359
    const-string v2, "WlanTest"

    const-string v3, "get WlanDutService successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v27           #prop:Ljava/lang/String;
    :cond_1ce
    new-instance v21, Landroid/content/Intent;

    const-string v2, "android.intent.action.WIFI_DRIVER_INDICATION"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v21, intent:Landroid/content/Intent;
    const-string v2, "STATUS"

    const-string v3, "ready"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/wlantest/WlanTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 381
    if-eqz v24, :cond_215

    .line 383
    :try_start_1e9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/wlantest/WlanTest;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "MODE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "manual"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_215

    .line 384
    new-instance v25, Landroid/os/Message;

    invoke-direct/range {v25 .. v25}, Landroid/os/Message;-><init>()V

    .line 385
    .restart local v25       #message:Landroid/os/Message;
    const/16 v2, 0x102

    move-object/from16 v0, v25

    iput v2, v0, Landroid/os/Message;->what:I

    .line 386
    const-string v2, "test"

    move-object/from16 v0, v25

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->mDriverHandler:Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_215
    .catch Ljava/lang/NullPointerException; {:try_start_1e9 .. :try_end_215} :catch_5e9

    .line 399
    .end local v25           #message:Landroid/os/Message;
    :cond_215
    :goto_215
    const-string v2, "Driver loading started\nPlease wait till status is shown"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 401
    const-string v2, "WlanTest"

    const-string v3, "In onCreate...Registering ItemSelectedListeners!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const v2, 0x7f050004

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->linStatus:Landroid/widget/LinearLayout;

    .line 404
    const v2, 0x7f050007

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->absTxTest:Landroid/widget/RelativeLayout;

    .line 405
    const v2, 0x7f05001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->absRxTest:Landroid/widget/RelativeLayout;

    .line 407
    const v2, 0x7f05001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->channelRx:Landroid/widget/Spinner;

    .line 408
    const/high16 v2, 0x7f03

    const v3, 0x1090008

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v11

    .line 411
    .local v11, adapter_channelRx:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v11, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 414
    const v2, 0x7f030001

    const v3, 0x1090008

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v12

    .line 417
    .local v12, adapter_channelRx5G:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v12, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/wlantest/WlanTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v16

    .line 423
    .local v16, channelListRx5G:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->channelRx:Landroid/widget/Spinner;

    new-instance v3, Lcom/sec/android/app/wlantest/WlanTest$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/wlantest/WlanTest$3;-><init>(Lcom/sec/android/app/wlantest/WlanTest;[I)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 448
    const v2, 0x7f05001d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->bandRx:Landroid/widget/Spinner;

    .line 449
    const v2, 0x7f030008

    const v3, 0x1090008

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v9

    .line 452
    .local v9, adapter_bandRx:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v9, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->bandRx:Landroid/widget/Spinner;

    invoke-virtual {v2, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->bandRx:Landroid/widget/Spinner;

    new-instance v3, Lcom/sec/android/app/wlantest/WlanTest$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11, v12}, Lcom/sec/android/app/wlantest/WlanTest$4;-><init>(Lcom/sec/android/app/wlantest/WlanTest;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 479
    const v2, 0x7f050008

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->packetTx:Landroid/widget/Spinner;

    .line 480
    const v2, 0x7f030003

    const v3, 0x1090008

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v13

    .line 483
    .local v13, adapter_packetTx:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v13, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->packetTx:Landroid/widget/Spinner;

    invoke-virtual {v2, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->packetTx:Landroid/widget/Spinner;

    new-instance v3, Lcom/sec/android/app/wlantest/WlanTest$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/wlantest/WlanTest$5;-><init>(Lcom/sec/android/app/wlantest/WlanTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 503
    const v2, 0x7f05000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->channelTx:Landroid/widget/Spinner;

    .line 504
    const/high16 v2, 0x7f03

    const v3, 0x1090008

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v4

    .line 507
    .local v4, adapter_channelTx:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v4, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 510
    const v2, 0x7f030001

    const v3, 0x1090008

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v6

    .line 513
    .local v6, adapter_channelTx5G:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v6, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/wlantest/WlanTest;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v17

    .line 524
    .local v17, channelListTx5G:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->channelTx:Landroid/widget/Spinner;

    new-instance v3, Lcom/sec/android/app/wlantest/WlanTest$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/wlantest/WlanTest$6;-><init>(Lcom/sec/android/app/wlantest/WlanTest;[I)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 550
    const v2, 0x7f05000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->txRate:Landroid/widget/Spinner;

    .line 551
    const v2, 0x7f030004

    const v3, 0x1090008

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v5

    .line 554
    .local v5, adapter_txRate:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v5, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 558
    const v2, 0x7f030005

    const v3, 0x1090008

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v7

    .line 561
    .local v7, adapter_txRate5G:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v7, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->txRate:Landroid/widget/Spinner;

    new-instance v3, Lcom/sec/android/app/wlantest/WlanTest$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/wlantest/WlanTest$7;-><init>(Lcom/sec/android/app/wlantest/WlanTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 590
    const v2, 0x7f050010

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->power:Landroid/widget/Spinner;

    .line 591
    const v2, 0x7f030006

    const v3, 0x1090008

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v14

    .line 594
    .local v14, adapter_power:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v14, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->power:Landroid/widget/Spinner;

    invoke-virtual {v2, v14}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->power:Landroid/widget/Spinner;

    new-instance v3, Lcom/sec/android/app/wlantest/WlanTest$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/wlantest/WlanTest$8;-><init>(Lcom/sec/android/app/wlantest/WlanTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 613
    const v2, 0x7f05000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->bandTx:Landroid/widget/Spinner;

    .line 614
    const v2, 0x7f030008

    const v3, 0x1090008

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v8

    .line 617
    .local v8, adapter_band:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v8, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->bandTx:Landroid/widget/Spinner;

    invoke-virtual {v2, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/wlantest/WlanTest;->bandTx:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    new-instance v2, Lcom/sec/android/app/wlantest/WlanTest$9;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/wlantest/WlanTest$9;-><init>(Lcom/sec/android/app/wlantest/WlanTest;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 648
    const v2, 0x7f050014

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->bandwidthTx:Landroid/widget/Spinner;

    .line 649
    const v2, 0x7f030009

    const v3, 0x1090008

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v10

    .line 652
    .local v10, adapter_bandwidthTx:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v10, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->bandwidthTx:Landroid/widget/Spinner;

    invoke-virtual {v2, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->bandwidthTx:Landroid/widget/Spinner;

    new-instance v3, Lcom/sec/android/app/wlantest/WlanTest$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/wlantest/WlanTest$10;-><init>(Lcom/sec/android/app/wlantest/WlanTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 673
    const v2, 0x7f050012

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->preamble:Landroid/widget/Spinner;

    .line 674
    const v2, 0x7f030007

    const v3, 0x1090008

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v15

    .line 677
    .local v15, adapter_preamble:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v15, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->preamble:Landroid/widget/Spinner;

    invoke-virtual {v2, v15}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->preamble:Landroid/widget/Spinner;

    new-instance v3, Lcom/sec/android/app/wlantest/WlanTest$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/wlantest/WlanTest$11;-><init>(Lcom/sec/android/app/wlantest/WlanTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 697
    const v2, 0x7f050018

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->burst:Landroid/widget/EditText;

    .line 698
    const v2, 0x7f050016

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->payload:Landroid/widget/EditText;

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->burst:Landroid/widget/EditText;

    const-string v3, "100"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->payload:Landroid/widget/EditText;

    const-string v3, "1024"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 703
    const-string v2, "WlanTest"

    const-string v3, "In onCreate...Registering ClickListeners!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const v2, 0x7f050019

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->btStartTx:Landroid/widget/Button;

    .line 706
    const v2, 0x7f05001a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->btStopTx:Landroid/widget/Button;

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->btStartTx:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->btStopTx:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->btStartTx:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/app/wlantest/WlanTest$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/wlantest/WlanTest$12;-><init>(Lcom/sec/android/app/wlantest/WlanTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->btStopTx:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/app/wlantest/WlanTest$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/wlantest/WlanTest$13;-><init>(Lcom/sec/android/app/wlantest/WlanTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 787
    const v2, 0x7f050026

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->btStartRx:Landroid/widget/Button;

    .line 788
    const v2, 0x7f050027

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->btStopRx:Landroid/widget/Button;

    .line 789
    const v2, 0x7f050028

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->btClearRx:Landroid/widget/Button;

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->btStartRx:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->btClearRx:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->btStopRx:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 794
    const v2, 0x7f050021

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->received:Landroid/widget/EditText;

    .line 795
    const v2, 0x7f050023

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->error:Landroid/widget/EditText;

    .line 796
    const v2, 0x7f050025

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/wlantest/WlanTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->per:Landroid/widget/EditText;

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->btStartRx:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/app/wlantest/WlanTest$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/wlantest/WlanTest$14;-><init>(Lcom/sec/android/app/wlantest/WlanTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->btStopRx:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/app/wlantest/WlanTest$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/wlantest/WlanTest$15;-><init>(Lcom/sec/android/app/wlantest/WlanTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->btClearRx:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/app/wlantest/WlanTest$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/wlantest/WlanTest$16;-><init>(Lcom/sec/android/app/wlantest/WlanTest;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 879
    return-void

    .line 338
    .end local v4           #adapter_channelTx:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v5           #adapter_txRate:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v6           #adapter_channelTx5G:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v7           #adapter_txRate5G:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v8           #adapter_band:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v9           #adapter_bandRx:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v10           #adapter_bandwidthTx:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v11           #adapter_channelRx:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v12           #adapter_channelRx5G:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v13           #adapter_packetTx:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v14           #adapter_power:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v15           #adapter_preamble:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v16           #channelListRx5G:[I
    .end local v17           #channelListTx5G:[I
    .end local v21           #intent:Landroid/content/Intent;
    .end local v28           #tryCount:I
    .restart local v25       #message:Landroid/os/Message;
    :cond_596
    const/16 v24, 0x0

    goto/16 :goto_16d

    .line 348
    .end local v25           #message:Landroid/os/Message;
    :cond_59a
    const-string v2, "WlanTest"

    const-string v3, "...wlservice is already started!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_183

    .line 362
    .restart local v27       #prop:Ljava/lang/String;
    .restart local v28       #tryCount:I
    :cond_5a3
    const-string v2, "WlanTest"

    const-string v3, "fail to get WlanDutService but we will try more!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_5aa
    if-nez v28, :cond_5c4

    .line 367
    new-instance v25, Landroid/os/Message;

    invoke-direct/range {v25 .. v25}, Landroid/os/Message;-><init>()V

    .line 368
    .restart local v25       #message:Landroid/os/Message;
    const/16 v2, 0x101

    move-object/from16 v0, v25

    iput v2, v0, Landroid/os/Message;->what:I

    .line 369
    const-string v2, "\nFail to Launch wlandutservice\nPlease retry!\n"

    move-object/from16 v0, v25

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 370
    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest;->myGUIUpdateHandler:Landroid/os/Handler;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 373
    .end local v25           #message:Landroid/os/Message;
    :cond_5c4
    const-wide/16 v2, 0x64

    :try_start_5c6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5c9
    .catch Ljava/lang/InterruptedException; {:try_start_5c6 .. :try_end_5c9} :catch_60d

    .line 374
    :goto_5c9
    const-string v2, "WlanTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "tryCount : "

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v29, v28

    .line 375
    .end local v28           #tryCount:I
    .restart local v29       #tryCount:I
    goto/16 :goto_187

    .line 390
    .end local v27           #prop:Ljava/lang/String;
    .end local v29           #tryCount:I
    .restart local v21       #intent:Landroid/content/Intent;
    .restart local v28       #tryCount:I
    :catch_5e9
    move-exception v20

    .line 391
    .local v20, e:Ljava/lang/NullPointerException;
    const-string v2, "WlanTest"

    const-string v3, "Ignore NullPointerException for check Launcher"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v25, Landroid/os/Message;

    invoke-direct/range {v25 .. v25}, Landroid/os/Message;-><init>()V

    .line 393
    .restart local v25       #message:Landroid/os/Message;
    const/16 v2, 0x102

    move-object/from16 v0, v25

    iput v2, v0, Landroid/os/Message;->what:I

    .line 394
    const-string v2, "test"

    move-object/from16 v0, v25

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/wlantest/WlanTest;->mDriverHandler:Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/sec/android/app/wlantest/WlanTest$DriverHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_215

    .line 373
    .end local v20           #e:Ljava/lang/NullPointerException;
    .end local v21           #intent:Landroid/content/Intent;
    .end local v25           #message:Landroid/os/Message;
    .restart local v27       #prop:Ljava/lang/String;
    :catch_60d
    move-exception v2

    goto :goto_5c9
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 882
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 883
    const-string v0, "Tx Test"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 884
    const-string v0, "Rx Test"

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 885
    const/4 v0, 0x2

    const-string v1, "Status"

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 886
    return v3
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 938
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 940
    sget-object v1, Lcom/sec/android/app/wlantest/WlanTest;->mFirmware:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$FWMode;->NotSet:Lcom/sec/android/app/wlantest/WlanTest$FWMode;

    if-eq v1, v2, :cond_1e

    .line 941
    const-string v1, "DO NOT RESTART WlanTest!\nPlease wait till status is shown"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 942
    const-string v1, "mfgloader:-u"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 943
    const-string v1, "unloaded"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/sec/android/app/wlantest/WlanTest;->checkDriverResult(Ljava/lang/String;I)Ljava/lang/String;

    .line 946
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DRIVER_INDICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 947
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "STATUS"

    const-string v2, "finish"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    invoke-virtual {p0, v0}, Lcom/sec/android/app/wlantest/WlanTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 949
    const-string v1, "WlanTest"

    const-string v2, "onDestroy: after sendBroadcast for DRIVER status"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/wlantest/WlanTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 953
    sget-object v1, Lcom/sec/android/app/wlantest/WlanTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 954
    sget-object v1, Lcom/sec/android/app/wlantest/WlanTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 956
    :cond_48
    const-string v1, "Ok! You can use the WlanTest again from now on"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 957
    const-string v1, "WlanTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on Destroy ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/wlantest/WlanTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 891
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_66

    .line 918
    :goto_9
    const/4 v0, 0x1

    return v0

    .line 893
    :pswitch_b
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "menu 0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 894
    const-string v0, "WlanTest"

    const-string v1, "onOptionsItemSelected 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->absTxTest:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->linStatus:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->absRxTest:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_9

    .line 903
    :pswitch_29
    const-string v0, "WlanTest"

    const-string v1, "onOptionsItemSelected 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "menu 1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->absTxTest:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 906
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->linStatus:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->absRxTest:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_9

    .line 911
    :pswitch_47
    const-string v0, "WlanTest"

    const-string v1, "onOptionsItemSelected 2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "menu 2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->absTxTest:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 914
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->linStatus:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest;->absRxTest:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_9

    .line 891
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_b
        :pswitch_29
        :pswitch_47
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 923
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 924
    const-string v0, "WlanTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on pause ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 963
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 965
    sget-object v0, Lcom/sec/android/app/wlantest/WlanTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_10

    .line 966
    sget-object v0, Lcom/sec/android/app/wlantest/WlanTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 969
    :cond_10
    const-string v0, "WlanTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on resume ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-direct {p0}, Lcom/sec/android/app/wlantest/WlanTest;->disableKeyguard()V

    .line 972
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 929
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 931
    invoke-direct {p0}, Lcom/sec/android/app/wlantest/WlanTest;->enableKeyguard()V

    .line 933
    const-string v0, "WlanTest"

    const-string v1, "on stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    return-void
.end method
