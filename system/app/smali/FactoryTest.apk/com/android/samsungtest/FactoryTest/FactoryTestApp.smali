.class public Lcom/android/samsungtest/FactoryTest/FactoryTestApp;
.super Landroid/app/Activity;
.source "FactoryTestApp.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;,
        Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;
    }
.end annotation


# static fields
.field private static pm:Landroid/os/PowerManager;

.field private static sDisplayInfoDialog:Landroid/app/AlertDialog;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private AFTER_BT_OFF_BT_ON_DELAY:J

.field private AFTER_BT_OFF_DURATION:J

.field private AFTER_BT_ON_DURATION:J

.field private final BATTERY_TEST_START:Ljava/lang/String;

.field private final BT_ON_AFTER_BT_DISCOVERABLE_TIME:I

.field private final FIRST_CHECK:I

.field private final FUNCTION_TEST_START:Ljava/lang/String;

.field private final GYRO_TEST_START:Ljava/lang/String;

.field private final LOOPBACK_TEST_START:Ljava/lang/String;

.field private final MAGNETIC_TEST_START:Ljava/lang/String;

.field private final MAX_BUFFER_SIZE:I

.field private final MP3_TEST_START:Ljava/lang/String;

.field private final NEVER_TIMEOUT:I

.field private final PACKETCALL_TEST_START:Ljava/lang/String;

.field private final SIMCARD_TEST_START:Ljava/lang/String;

.field private final SIMPLE_FUNCTION_TEST_START:Ljava/lang/String;

.field private final TOUCHKEY_TEST_START:Ljava/lang/String;

.field private final TSP_TEST_START:Ljava/lang/String;

.field private final USBPATH_TEST_START:Ljava/lang/String;

.field private audioManager:Landroid/media/AudioManager;

.field private bBtTestSTart:Z

.field private bIsBtStarting:Z

