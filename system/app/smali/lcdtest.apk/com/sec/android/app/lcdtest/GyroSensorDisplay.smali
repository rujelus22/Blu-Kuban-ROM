.class public Lcom/sec/android/app/lcdtest/GyroSensorDisplay;
.super Landroid/app/Activity;
.source "GyroSensorDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/lcdtest/GyroSensorDisplay$SensorTestListener;,
        Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryAdaptor;,
        Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final TEXT_SCALING_COOR:F

.field private mAdaptor:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryAdaptor;

.field private mCount:I

.field private mGyroSensor:Landroid/hardware/Sensor;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mSensorListener:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$SensorTestListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const-string v0, "GyroSensorDisplay"

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->TAG:Ljava/lang/String;

    .line 30
    const v0, 0x42654ca3

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->TEXT_SCALING_COOR:F

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mValueList:Ljava/util/List;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mCount:I

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mHandler:Landroid/os/Handler;

    .line 164
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mCount:I

    return v0
.end method

.method static synthetic access$104(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mX:F

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mY:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mZ:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mValueList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryAdaptor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mAdaptor:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryAdaptor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;FFF)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->getValueFromSensor(FFF)V

    return-void
.end method

.method private displayValueFromSensor()V
    .registers 7

    .prologue
    .line 73
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 74
    .local v0, mTimer:Ljava/util/Timer;
    new-instance v1, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;-><init>(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 88
    return-void
.end method

.method private getValueFromSensor(FFF)V
    .registers 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 67
    iput p1, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mX:F

    .line 68
    iput p2, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mY:F

    .line 69
    iput p3, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mZ:F

    .line 70
    return-void
.end method

.method private initTextView()V
    .registers 4

    .prologue
    .line 91
    new-instance v0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryAdaptor;

    const v1, 0x7f03000e

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mValueList:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryAdaptor;-><init>(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mAdaptor:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryAdaptor;

    .line 92
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mListView:Landroid/widget/ListView;

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mAdaptor:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$HistoryAdaptor;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->initTextView()V

    .line 48
    new-instance v0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$SensorTestListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay$SensorTestListener;-><init>(Lcom/sec/android/app/lcdtest/GyroSensorDisplay;Lcom/sec/android/app/lcdtest/GyroSensorDisplay$1;)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mSensorListener:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$SensorTestListener;

    .line 49
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mSensorManager:Landroid/hardware/SensorManager;

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mGyroSensor:Landroid/hardware/Sensor;

    .line 51
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mSensorListener:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$SensorTestListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mSensorListener:Lcom/sec/android/app/lcdtest/GyroSensorDisplay$SensorTestListener;

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->mGyroSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/GyroSensorDisplay;->displayValueFromSensor()V

    .line 59
    return-void
.end method
