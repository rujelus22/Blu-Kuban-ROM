.class public Lcom/android/samsungtest/SimpleFunctionTest/button_grip;
.super Landroid/app/Activity;
.source "button_grip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/SimpleFunctionTest/button_grip$1;,
        Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final MAX_BUFFER_SIZE:I

.field private final SECOND:I

.field private final SHORT_TIMELESS:J

.field private final TIMELESS:J

.field private grip_Both:I

.field private grip_L:I

.field private grip_R:I

.field private final grip_read_cnt:Ljava/lang/String;

.field mGripSensor:Landroid/hardware/Sensor;

.field private mHandler:Landroid/os/Handler;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field mSensorListner:Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTimer:Ljava/util/Timer;

.field private txt_grip_read_cnt:Landroid/widget/TextView;

.field private txtgrip:Landroid/widget/TextView;

.field vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const-string v0, "/sys/devices/virtual/gripsensor/switch/grip_read_cnt"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->grip_read_cnt:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->mTimer:Ljava/util/Timer;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->mHandler:Landroid/os/Handler;

    .line 44
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->SECOND:I

    .line 45
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->MAX_BUFFER_SIZE:I

    .line 47
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->TIMELESS:J

    .line 48
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->SHORT_TIMELESS:J

    .line 59
    const-string v0, "SensorTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->LOG_TAG:Ljava/lang/String;

    .line 61
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->grip_L:I

    .line 62
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->grip_R:I

    .line 63
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->grip_Both:I

    .line 137
    return-void
.end method

.method static synthetic access$208(Lcom/android/samsungtest/SimpleFunctionTest/button_grip;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->grip_L:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->grip_L:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/samsungtest/SimpleFunctionTest/button_grip;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->grip_R:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->grip_R:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/samsungtest/SimpleFunctionTest/button_grip;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->grip_Both:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->grip_Both:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/samsungtest/SimpleFunctionTest/button_grip;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->txtgrip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/samsungtest/SimpleFunctionTest/button_grip;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->txt_grip_read_cnt:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 81
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->vibrator:Landroid/os/Vibrator;

    .line 82
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->mSensorManager:Landroid/hardware/SensorManager;

    .line 83
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->mGripSensor:Landroid/hardware/Sensor;

    .line 85
    const v1, 0x7f09000e

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->txtgrip:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->txtgrip:Landroid/widget/TextView;

    const-string v2, "GRIP : 0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v1, 0x7f09000f

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->txt_grip_read_cnt:Landroid/widget/TextView;

    .line 90
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;

    invoke-direct {v0, p0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/button_grip;Lcom/android/samsungtest/SimpleFunctionTest/button_grip$1;)V

    .line 91
    .local v0, handler_sensor:Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;
    #calls: Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;->read_grip_read_cnt()V
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;->access$100(Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;)V

    .line 93
    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 95
    new-instance v1, Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;

    invoke-direct {v1, p0, v3}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/button_grip;Lcom/android/samsungtest/SimpleFunctionTest/button_grip$1;)V

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->mSensorListner:Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;

    .line 96
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const-string v0, "SensorTest"

    const-string v1, "onCreate/0.3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->setContentView(I)V

    .line 72
    const-string v0, "SensorTest"

    const-string v1, "onCreate/0.31111"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->grip_L:I

    .line 74
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->grip_R:I

    .line 75
    iput v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->grip_Both:I

    .line 76
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->init()V

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 222
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 111
    const-string v0, "SensorTest"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->mSensorListner:Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 114
    const-string v0, "SensorTest"

    const-string v1, "unregisterLigntSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 117
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 101
    const-string v0, "SensorTest"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->mSensorListner:Lcom/android/samsungtest/SimpleFunctionTest/button_grip$handlersensor;

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/button_grip;->mGripSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 107
    return-void
.end method