.field private btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field items:[Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverforSDcard:Landroid/content/BroadcastReceiver;

.field private mCallEarView:Landroid/view/View;

.field private mCheckHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrKey:I

.field private mCurrTime:J

.field mFTA:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;

.field mFactoryTestAppListView:Landroid/widget/ListView;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerBTOff:Landroid/os/Handler;

.field private mHandlerBTOn:Landroid/os/Handler;

.field private mHandlerDelay:Landroid/os/Handler;

.field mHandlerfactory:Landroid/os/Handler;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLoopBackTestResult:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mOldVolume:I

.field private mPrevKey:I

.field private mPrevTime:J

.field private mSPK:I

.field mSaveResult:[C

.field mTestName:Landroid/widget/TextView;

.field mTestPrograss:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private myProgressDialog:Landroid/app/ProgressDialog;

.field private result_bt_1:I

.field private str_auth_battery_locate:Ljava/lang/String;

.field testResult:[I

.field textColor:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 272
    const/4 v0, 0x0

    sput-object v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sDisplayInfoDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xe

    const/16 v5, 0xd

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 143
    const-string v0, "SIMPLE_FUNCTION_TEST_START"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->SIMPLE_FUNCTION_TEST_START:Ljava/lang/String;

    .line 144
    const-string v0, "LOOPBACK_TEST_START"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->LOOPBACK_TEST_START:Ljava/lang/String;

    .line 145
    const-string v0, "PACKETCALL_TEST_START"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->PACKETCALL_TEST_START:Ljava/lang/String;

    .line 146
    const-string v0, "TSP_TEST_START"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->TSP_TEST_START:Ljava/lang/String;

    .line 147
    const-string v0, "BATTERY_TEST_START"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->BATTERY_TEST_START:Ljava/lang/String;

    .line 148
    const-string v0, "MP3_TEST_START"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->MP3_TEST_START:Ljava/lang/String;

    .line 150
    const-string v0, "MAGNETIC_TEST_START"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->MAGNETIC_TEST_START:Ljava/lang/String;

    .line 151
    const-string v0, "USBPATH_TEST_START"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->USBPATH_TEST_START:Ljava/lang/String;

    .line 152
    const-string v0, "SIMCARD_TEST_START"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->SIMCARD_TEST_START:Ljava/lang/String;

    .line 154
    const-string v0, "TOUCHKEY_TEST_START"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->TOUCHKEY_TEST_START:Ljava/lang/String;

    .line 155
    const-string v0, "GYRO_TEST_START"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->GYRO_TEST_START:Ljava/lang/String;

    .line 156
    const-string v0, "FUNCTION_TEST_START"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->FUNCTION_TEST_START:Ljava/lang/String;

    .line 158
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Simple Test[21]"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Call[22]"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Ear[32]"

    aput-object v2, v0, v1

    const-string v1, "Ear Key[33]"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "BT[23]"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Speaker[25]"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Tsp Test[34]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Magnetic Sensor[38]"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "USB Path[39]"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Key Test[27]"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Gyroscope Test[19]"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Sensor Test[17]"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "HDMI Test[18]"

    aput-object v2, v0, v1

    const-string v1, "SDCARD Test[24]"

    aput-object v1, v0, v5

    const-string v1, "Function Test"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->items:[Ljava/lang/String;

    .line 175
    new-array v0, v6, [I

    fill-array-data v0, :array_106

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    .line 178
    new-array v0, v4, [I

    fill-array-data v0, :array_126

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    .line 241
    new-array v0, v5, [C

    fill-array-data v0, :array_130

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mSaveResult:[C

    .line 261
    iput v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mSPK:I

    .line 265
    const-wide/16 v0, 0x1b58

    iput-wide v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->AFTER_BT_ON_DURATION:J

    .line 266
    const-wide/16 v0, 0x1b58

    iput-wide v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->AFTER_BT_OFF_DURATION:J

    .line 267
    const/16 v0, 0x1b58

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->BT_ON_AFTER_BT_DISCOVERABLE_TIME:I

    .line 268
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mHandlerBTOn:Landroid/os/Handler;

    .line 269
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mHandlerBTOff:Landroid/os/Handler;

    .line 270
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mHandler:Landroid/os/Handler;

    .line 273
    iput-object v7, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->myProgressDialog:Landroid/app/ProgressDialog;

    .line 274
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mHandlerDelay:Landroid/os/Handler;

    .line 275
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->AFTER_BT_OFF_BT_ON_DELAY:J

    .line 276
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->MAX_BUFFER_SIZE:I

    .line 278
    iput v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->result_bt_1:I

    .line 280
    const-string v0, "sys/class/power_supply/battery/auth_battery"

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->str_auth_battery_locate:Ljava/lang/String;

    .line 289
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->NEVER_TIMEOUT:I

    .line 299
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mHandlerfactory:Landroid/os/Handler;

    .line 301
    iput-boolean v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bBtTestSTart:Z

    .line 302
    iput-boolean v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bIsBtStarting:Z

    .line 305
    const/16 v0, 0x650

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->FIRST_CHECK:I

    .line 306
    iput-object v7, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMountService:Landroid/os/storage/IMountService;

    .line 308
    new-instance v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$1;-><init>(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mCheckHandler:Landroid/os/Handler;

    .line 1977
    new-instance v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$6;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$6;-><init>(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1988
    new-instance v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$7;-><init>(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mBroadcastReceiverforSDcard:Landroid/content/BroadcastReceiver;

    .line 2063
    return-void

    .line 175
    nop

    :array_106
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 178
    :array_126
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0x0t 0x0t 0xfft 0xfft
    .end array-data

    .line 241
    :array_130
    .array-data 0x2
        0x15t 0x0t
        0x16t 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x17t 0x0t
        0x19t 0x0t
        0x22t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x1bt 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x18t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sdcardTest()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mCallEarView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->myProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;CC)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bIsBtStarting:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bBtTestSTart:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .registers 3

    .prologue
    .line 2029
    monitor-enter p0

    :try_start_1
    const-string v0, "FactoryTestApp"

    const-string v1, "getMountService ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMountService:Landroid/os/storage/IMountService;

    if-nez v0, :cond_1a

    .line 2031
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2032
    if-eqz v0, :cond_1e

    .line 2033
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMountService:Landroid/os/storage/IMountService;

    .line 2038
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMountService:Landroid/os/storage/IMountService;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_26

    monitor-exit p0

    return-object v0

    .line 2035
    :cond_1e
    :try_start_1e
    const-string v0, "FactoryTestApp"

    const-string v1, "Can\'t get mount service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    goto :goto_1a

    .line 2029
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private registerFilter()V
    .registers 3

    .prologue
    .line 1955
    const-string v0, "FactoryTestApp"

    const-string v1, "registerFilter() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1961
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1963
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1965
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1966
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1967
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1968
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mBroadcastReceiverforSDcard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1969
    return-void
.end method

.method private sdcardTest()V
    .registers 10

    .prologue
    const/16 v8, 0x18

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xd

    .line 550
    const-string v3, "FactoryTestApp"

    const-string v4, "sdcardTest()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v2, 0x0

    .line 552
    .local v2, isPass_Mount:Z
    const/4 v0, 0x1

    .line 555
    .local v0, Pass_FTA:Z
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->chekExtSDmounted()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 556
    const-string v3, "FactoryTestApp"

    const-string v4, "sdcardTest() - Mount === pass"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v2, 0x1

    .line 564
    :goto_1d
    if-eqz v2, :cond_7e

    .line 565
    const-string v3, "SDCard Test Pass"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 566
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aput v7, v3, v6

    .line 567
    const-string v3, "FactoryTestApp"

    const-string v4, "[[[SDCARDTEST]]]=PASS"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFTA:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->mSDCardHolder:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v5, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v5, v5, v6

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 569
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFTA:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;

    invoke-virtual {v3}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->notifyDataSetChanged()V

    .line 570
    const-string v3, "net.cdma.factory.SDCARD"

    const-string v4, "PASS"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const/16 v3, 0x50

    invoke-direct {p0, v8, v3}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    .line 585
    :cond_55
    :goto_55
    const/4 v1, 0x0

    .local v1, a:I
    :goto_56
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    array-length v3, v3

    if-ge v1, v3, :cond_62

    .line 586
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v3, v3, v1

    if-eq v3, v7, :cond_d9

    .line 587
    const/4 v0, 0x0

    .line 591
    :cond_62
    if-eqz v0, :cond_74

    .line 592
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFactoryTestAppListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 594
    :cond_74
    return-void

    .line 560
    .end local v1           #a:I
    :cond_75
    const-string v3, "FactoryTestApp"

    const-string v4, "sdcardTest() - Mount === NONE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v2, 0x0

    goto :goto_1d

    .line 573
    :cond_7e
    const-string v3, "SDCard Test Fail"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 574
    const-string v3, "FactoryTestApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testResult[SDCARD_INDEX] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v3, v3, v6

    if-nez v3, :cond_55

    .line 576
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v4, 0x2

    aput v4, v3, v6

    .line 577
    const-string v3, "FactoryTestApp"

    const-string v4, "[[[SDCARDTEST]]]=FAIL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFTA:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->mSDCardHolder:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;

    iget-object v3, v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$ViewHolder;->testName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v5, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v5, v5, v6

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 579
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFTA:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;

    invoke-virtual {v3}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->notifyDataSetChanged()V

    .line 580
    const-string v3, "net.cdma.factory.SDCARD"

    const-string v4, "FAIL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/16 v3, 0x46

    invoke-direct {p0, v8, v3}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_55

    .line 585
    .restart local v1       #a:I
    :cond_d9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_56
.end method

.method private sendTestResultToRil(CC)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 772
    const-string v0, "FactoryTestApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PassFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.FactoryTestStatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    const-string v1, "ITEM_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 775
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 777
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 778
    return-void
.end method

.method private turnOffAutobrightness()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1935
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1936
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 1937
    const/4 v2, 0x0

    .line 1940
    :try_start_e
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/lightsensor/switch_cmd/lightsensor_file_state"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_1a} :catch_28
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_3b

    .line 1941
    const/4 v2, 0x0

    const/16 v3, 0x30

    :try_start_1d
    aput-byte v3, v0, v2

    .line 1942
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_58
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_22} :catch_5e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_5b

    .line 1948
    if-eqz v1, :cond_27

    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_54

    .line 1951
    :cond_27
    :goto_27
    return-void

    .line 1943
    :catch_28
    move-exception v0

    move-object v1, v2

    .line 1944
    :goto_2a
    :try_start_2a
    const-string v2, "IntensityTest"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_58

    .line 1948
    if-eqz v1, :cond_27

    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_27

    :catch_39
    move-exception v0

    goto :goto_27

    .line 1945
    :catch_3b
    move-exception v0

    .line 1946
    :goto_3c
    :try_start_3c
    const-string v1, "IntensityTest"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_4d

    .line 1948
    if-eqz v2, :cond_27

    :try_start_47
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_27

    :catch_4b
    move-exception v0

    goto :goto_27

    :catchall_4d
    move-exception v0

    :goto_4e
    if-eqz v2, :cond_53

    :try_start_50
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_56

    :cond_53
    :goto_53
    throw v0

    :catch_54
    move-exception v0

    goto :goto_27

    :catch_56
    move-exception v1

    goto :goto_53

    :catchall_58
    move-exception v0

    move-object v2, v1

    goto :goto_4e

    .line 1945
    :catch_5b
    move-exception v0

    move-object v2, v1

    goto :goto_3c

    .line 1943
    :catch_5e
    move-exception v0

    goto :goto_2a
.end method

.method private unregisterFilter()V
    .registers 3

    .prologue
    .line 1972
    const-string v0, "FactoryTestApp"

    const-string v1, "unregisterFilter() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1974
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mBroadcastReceiverforSDcard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1975
    return-void
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 748
    iget v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 749
    iget-wide v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x9c4

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 750
    const/4 v0, 0x1

    .line 756
    :goto_24
    return v0

    .line 754
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mPrevKey:I

    .line 755
    iget-wide v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mPrevTime:J

    .line 756
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public IsBtStarting()Z
    .registers 2

    .prologue
    .line 1721
    iget-boolean v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bIsBtStarting:Z

    return v0
.end method

.method public bluetoothTestStart()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1725
    .line 1727
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1728
    iget-boolean v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bBtTestSTart:Z

    if-eqz v0, :cond_14

    .line 1730
    const-string v0, "Set BT Timer"

    const-string v1, "BT Test processing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :cond_13
    :goto_13
    return-void

    .line 1734
    :cond_14
    iput-boolean v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bBtTestSTart:Z

    .line 1735
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_22

    .line 1736
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Platform does not support Bluetooth"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1739
    :cond_22
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1740
    iput-boolean v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bIsBtStarting:Z

    .line 1742
    const-string v0, "Bluetooth\'state is changed to Off!!"

    const-string v3, "wait for seconds"

    invoke-static {p0, v0, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->myProgressDialog:Landroid/app/ProgressDialog;

    .line 1744
    const-string v0, "BT\'s visibility off"

    const-string v3, "BT\'s visibility is changed off"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v3, 0x15

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 1746
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1747
    iput-boolean v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bBtTestSTart:Z

    .line 1749
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mHandlerBTOff:Landroid/os/Handler;

    new-instance v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$2;

    invoke-direct {v3, p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$2;-><init>(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)V

    iget-wide v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->AFTER_BT_OFF_DURATION:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1777
    const-string v0, "BT Start"

    const-string v3, "So, BT is disabled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    const-string v0, "bluetooth_settings"

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1780
    const-string v3, "discoverable_end_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1781
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1782
    const-string v0, "Set BT Timer"

    const-string v3, "BT discoverable time off"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7b
    move v0, v1

    .line 1826
    :goto_7c
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    array-length v3, v3

    if-ge v0, v3, :cond_c3

    .line 1827
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v3, v3, v0

    if-eq v3, v2, :cond_c0

    .line 1832
    :goto_87
    if-eqz v1, :cond_13

    .line 1833
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFactoryTestAppListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    goto/16 :goto_13

    .line 1785
    :cond_9b
    const-string v0, "BT Start"

    const-string v3, "So, BT is enabled"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    iput-boolean v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bIsBtStarting:Z

    .line 1789
    const-string v0, "Bluetooth\'state is changed to On!"

    const-string v3, "Turining on the bluetooth!! Please wait..."

    invoke-static {p0, v0, v3, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->myProgressDialog:Landroid/app/ProgressDialog;

    .line 1790
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1792
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mHandlerBTOn:Landroid/os/Handler;

    new-instance v3, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;

    invoke-direct {v3, p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;-><init>(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)V

    iget-wide v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->AFTER_BT_ON_DURATION:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7b

    .line 1826
    :cond_c0
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    :cond_c3
    move v1, v2

    goto :goto_87
.end method

.method chekExtSDmounted()Z
    .registers 5

    .prologue
    .line 2043
    const-string v0, "mounted"

    .line 2045
    :try_start_2
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 2046
    const-string v1, "/mnt/sdcard/external_sd"

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_3e

    move-result-object v0

    .line 2052
    :goto_c
    const-string v1, "FactoryTestApp"

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

    .line 2054
    const-string v1, "unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "bad_removal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2056
    :cond_3c
    const/4 v0, 0x0

    .line 2058
    :goto_3d
    return v0

    .line 2048
    :catch_3e
    move-exception v0

    .line 2049
    const-string v0, "removed"

    goto :goto_c

    .line 2058
    :cond_42
    const/4 v0, 0x1

    goto :goto_3d
.end method

.method public loopbackTest(I)V
    .registers 5
    .parameter

    .prologue
    .line 1704
    const-string v0, "FactoryTestApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loopbackTest() - mLoopBackTestResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1707
    const-string v1, "LOOPBACK_TEST_START"

    const-string v2, "LOOPBACK_TEST_START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1708
    const-string v1, "LOOPBACK_TEST_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1709
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1710
    return-void
.end method

.method public loudSpkLoopbackTest(I)V
    .registers 5
    .parameter

    .prologue
    .line 1713
    const-string v0, "FactoryTestApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loudSpkLoopbackTest() - mLoopBackTestResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/LoudSpkLoopbackTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1715
    const-string v1, "LOOPBACK_TEST_START"

    const-string v2, "LOOPBACK_TEST_START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1716
    const-string v1, "LOOPBACK_TEST_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1717
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1718
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x46

    const/4 v6, 0x2

    const v4, 0x7f090035

    const/16 v5, 0x50

    const/4 v1, 0x1

    .line 1334
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1337
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[onActivityResult]]]=START"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const-string v0, "FactoryTestApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[[[onActivityResult]]]requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const-string v0, "FactoryTestApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[[[onActivityResult]]]resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const-string v0, "FactoryTestApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[[[onActivityResult]]]Intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    packed-switch p1, :pswitch_data_5aa

    .line 1670
    :cond_5e
    :goto_5e
    :pswitch_5e
    const/4 v0, 0x0

    :goto_5f
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5a7

    .line 1671
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_5a3

    .line 1672
    const/4 v0, 0x0

    .line 1676
    :goto_6b
    if-eqz v0, :cond_7d

    .line 1677
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFactoryTestAppListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 1679
    :cond_7d
    return-void

    .line 1344
    :pswitch_7e
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_af

    .line 1345
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1346
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[SIMPLEFUNCTIONTEST]]]=PASS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1348
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1349
    const-string v0, "net.cdma.factory.SF"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    const/16 v0, 0x15

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto :goto_5e

    .line 1352
    :cond_af
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    if-nez v0, :cond_5e

    .line 1353
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v2, 0x0

    aput v6, v0, v2

    .line 1354
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[SIMPLEFUNCTIONTEST]]]=FAIL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1356
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1357
    const-string v0, "net.cdma.factory.SF"

    const-string v2, "FAIL"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    const/16 v0, 0x15

    invoke-direct {p0, v0, v7}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1364
    :pswitch_e4
    if-nez p2, :cond_fe

    .line 1365
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v0, v0, v1

    if-nez v0, :cond_5e

    .line 1366
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aput v6, v0, v1

    .line 1367
    const/16 v0, 0x16

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    .line 1368
    const-string v0, "net.cdma.factory.CALL"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5e

    .line 1372
    :cond_fe
    const/16 v0, 0xd2

    if-eq p2, v0, :cond_112

    const/16 v0, 0xd3

    if-eq p2, v0, :cond_112

    const/16 v0, 0xd4

    if-eq p2, v0, :cond_112

    const/16 v0, 0xda

    if-eq p2, v0, :cond_112

    const/16 v0, 0xdb

    if-ne p2, v0, :cond_15b

    .line 1374
    :cond_112
    iput p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mLoopBackTestResult:I

    .line 1375
    iget v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mLoopBackTestResult:I

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->loudSpkLoopbackTest(I)V

    .line 1428
    :cond_119
    :goto_119
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1429
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v3, v3, v1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1430
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    const v2, 0x7f090037

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1431
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v3, v3, v6

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1432
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    const v2, 0x7f090039

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1433
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5e

    .line 1377
    :cond_15b
    const/16 v0, 0xd5

    if-eq p2, v0, :cond_16f

    const/16 v0, 0xd6

    if-eq p2, v0, :cond_16f

    const/16 v0, 0xd7

    if-eq p2, v0, :cond_16f

    const/16 v0, 0xdc

    if-eq p2, v0, :cond_16f

    const/16 v0, 0xdd

    if-ne p2, v0, :cond_177

    .line 1379
    :cond_16f
    iput p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mLoopBackTestResult:I

    .line 1380
    iget v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mLoopBackTestResult:I

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->loopbackTest(I)V

    goto :goto_119

    .line 1382
    :cond_177
    const/16 v0, 0x2c

    if-ne p2, v0, :cond_18c

    .line 1383
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aput v1, v0, v1

    .line 1384
    const/16 v0, 0x16

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    .line 1385
    const-string v0, "net.cdma.factory.CALL"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_119

    .line 1387
    :cond_18c
    const/16 v0, 0xc9

    if-ne p2, v0, :cond_1a2

    .line 1388
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aput v1, v0, v1

    .line 1389
    const-string v0, "net.cdma.factory.CALL"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const/16 v0, 0x16

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_119

    .line 1392
    :cond_1a2
    const/16 v0, 0xce

    if-ne p2, v0, :cond_1c8

    .line 1393
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aput v1, v0, v1

    .line 1394
    const-string v0, "net.cdma.factory.CALL"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const/16 v0, 0x16

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    .line 1396
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aput v1, v0, v6

    .line 1397
    const-string v0, "net.cdma.factory.EAR"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const/16 v0, 0x20

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_119

    .line 1400
    :cond_1c8
    const/16 v0, 0xcf

    if-ne p2, v0, :cond_1ff

    .line 1401
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aput v1, v0, v1

    .line 1402
    const-string v0, "net.cdma.factory.CALL"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    const/16 v0, 0x16

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    .line 1404
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aput v1, v0, v6

    .line 1405
    const-string v0, "net.cdma.factory.EAR"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    const/16 v0, 0x20

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    .line 1407
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 1408
    const-string v0, "net.cdma.factory.EARKEY"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    const/16 v0, 0x21

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_119

    .line 1412
    :cond_1ff
    const/16 v0, 0xd9

    if-ne p2, v0, :cond_215

    .line 1413
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aput v1, v0, v6

    .line 1414
    const-string v0, "net.cdma.factory.EAR"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const/16 v0, 0x20

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_119

    .line 1419
    :cond_215
    const/16 v0, 0xd0

    if-ne p2, v0, :cond_119

    .line 1420
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aput v1, v0, v6

    .line 1421
    const-string v0, "net.cdma.factory.EAR"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const/16 v0, 0x20

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    .line 1423
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 1424
    const-string v0, "net.cdma.factory.EARKEY"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    const/16 v0, 0x21

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_119

    .line 1437
    :pswitch_23c
    const-string v0, "FactoryTestApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[[[MAGNETIC_REQUEST   result Code]]]= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const/16 v0, 0xcf

    if-ne p2, v0, :cond_286

    .line 1439
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 1440
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[MAGNETIC_REQUEST]]]=PASS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1442
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1443
    const-string v0, "net.cdma.factory.MAGNETIC"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    const/16 v0, 0x26

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1446
    :cond_286
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v2, 0x7

    aget v0, v0, v2

    if-nez v0, :cond_5e

    .line 1447
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v2, 0x7

    aput v6, v0, v2

    .line 1448
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[MAGNETIC_REQUEST]]]=FAIL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1450
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1451
    const-string v0, "net.cdma.factory.MAGNETIC"

    const-string v2, "FAIL"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    const/16 v0, 0x26

    invoke-direct {p0, v0, v7}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1458
    :pswitch_2bb
    const-string v0, "FactoryTestApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[[[USBPATH_REQUEST   result Code]]]= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const/16 v0, 0xd0

    if-ne p2, v0, :cond_307

    .line 1460
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 1461
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[USBPATH_REQUEST]]]=PASS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1463
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1464
    const-string v0, "net.cdma.factory.USB"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    const/16 v0, 0x27

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1467
    :cond_307
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0x8

    aget v0, v0, v2

    if-nez v0, :cond_5e

    .line 1468
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0x8

    aput v6, v0, v2

    .line 1469
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[USBPATH_REQUEST]]]=FAIL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1471
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1472
    const-string v0, "net.cdma.factory.USB"

    const-string v2, "FAIL"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    const/16 v0, 0x27

    invoke-direct {p0, v0, v7}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1499
    :pswitch_33f
    const/16 v0, 0xcb

    if-ne p2, v0, :cond_371

    .line 1503
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 1504
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[TSPTEST]]]=PASS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1506
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1507
    const-string v0, "net.cdma.factory.TSP"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const/16 v0, 0x22

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1511
    :cond_371
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v2, 0x6

    aget v0, v0, v2

    if-nez v0, :cond_5e

    .line 1512
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v2, 0x6

    aput v6, v0, v2

    .line 1513
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[TSPTEST]]]=FAIL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1515
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1516
    const-string v0, "net.cdma.factory.TSP"

    const-string v2, "FAIL"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    const/16 v0, 0x22

    invoke-direct {p0, v0, v7}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1568
    :pswitch_3a6
    const/16 v0, 0xde

    if-ne p2, v0, :cond_3da

    .line 1569
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 1570
    const-string v0, "FactoryTestApp"

    const-string v2, "[[TOUCHTEST]]]=PASS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1572
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1573
    const-string v0, "net.cdma.factory.TOUCH"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    const/16 v0, 0x1b

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1576
    :cond_3da
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0x9

    aget v0, v0, v2

    if-nez v0, :cond_5e

    .line 1577
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0x9

    aput v6, v0, v2

    .line 1578
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[TOUCHTEST]]]=FAIL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1580
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1581
    const-string v0, "net.cdma.factory.TOUCH"

    const-string v2, "FAIL"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    const/16 v0, 0x1b

    invoke-direct {p0, v0, v7}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1588
    :pswitch_412
    const/16 v0, 0xdf

    if-ne p2, v0, :cond_446

    .line 1589
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 1590
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[GYROTEST]]]=PASS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1592
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1593
    const-string v0, "net.cdma.factory.GYROTEST"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    const/16 v0, 0x13

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1596
    :cond_446
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0xa

    aget v0, v0, v2

    if-nez v0, :cond_5e

    .line 1597
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0xa

    aput v6, v0, v2

    .line 1598
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[GYROTEST]]]=FAIL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1600
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1601
    const-string v0, "net.cdma.factory.GYROTEST"

    const-string v2, "FAIL"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    const/16 v0, 0x13

    invoke-direct {p0, v0, v7}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1607
    :pswitch_47e
    const/16 v0, 0xe1

    if-ne p2, v0, :cond_494

    .line 1608
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/samsungtest/SimpleFunctionTest/IntensityTest;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1609
    const/16 v2, 0x71

    invoke-virtual {p0, v0, v2}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_5e

    .line 1618
    :cond_494
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0xb

    aget v0, v0, v2

    if-nez v0, :cond_5e

    .line 1619
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0xb

    aput v6, v0, v2

    .line 1620
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[SENSOR_INDEX]]]=FAIL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1622
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1623
    const-string v0, "net.cdma.factory.PNL"

    const-string v2, "FAIL"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    const/16 v0, 0x11

    invoke-direct {p0, v0, v7}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1629
    :pswitch_4cc
    const/16 v0, 0xe2

    if-ne p2, v0, :cond_500

    .line 1630
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 1631
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[SENSOR_INDEX]]]=PASS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1633
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1634
    const-string v0, "net.cdma.factory.PNL"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    const/16 v0, 0x11

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1638
    :cond_500
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0xb

    aget v0, v0, v2

    if-nez v0, :cond_5e

    .line 1639
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0xb

    aput v6, v0, v2

    .line 1640
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[SENSOR_INDEX]]]=FAIL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1642
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1643
    const-string v0, "net.cdma.factory.PNL"

    const-string v2, "FAIL"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    const/16 v0, 0x11

    invoke-direct {p0, v0, v7}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1649
    :pswitch_538
    const/4 v0, -0x1

    if-ne p2, v0, :cond_56b

    .line 1650
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 1651
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[HDMITEST]]]=PASS"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1653
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1654
    const-string v0, "net.cdma.factory.HDMI"

    const-string v2, "PASS"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    const/16 v0, 0x12

    invoke-direct {p0, v0, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1658
    :cond_56b
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0xc

    aget v0, v0, v2

    if-nez v0, :cond_5e

    .line 1659
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v2, 0xc

    aput v6, v0, v2

    .line 1660
    const-string v0, "FactoryTestApp"

    const-string v2, "[[[HDMITEST]]]=FAIL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1662
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1663
    const-string v0, "net.cdma.factory.HDMI"

    const-string v2, "FAIL"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    const/16 v0, 0x12

    invoke-direct {p0, v0, v7}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto/16 :goto_5e

    .line 1670
    :cond_5a3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5f

    :cond_5a7
    move v0, v1

    goto/16 :goto_6b

    .line 1342
    :pswitch_data_5aa
    .packed-switch 0x64
        :pswitch_7e
        :pswitch_e4
        :pswitch_5e
        :pswitch_33f
        :pswitch_5e
        :pswitch_5e
        :pswitch_23c
        :pswitch_2bb
        :pswitch_5e
        :pswitch_3a6
        :pswitch_412
        :pswitch_47e
        :pswitch_538
        :pswitch_4cc
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 324
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 325
    const v2, 0x7f03000e

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->setContentView(I)V

    .line 327
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 328
    .local v1, o:Ljava/lang/Object;
    if-eqz v1, :cond_20

    move-object v0, v1

    .line 329
    check-cast v0, Ljava/util/HashMap;

    .line 330
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "mView"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    .line 332
    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_20
    iput-object p0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mContext:Landroid/content/Context;

    .line 334
    new-instance v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;

    invoke-direct {v2, p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;-><init>(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)V

    iput-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFTA:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;

    .line 335
    const v2, 0x7f09002f

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFactoryTestAppListView:Landroid/widget/ListView;

    .line 336
    const v2, 0x7f090035

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mTestName:Landroid/widget/TextView;

    .line 337
    const v2, 0x7f09002e

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mTestPrograss:Landroid/widget/TextView;

    .line 338
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFactoryTestAppListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 339
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFactoryTestAppListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFTA:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 341
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->audioManager:Landroid/media/AudioManager;

    .line 342
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mOldVolume:I

    .line 343
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->audioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    invoke-virtual {v2, v4, v3, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 345
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    sput-object v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->pm:Landroid/os/PowerManager;

    .line 346
    sget-object v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->pm:Landroid/os/PowerManager;

    const v3, 0x1000000a

    const-string v4, "FactoryTestApp"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->wl:Landroid/os/PowerManager$WakeLock;

    .line 348
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 349
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v3, "FactoryTestApp"

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 351
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mWindowManager:Landroid/view/IWindowManager;

    .line 353
    sget-object v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 354
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v2}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 356
    sget-object v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_c8

    .line 358
    const-string v2, "FactoryTestApp"

    const-string v3, "WakeLock acquire"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget-object v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 362
    :cond_c8
    iput v5, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mPrevKey:I

    .line 363
    iput-wide v6, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mPrevTime:J

    .line 364
    iput v5, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mCurrKey:I

    .line 365
    iput-wide v6, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mCurrTime:J

    .line 366
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mCheckHandler:Landroid/os/Handler;

    const/16 v3, 0x650

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 368
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->registerFilter()V

    .line 369
    const-string v2, "FactoryTestApp"

    const-string v3, "=========== initialTestResult ==================="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 760
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 761
    const-string v0, "FactoryTestApp"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->unregisterFilter()V

    .line 763
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mOldVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 764
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 766
    sget-object v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 767
    sget-object v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 768
    :cond_28
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xa

    const/4 v1, 0x0

    const/4 v5, 0x5

    const/4 v2, 0x1

    .line 1025
    if-nez p3, :cond_42

    .line 1026
    const-string v0, "FactoryTestApp"

    const-string v1, "position=Simple Test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->IsBtStarting()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1330
    :cond_16
    :goto_16
    return-void

    .line 1031
    :cond_17
    iput-object p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    .line 1032
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2a

    .line 1033
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1034
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1037
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/SimpleFunctionTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1038
    const-string v1, "SIMPLE_FUNCTION_TEST_START"

    const-string v2, "SIMPLE_FUNCTION_TEST_START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_16

    .line 1043
    :cond_42
    if-ne p3, v2, :cond_81

    .line 1044
    const-string v0, "FactoryTestApp"

    const-string v1, "position=Call/Ear/Ear Key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->IsBtStarting()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1049
    iput-object p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    .line 1050
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_64

    .line 1051
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1052
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1055
    :cond_64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/LoopbackTest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1057
    const-string v1, "LOOPBACK_TEST_START"

    const-string v2, "LOOPBACK_TEST_START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_16

    .line 1061
    :cond_81
    const/4 v0, 0x2

    if-ne p3, v0, :cond_e0

    .line 1062
    const-string v0, "FactoryTestApp"

    const-string v2, "position=Bt"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->IsBtStarting()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1067
    iput-object p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    .line 1069
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a4

    .line 1070
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 1071
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1074
    :cond_a4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1076
    iput v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->result_bt_1:I

    .line 1078
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    if-ne v0, v3, :cond_d5

    .line 1079
    iput v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->result_bt_1:I

    .line 1085
    :cond_b6
    :goto_b6
    const-string v0, "FactoryTestApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result_bt_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->result_bt_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bluetoothTestStart()V

    goto/16 :goto_16

    .line 1081
    :cond_d5
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    if-ne v0, v4, :cond_b6

    .line 1082
    iput v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->result_bt_1:I

    goto :goto_b6

    .line 1089
    :cond_e0
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1a0

    .line 1090
    const-string v0, "FactoryTestApp"

    const-string v3, "position=(L)Speaker"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->IsBtStarting()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1095
    iput-object p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    .line 1096
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_107

    .line 1097
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 1098
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1099
    iget v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mSPK:I

    if-eq v0, v2, :cond_16

    .line 1104
    :cond_107
    iput v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mSPK:I

    .line 1105
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mContext:Landroid/content/Context;

    const v3, 0x7f050006

    invoke-static {v0, v3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1107
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_121

    .line 1108
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1111
    :cond_121
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 1112
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aput v2, v0, v5

    .line 1113
    const v0, 0x7f090035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1114
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v4, v4, v5

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1115
    const-string v0, "net.cdma.factory.SPEAKER"

    const-string v3, "PASS"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const/16 v0, 0x19

    const/16 v3, 0x50

    invoke-direct {p0, v0, v3}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    :cond_14f
    :goto_14f
    move v0, v1

    .line 1126
    :goto_150
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    array-length v3, v3

    if-ge v0, v3, :cond_407

    .line 1127
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v3, v3, v0

    if-eq v3, v2, :cond_19d

    .line 1132
    :goto_15b
    if-eqz v1, :cond_16

    .line 1133
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFactoryTestAppListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    goto/16 :goto_16

    .line 1118
    :cond_16f
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v0, v0, v5

    if-nez v0, :cond_14f

    .line 1119
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v3, 0x2

    aput v3, v0, v5

    .line 1120
    const v0, 0x7f090035

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1121
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v4, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v4, v4, v5

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1122
    const-string v0, "net.cdma.factory.SPEAKER"

    const-string v3, "FAIL"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const/16 v0, 0x19

    const/16 v3, 0x46

    invoke-direct {p0, v0, v3}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V

    goto :goto_14f

    .line 1126
    :cond_19d
    add-int/lit8 v0, v0, 0x1

    goto :goto_150

    .line 1136
    :cond_1a0
    const/4 v0, 0x4

    if-ne p3, v0, :cond_1d8

    .line 1137
    const-string v0, "FactoryTestApp"

    const-string v1, "position=Tsp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->IsBtStarting()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1142
    iput-object p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    .line 1143
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1c3

    .line 1144
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1c3

    .line 1145
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1148
    :cond_1c3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/samsungtest/SimpleFunctionTest/TouchTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1149
    const-string v1, "TSP_TEST_START"

    const-string v2, "TSP_TEST_START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_16

    .line 1154
    :cond_1d8
    if-ne p3, v5, :cond_218

    .line 1155
    const-string v0, "FactoryTestApp"

    const-string v1, "position=Magnetic Sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->IsBtStarting()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1160
    iput-object p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    .line 1161
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1fa

    .line 1162
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 1163
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1166
    :cond_1fa
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/MagneticSensorTest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1169
    const-string v1, "MAGNETIC_TEST_START"

    const-string v2, "MAGNETIC_TEST_START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1170
    const/16 v1, 0x6a

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_16

    .line 1172
    :cond_218
    const/4 v0, 0x6

    if-ne p3, v0, :cond_277

    .line 1173
    const-string v0, "FactoryTestApp"

    const-string v1, "position=USB Path(AP/CP)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->IsBtStarting()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1178
    iput-object p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    .line 1179
    const-string v0, "FactoryTestApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_259

    .line 1182
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_259

    .line 1183
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1186
    :cond_259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/UsbTest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1188
    const-string v1, "USBPATH_TEST_START"

    const-string v2, "USBPATH_TEST_START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1189
    const/16 v1, 0x6b

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_16

    .line 1225
    :cond_277
    const/4 v0, 0x7

    if-ne p3, v0, :cond_2b8

    .line 1226
    const-string v0, "FactoryTestApp"

    const-string v1, "position=Touch Test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->IsBtStarting()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1231
    iput-object p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    .line 1232
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_29a

    .line 1233
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_29a

    .line 1234
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1237
    :cond_29a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/TouchkeyTest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1239
    const-string v1, "TOUCHKEY_TEST_START"

    const-string v2, "TOUCHKEY_TEST_START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1240
    const/16 v1, 0x6d

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_16

    .line 1242
    :cond_2b8
    const/16 v0, 0x8

    if-ne p3, v0, :cond_2fa

    .line 1243
    const-string v0, "FactoryTestApp"

    const-string v1, "position=Gyroscope  Test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->IsBtStarting()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1248
    iput-object p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    .line 1249
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2dc

    .line 1250
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2dc

    .line 1251
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1254
    :cond_2dc
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/GyroscopeSensorTest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1256
    const-string v1, "GYRO_TEST_START"

    const-string v2, "GYRO_TEST_START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1257
    const/16 v1, 0x6e

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_16

    .line 1259
    :cond_2fa
    const/16 v0, 0x9

    if-ne p3, v0, :cond_34e

    .line 1260
    const-string v0, "FactoryTestApp"

    const-string v1, "position=SensorTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->IsBtStarting()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1265
    iput-object p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    .line 1266
    const-string v0, "FactoryTestApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_33c

    .line 1269
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_33c

    .line 1270
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1274
    :cond_33c
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/ProximityTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1275
    const/16 v1, 0x6f

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_16

    .line 1277
    :cond_34e
    if-ne p3, v3, :cond_3a0

    .line 1278
    const-string v0, "FactoryTestApp"

    const-string v1, "position=HDMITest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->IsBtStarting()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1283
    iput-object p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    .line 1284
    const-string v0, "FactoryTestApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_38e

    .line 1287
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_38e

    .line 1288
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1292
    :cond_38e
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1293
    const/16 v1, 0x70

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_16

    .line 1295
    :cond_3a0
    const/16 v0, 0xb

    if-ne p3, v0, :cond_3c9

    .line 1296
    const-string v0, "FactoryTestApp"

    const-string v1, "position=SDCARD Test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->IsBtStarting()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1301
    iput-object p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    .line 1302
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3c4

    .line 1303
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3c4

    .line 1304
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1308
    :cond_3c4
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sdcardTest()V

    goto/16 :goto_16

    .line 1310
    :cond_3c9
    if-ne p3, v4, :cond_16

    .line 1311
    const-string v0, "FactoryTestApp"

    const-string v1, "position=Function Test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->IsBtStarting()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1316
    iput-object p2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    .line 1317
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3eb

    .line 1318
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3eb

    .line 1319
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1323
    :cond_3eb
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1325
    const-string v1, "FUNCTION_TEST_START"

    const-string v2, "FUNCTION_TEST_START"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1327
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_16

    :cond_407
    move v1, v2

    goto/16 :goto_15b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 679
    const-string v0, "FactoryTestApp"

    const-string v2, "onKeyDown"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iput p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mCurrKey:I

    .line 681
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mCurrTime:J

    .line 682
    const/4 v0, 0x0

    .line 684
    const/4 v2, 0x6

    if-ne p1, v2, :cond_15

    .line 745
    :cond_14
    :goto_14
    return v1

    .line 686
    :cond_15
    const/4 v2, 0x5

    if-eq p1, v2, :cond_14

    .line 689
    const/16 v2, 0x52

    if-eq p1, v2, :cond_14

    .line 692
    const/16 v2, 0x17

    if-eq p1, v2, :cond_14

    .line 695
    const/4 v2, 0x4

    if-ne p1, v2, :cond_88

    .line 697
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->BackKeyCheck()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-gtz v2, :cond_14

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-nez v2, :cond_14

    .line 699
    const-string v2, "KEYCODE"

    const-string v3, "This is back_key"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_4e

    .line 703
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 704
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    move v0, v1

    .line 709
    :cond_4e
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_5e

    .line 710
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 711
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bluetoothTestStart()V

    move v0, v1

    .line 716
    :cond_5e
    if-nez v0, :cond_14

    .line 719
    sget-object v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 721
    const-string v0, "FactoryTestApp"

    const-string v2, "WakeLock release"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    sget-object v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 725
    :cond_74
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_84

    .line 726
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 727
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 730
    :cond_84
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->finish()V

    goto :goto_14

    .line 734
    :cond_88
    const/16 v0, 0x54

    if-eq p1, v0, :cond_14

    .line 739
    const/16 v0, 0x19

    if-eq p1, v0, :cond_14

    const/16 v0, 0x18

    if-eq p1, v0, :cond_14

    .line 745
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_14
.end method

.method protected onPause()V
    .registers 6

    .prologue
    .line 656
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 659
    :try_start_3
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 660
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_34

    .line 666
    :cond_1b
    :goto_1b
    const-string v1, "FactoryTestApp"

    const-string v2, "onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_33

    .line 669
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 670
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 675
    :cond_33
    return-void

    .line 662
    :catch_34
    move-exception v0

    .line 663
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b
.end method

.method protected onResume()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 620
    const-string v3, "FactoryTestApp"

    const-string v4, "onResume()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 624
    :try_start_b
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 625
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_23} :catch_79

    .line 631
    :cond_23
    :goto_23
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->readSystemProperty()V

    .line 632
    const/4 v0, 0x1

    .line 634
    .local v0, Pass_FTA:Z
    const/4 v1, 0x0

    .local v1, a:I
    :goto_28
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    array-length v3, v3

    if-ge v1, v3, :cond_5a

    .line 636
    const-string v3, "FactoryTestApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===========testResult["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v3, v3, v1

    if-eq v3, v7, :cond_7e

    .line 639
    const/4 v0, 0x0

    .line 644
    :cond_5a
    if-eqz v0, :cond_6c

    .line 646
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFactoryTestAppListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 649
    :cond_6c
    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mFTA:Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;

    invoke-virtual {v3}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$FactoryTestAdapter;->notifyDataSetChanged()V

    .line 650
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->turnOffAutobrightness()V

    .line 651
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)V

    .line 652
    return-void

    .line 627
    .end local v0           #Pass_FTA:Z
    .end local v1           #a:I
    :catch_79
    move-exception v2

    .line 628
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_23

    .line 634
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #Pass_FTA:Z
    .restart local v1       #a:I
    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_28
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 598
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 599
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "mView"

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    return-object v0
.end method

.method public readSystemProperty()V
    .registers 22

    .prologue
    .line 374
    const-string v18, "SFTest"

    const-string v19, "readSystemProperty()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    .line 392
    .local v9, Prograss:[Ljava/lang/String;
    const-string v18, "net.cdma.factory.SF"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 393
    .local v11, SF:Ljava/lang/String;
    const-string v18, "net.cdma.factory.CALL"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, CALL:Ljava/lang/String;
    const-string v18, "net.cdma.factory.EAR"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, EAR:Ljava/lang/String;
    const-string v18, "net.cdma.factory.EARKEY"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 396
    .local v5, EARKEY:Ljava/lang/String;
    const-string v18, "net.cdma.factory.BT"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, BT:Ljava/lang/String;
    const-string v18, "net.cdma.factory.SPEAKER"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 398
    .local v12, SPEAKER:Ljava/lang/String;
    const-string v18, "net.cdma.factory.TSP"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 399
    .local v15, TSP:Ljava/lang/String;
    const-string v18, "net.cdma.factory.MAGNETIC"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 400
    .local v8, MAGNETIC:Ljava/lang/String;
    const-string v18, "net.cdma.factory.USB"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 402
    .local v16, USB:Ljava/lang/String;
    const-string v18, "net.cdma.factory.TOUCH"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 403
    .local v14, TOUCHKEY:Ljava/lang/String;
    const-string v18, "net.cdma.factory.GYROTEST"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, GyroTest:Ljava/lang/String;
    const-string v18, "net.cdma.factory.PNL"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 405
    .local v13, SensorTest:Ljava/lang/String;
    const-string v18, "net.cdma.factory.HDMI"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 406
    .local v7, HDMITest:Ljava/lang/String;
    const-string v18, "net.cdma.factory.SDCARD"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 407
    .local v10, SDCARDTest:Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "net.cdma.factory.SMD"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v9, v18

    .line 408
    const/16 v18, 0x1

    const-string v19, "net.cdma.factory.PBA"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v9, v18

    .line 409
    const/16 v18, 0x2

    const-string v19, "net.cdma.factory.RFCAL"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v9, v18

    .line 410
    const/16 v18, 0x3

    const-string v19, "net.cdma.factory.FINAL"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v9, v18

    .line 412
    const-string v18, "SFTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readSystemProperty, SF = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v18, "SFTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readSystemProperty, CALL = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v18, "SFTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readSystemProperty, EAR = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v18, "SFTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readSystemProperty, EARKEY = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v18, "SFTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readSystemProperty, BT = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v18, "SFTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readSystemProperty, SPEAKER = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v18, "SFTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readSystemProperty, TSP = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v18, "SFTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readSystemProperty, MAGNETIC = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v18, "SFTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readSystemProperty, USB = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v18, "SFTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readSystemProperty, Touch = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v18, "SFTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readSystemProperty, GyroTest = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v18, "SFTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readSystemProperty, SensorTest = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v18, "SFTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readSystemProperty, HDMITest = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v18, "SFTest"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readSystemProperty, SDCARDTest = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1f9
    array-length v0, v9

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_218

    .line 429
    aget-object v18, v9, v17

    const-string v19, "PASS"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_213

    .line 430
    const-string v18, "O"

    aput-object v18, v9, v17

    .line 428
    :goto_210
    add-int/lit8 v17, v17, 0x1

    goto :goto_1f9

    .line 432
    :cond_213
    const-string v18, "X"

    aput-object v18, v9, v17

    goto :goto_210

    .line 435
    :cond_218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mTestPrograss:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "S"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v9, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " P"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v9, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " C"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2

    aget-object v20, v9, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " F"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3

    aget-object v20, v9, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    if-eqz v11, :cond_27a

    .line 439
    const-string v18, "PASS"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3b5

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 445
    :cond_27a
    :goto_27a
    if-eqz v2, :cond_292

    .line 447
    const-string v18, "PASS"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3cd

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x4

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 452
    :cond_292
    :goto_292
    if-eqz v12, :cond_2aa

    .line 454
    const-string v18, "PASS"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3e5

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x5

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 459
    :cond_2aa
    :goto_2aa
    if-eqz v8, :cond_2c2

    .line 461
    const-string v18, "PASS"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3fd

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x7

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 466
    :cond_2c2
    :goto_2c2
    if-eqz v16, :cond_2dc

    .line 468
    const-string v18, "PASS"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_415

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x8

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 473
    :cond_2dc
    :goto_2dc
    if-eqz v3, :cond_2f4

    .line 475
    const-string v18, "PASS"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_42f

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 480
    :cond_2f4
    :goto_2f4
    if-eqz v4, :cond_30c

    .line 482
    const-string v18, "PASS"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_447

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 487
    :cond_30c
    :goto_30c
    if-eqz v5, :cond_324

    .line 489
    const-string v18, "PASS"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_45f

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x3

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 494
    :cond_324
    :goto_324
    if-eqz v15, :cond_33c

    .line 496
    const-string v18, "PASS"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_477

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x6

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 508
    :cond_33c
    :goto_33c
    if-eqz v14, :cond_354

    .line 510
    const-string v18, "PASS"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_48f

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x9

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 515
    :cond_354
    :goto_354
    if-eqz v6, :cond_36c

    .line 517
    const-string v18, "PASS"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4a7

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0xa

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 522
    :cond_36c
    :goto_36c
    if-eqz v13, :cond_384

    .line 524
    const-string v18, "PASS"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4bf

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0xb

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 529
    :cond_384
    :goto_384
    if-eqz v7, :cond_39c

    .line 531
    const-string v18, "PASS"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4d7

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0xc

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 538
    :cond_39c
    :goto_39c
    if-eqz v10, :cond_3b4

    .line 540
    const-string v18, "PASS"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4ef

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0xd

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 547
    :cond_3b4
    :goto_3b4
    return-void

    .line 441
    :cond_3b5
    const-string v18, "FAIL"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_27a

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    aput v20, v18, v19

    goto/16 :goto_27a

    .line 449
    :cond_3cd
    const-string v18, "FAIL"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_292

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x4

    const/16 v20, 0x2

    aput v20, v18, v19

    goto/16 :goto_292

    .line 456
    :cond_3e5
    const-string v18, "FAIL"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2aa

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x5

    const/16 v20, 0x2

    aput v20, v18, v19

    goto/16 :goto_2aa

    .line 463
    :cond_3fd
    const-string v18, "FAIL"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2c2

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x7

    const/16 v20, 0x2

    aput v20, v18, v19

    goto/16 :goto_2c2

    .line 470
    :cond_415
    const-string v18, "FAIL"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2dc

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x8

    const/16 v20, 0x2

    aput v20, v18, v19

    goto/16 :goto_2dc

    .line 477
    :cond_42f
    const-string v18, "FAIL"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2f4

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x2

    aput v20, v18, v19

    goto/16 :goto_2f4

    .line 484
    :cond_447
    const-string v18, "FAIL"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_30c

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    const/16 v20, 0x2

    aput v20, v18, v19

    goto/16 :goto_30c

    .line 491
    :cond_45f
    const-string v18, "FAIL"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_324

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x3

    const/16 v20, 0x2

    aput v20, v18, v19

    goto/16 :goto_324

    .line 498
    :cond_477
    const-string v18, "FAIL"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_33c

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x6

    const/16 v20, 0x2

    aput v20, v18, v19

    goto/16 :goto_33c

    .line 512
    :cond_48f
    const-string v18, "FAIL"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_354

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0x9

    const/16 v20, 0x2

    aput v20, v18, v19

    goto/16 :goto_354

    .line 519
    :cond_4a7
    const-string v18, "FAIL"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_36c

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0xa

    const/16 v20, 0x2

    aput v20, v18, v19

    goto/16 :goto_36c

    .line 526
    :cond_4bf
    const-string v18, "FAIL"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_384

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0xb

    const/16 v20, 0x2

    aput v20, v18, v19

    goto/16 :goto_384

    .line 534
    :cond_4d7
    const-string v18, "FAIL"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_39c

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0xc

    const/16 v20, 0x2

    aput v20, v18, v19

    goto/16 :goto_39c

    .line 543
    :cond_4ef
    const-string v18, "FAIL"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3b4

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    move-object/from16 v18, v0

    const/16 v19, 0xd

    const/16 v20, 0x2

    aput v20, v18, v19

    goto/16 :goto_3b4
.end method
