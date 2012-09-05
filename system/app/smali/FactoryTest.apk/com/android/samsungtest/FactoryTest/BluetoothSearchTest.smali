.class public Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;
.super Landroid/app/Activity;
.source "BluetoothSearchTest.java"


# static fields
.field static LOG_TAG:Ljava/lang/String;

.field private static first_bt:Z

.field private static mTimer:Ljava/util/Timer;


# instance fields
.field private AFTER_BT_OFF_BT_ON_DURATION:J

.field private BT_ON_DURATION:J

.field private BluetoothSearchTestBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final DURATION:I

.field private btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBTAddress:Ljava/lang/String;

.field private mBTInfo:Landroid/widget/TextView;

.field private mBTItemLinearLayout:Landroid/widget/LinearLayout;

.field private mBTOnRunnable:Ljava/lang/Runnable;

.field private mBTSearchRunnable:Ljava/lang/Runnable;

.field private mBtListCount:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerBTOn:Landroid/os/Handler;

.field private mHandlerBTSearch:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mScrollView:Landroid/widget/ScrollView;

.field pm:Landroid/os/PowerManager;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string v0, "BluetoothSearchTest"

    sput-object v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->LOG_TAG:Ljava/lang/String;

    .line 201
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->first_bt:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mHandlerBTOn:Landroid/os/Handler;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mHandlerBTSearch:Landroid/os/Handler;

    .line 38
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->DURATION:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->BT_ON_DURATION:J

    .line 41
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->AFTER_BT_OFF_BT_ON_DURATION:J

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBtListCount:I

    .line 202
    new-instance v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$4;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$4;-><init>(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->BluetoothSearchTestBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private BTsearchCheck()V
    .registers 7

    .prologue
    const-wide/16 v2, 0x3e8

    .line 84
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mTimer:Ljava/util/Timer;

    .line 85
    sget-object v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;-><init>(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mHandlerBTSearch:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200()Z
    .registers 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->first_bt:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    sput-boolean p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->first_bt:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBtListCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->resetBTDeviceName(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->BTsearchCheck()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->bluetoothOn()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTSearchRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->BT_ON_DURATION:J

    return-wide v0
.end method

.method private addOneDeviceInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;
    .registers 10
    .parameter "name"
    .parameter "address"
    .parameter "btListCount"

    .prologue
    const/16 v4, 0xf0

    const/4 v5, -0x2

    .line 238
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 239
    .local v2, textViewName:Landroid/widget/TextView;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 241
    .local v1, textViewAddress:Landroid/widget/TextView;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    invoke-direct {p0, v2}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->setTextAtt(Landroid/widget/TextView;)V

    .line 245
    invoke-direct {p0, v1}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->setTextAtt(Landroid/widget/TextView;)V

    .line 247
    if-nez p1, :cond_27

    .line 248
    const-string p1, "null"

    .line 251
    :cond_27
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 255
    .local v0, oneLine:Landroid/widget/LinearLayout;
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 256
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 260
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    return-object v0
.end method

.method private bluetoothOn()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_19

    .line 74
    const-string v0, "BT search"

    const-string v1, "BT is off. So, BT is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 76
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->BT_ON_DURATION:J

    .line 81
    :goto_18
    return-void

    .line 78
    :cond_19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->BT_ON_DURATION:J

    goto :goto_18
.end method

.method private init()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 147
    sput-boolean v5, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->first_bt:Z

    .line 148
    const v1, 0x7f090009

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTInfo:Landroid/widget/TextView;

    .line 149
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mProgressBar:Landroid/widget/ProgressBar;

    .line 150
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "ServiceBroadCastReciever"

    const-string v2, "Register_BroadCast"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->BluetoothSearchTestBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 156
    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mScrollView:Landroid/widget/ScrollView;

    .line 157
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTItemLinearLayout:Landroid/widget/LinearLayout;

    .line 158
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTItemLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTItemLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 161
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTItemLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 163
    new-instance v1, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$2;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$2;-><init>(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)V

    iput-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTSearchRunnable:Ljava/lang/Runnable;

    .line 172
    new-instance v1, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$3;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$3;-><init>(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)V

    iput-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTOnRunnable:Ljava/lang/Runnable;

    .line 198
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBtListCount:I

    .line 199
    return-void
.end method

.method private onExit()V
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTOnRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2d

    .line 107
    const-string v0, "BluetoothSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTSearchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mHandlerBTOn:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    :cond_2d
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTSearchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5a

    .line 113
    const-string v0, "BluetoothSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeHandler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTSearchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mHandlerBTSearch:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTSearchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    :cond_5a
    sget-object v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_85

    .line 118
    const-string v0, "BluetoothSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 123
    :cond_85
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 124
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 125
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 128
    :cond_97
    const-string v0, "ServiceBroadCastReciever"

    const-string v1, "Unregister_BroadCast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->BluetoothSearchTestBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->finish()V

    .line 131
    return-void
.end method

.method private declared-synchronized resetBTDeviceName(I)V
    .registers 11
    .parameter "btListCount"

    .prologue
    .line 278
    monitor-enter p0

    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, p1, :cond_76

    .line 279
    :try_start_4
    iget-object v6, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTItemLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 281
    .local v2, btList:Landroid/widget/LinearLayout;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 282
    .local v1, addressTv:Landroid/widget/TextView;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 283
    .local v5, nameTv:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, address:Ljava/lang/String;
    const-string v6, "BluetoothSearchTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Address of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v6, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, name:Ljava/lang/String;
    const-string v6, "BluetoothSearchTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Name of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_73
    .catchall {:try_start_4 .. :try_end_73} :catchall_78

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 289
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #addressTv:Landroid/widget/TextView;
    .end local v2           #btList:Landroid/widget/LinearLayout;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameTv:Landroid/widget/TextView;
    :cond_76
    monitor-exit p0

    return-void

    .line 278
    :catchall_78
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "function"
    .parameter "result"

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SendResultToRil"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FUNCTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    return-void
.end method

.method private setTextAtt(Landroid/widget/TextView;)V
    .registers 4
    .parameter "textView"

    .prologue
    .line 267
    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 268
    const/high16 v0, 0x4170

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 269
    invoke-virtual {p0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    return-void
.end method


# virtual methods
.method public addSearchedBTItem(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 227
    const-string v0, "BT_Search"

    const-string v1, "BluetoothTestApp - BluetoothIntent.REMOTE_DEVICE_FOUND_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTItemLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBtListCount:I

    invoke-direct {p0, v1, p1, v2}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->addOneDeviceInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    iget v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBtListCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBtListCount:I

    .line 234
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->setContentView(I)V

    .line 60
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->pm:Landroid/os/PowerManager;

    .line 61
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->pm:Landroid/os/PowerManager;

    const/16 v1, 0xa

    sget-object v2, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->wl:Landroid/os/PowerManager$WakeLock;

    .line 62
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 64
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->init()V

    .line 66
    const-string v0, "BluetoothSearch"

    const-string v1, "BT\'s on Create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mHandlerBTOn:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTOnRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->AFTER_BT_OFF_BT_ON_DURATION:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 314
    sget-object v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 136
    const-string v0, "KEYCODE"

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

    .line 138
    const/4 v0, 0x4

    if-ne p1, v0, :cond_29

    .line 139
    const-string v0, "KEYCODE"

    const-string v1, "This is back_key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->onExit()V

    .line 143
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 308
    sget-object v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 302
    sget-object v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method
