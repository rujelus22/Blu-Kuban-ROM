.class public Lcom/sec/android/app/lcdtest/SensorTest;
.super Landroid/app/Activity;
.source "SensorTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final TEXT_SCALING_COOR:F

.field private bUseProximityAvgValue:Z

.field private btnAccImageTest:Landroid/widget/Button;

.field private btnGyroGraph:Landroid/widget/Button;

.field private btnGyroGraphDisplay:Landroid/widget/Button;

.field private btnGyroSelfTest:Landroid/widget/Button;

.field private btnLightSensor:Landroid/widget/Button;

.field private config:Lcom/sec/android/app/lcdtest/appConfig;

.field private cv:Lcom/sec/android/app/lcdtest/SensorArrow;

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mBrightnessFlag:I

.field private mGyroSensor:Landroid/hardware/Sensor;

.field private mHandler:Landroid/os/Handler;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mMagneticSensor:Landroid/hardware/Sensor;

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mSensorListener:Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTimer:Ljava/util/Timer;

.field private mVibrator:Landroid/os/Vibrator;

.field private sProximityAdcValue:Ljava/lang/String;

.field private sProximityStatus:Ljava/lang/String;

.field private txtAccelerometer:Landroid/widget/TextView;

.field private txtGyro:Landroid/widget/TextView;

.field private txtLights:Landroid/widget/TextView;

.field private txtMagnetic:Landroid/widget/TextView;

.field private txtOrientationAzi:Landroid/widget/TextView;

.field private txtOrientationPitch:Landroid/widget/TextView;

.field private txtOrientationRoll:Landroid/widget/TextView;

.field private txtProximity:Landroid/widget/TextView;

.field private txtProximityTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mVibrator:Landroid/os/Vibrator;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mHandler:Landroid/os/Handler;

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mBrightnessFlag:I

    .line 61
    const-string v0, "SensorTest"

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->TAG:Ljava/lang/String;

    .line 62
    const v0, 0x42654ca3

    iput v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->TEXT_SCALING_COOR:F

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->bUseProximityAvgValue:Z

    .line 70
    invoke-static {}, Lcom/sec/android/app/lcdtest/appConfig;->getInstance()Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    .line 363
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/lcdtest/SensorTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/SensorTest;->gyroSelfTest()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtOrientationPitch:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtOrientationRoll:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtMagnetic:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtGyro:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/os/Vibrator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/lcdtest/SensorTest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->sProximityStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/lcdtest/SensorTest;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/SensorTest;->sProximityStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/lcdtest/SensorTest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->sProximityAdcValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtProximity:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/lcdtest/SensorTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/SensorTest;->readLightSensorValue()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/lcdtest/SensorTest;)Lcom/sec/android/app/lcdtest/appConfig;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/lcdtest/SensorTest;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/SensorTest;->getProximityValue()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/lcdtest/SensorTest;)Lcom/sec/android/app/lcdtest/SensorArrow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->cv:Lcom/sec/android/app/lcdtest/SensorArrow;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtAccelerometer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/lcdtest/SensorTest;F)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/app/lcdtest/SensorTest;->changeDot(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/lcdtest/SensorTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtOrientationAzi:Landroid/widget/TextView;

    return-object v0
.end method

.method private changeDot(F)Ljava/lang/String;
    .registers 5
    .parameter "value"

    .prologue
    .line 501
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 502
    .local v0, format:Ljava/text/DecimalFormat;
    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private changeLightsField(F)V
    .registers 5
    .parameter "values"

    .prologue
    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v0, luxValue:Ljava/lang/StringBuilder;
    const-string v1, "Lights Sensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lux"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtLights:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    return-void
.end method

.method private getProximityValue()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "PATH_SENSOR_PROX_VALUE"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, sysfsPath:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 523
    .local v4, sysfsVal:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "MODEL"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "I9100"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "MODEL"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "M250S"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "MODEL"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SC02C"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "MODEL"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "I9100P"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "MODEL"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "E110S"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "MODEL"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "I9100T"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    iget-object v5, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "MODEL"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "I9100G"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 525
    :cond_7c
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v6, "PATH_SENSOR_PROX_AVG"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, avgPath:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/app/lcdtest/SensorTest;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, avgVal:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/lcdtest/SensorTest;->sProximityAdcValue:Ljava/lang/String;

    .line 528
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtProximity:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PROXIMITY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/lcdtest/SensorTest;->sProximityStatus:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "     ADC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/lcdtest/SensorTest;->sProximityAdcValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    .end local v0           #avgPath:Ljava/lang/String;
    .end local v1           #avgVal:Ljava/lang/String;
    :goto_cd
    return-void

    .line 532
    :cond_ce
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .local v2, str:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROXIMITY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    iget-object v5, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtProximity:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_cd
.end method

.method private gyroSelfTest()V
    .registers 3

    .prologue
    .line 485
    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_10

    .line 486
    :goto_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/lcdtest/GyroscopeSensorTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 487
    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/SensorTest;->startActivity(Landroid/content/Intent;)V

    .line 488
    return-void

    .line 485
    :catch_10
    move-exception v0

    goto :goto_5
.end method

.method private init()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 80
    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 81
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 82
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 83
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mProximitySensor:Landroid/hardware/Sensor;

    .line 84
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mMagneticSensor:Landroid/hardware/Sensor;

    .line 85
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mGyroSensor:Landroid/hardware/Sensor;

    .line 87
    const v3, 0x7f080042

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtAccelerometer:Landroid/widget/TextView;

    .line 88
    const v3, 0x7f080049

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtLights:Landroid/widget/TextView;

    .line 89
    const v3, 0x7f080051

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtMagnetic:Landroid/widget/TextView;

    .line 90
    const v3, 0x7f080052

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtOrientationAzi:Landroid/widget/TextView;

    .line 91
    const v3, 0x7f080053

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtOrientationPitch:Landroid/widget/TextView;

    .line 92
    const v3, 0x7f080054

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtOrientationRoll:Landroid/widget/TextView;

    .line 93
    const v3, 0x7f080045

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtProximity:Landroid/widget/TextView;

    .line 94
    const v3, 0x7f08004c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtGyro:Landroid/widget/TextView;

    .line 95
    const v3, 0x7f080044

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtProximityTitle:Landroid/widget/TextView;

    .line 96
    const v3, 0x7f080040

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 98
    const v3, 0x7f080055

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/lcdtest/SensorArrow;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->cv:Lcom/sec/android/app/lcdtest/SensorArrow;

    .line 99
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->cv:Lcom/sec/android/app/lcdtest/SensorArrow;

    const/high16 v4, 0x4234

    invoke-virtual {v3, v4}, Lcom/sec/android/app/lcdtest/SensorArrow;->setDirection(F)V

    .line 101
    const v3, 0x7f080043

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->btnAccImageTest:Landroid/widget/Button;

    .line 102
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->btnAccImageTest:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/app/lcdtest/SensorTest$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/lcdtest/SensorTest$1;-><init>(Lcom/sec/android/app/lcdtest/SensorTest;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v3, 0x7f08004d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->btnGyroSelfTest:Landroid/widget/Button;

    .line 110
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->btnGyroSelfTest:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/app/lcdtest/SensorTest$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/lcdtest/SensorTest$2;-><init>(Lcom/sec/android/app/lcdtest/SensorTest;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v3, 0x7f08004e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->btnGyroGraphDisplay:Landroid/widget/Button;

    .line 117
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->btnGyroGraphDisplay:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/app/lcdtest/SensorTest$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/lcdtest/SensorTest$3;-><init>(Lcom/sec/android/app/lcdtest/SensorTest;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v3, 0x7f08004f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->btnGyroGraph:Landroid/widget/Button;

    .line 125
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->btnGyroGraph:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/app/lcdtest/SensorTest$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/lcdtest/SensorTest$4;-><init>(Lcom/sec/android/app/lcdtest/SensorTest;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v3, 0x7f08004a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->btnLightSensor:Landroid/widget/Button;

    .line 133
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->btnLightSensor:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/app/lcdtest/SensorTest$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/lcdtest/SensorTest$5;-><init>(Lcom/sec/android/app/lcdtest/SensorTest;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v3, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;-><init>(Lcom/sec/android/app/lcdtest/SensorTest;Lcom/sec/android/app/lcdtest/SensorTest$1;)V

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorListener:Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;

    .line 141
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mVibrator:Landroid/os/Vibrator;

    .line 143
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v4, "MODEL"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "I9100"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_190

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v4, "MODEL"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "M250S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_190

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v4, "MODEL"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SC02C"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_190

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v4, "MODEL"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "I9100P"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_190

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v4, "MODEL"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "I9100T"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_190

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v4, "MODEL"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "I9100G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1af

    .line 144
    :cond_190
    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->txtProximityTitle:Landroid/widget/TextView;

    const-string v4, "Proximity Sensor   (Min/Avg/Max)"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iput-boolean v5, p0, Lcom/sec/android/app/lcdtest/SensorTest;->bUseProximityAvgValue:Z

    .line 148
    const/4 v1, 0x0

    .line 150
    .local v1, out:Ljava/io/FileWriter;
    :try_start_19a
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v4, "PATH_SENSOR_PROX_AVG"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_1a7} :catch_1b0

    .line 151
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    const/16 v3, 0x31

    :try_start_1a9
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 152
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1af} :catch_1b5

    .line 158
    .end local v2           #out:Ljava/io/FileWriter;
    :cond_1af
    :goto_1af
    return-void

    .line 153
    .restart local v1       #out:Ljava/io/FileWriter;
    :catch_1b0
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/IOException;
    :goto_1b1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1af

    .line 153
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_1b5
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_1b1
.end method

.method private readLightSensorValue()V
    .registers 6

    .prologue
    .line 506
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 507
    .local v2, luxValue:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v4, "PATH_SENSOR_LIGH_VALUE"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v1, f:Ljava/io/File;
    const/16 v3, 0x2000

    const/4 v4, 0x0

    :try_start_15
    invoke-static {v1, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 511
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/lcdtest/SensorTest;->changeLightsField(F)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_24} :catch_25

    .line 515
    :goto_24
    return-void

    .line 512
    :catch_25
    move-exception v0

    .line 513
    .local v0, e:Ljava/io/IOException;
    const-string v3, "SensorTest"

    const-string v4, "IOException : light sensor value read"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "filepath"

    .prologue
    .line 342
    const-string v3, ""

    .line 343
    .local v3, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 345
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1fa0

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_26

    .line 346
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    if-eqz v1, :cond_19

    .line 347
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_41
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_44

    move-result-object v3

    .line 352
    :cond_19
    if-eqz v1, :cond_47

    .line 354
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_20

    move-object v0, v1

    .line 360
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_1f
    :goto_1f
    return-object v3

    .line 355
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_20
    move-exception v2

    .line 356
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 357
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1f

    .line 349
    .end local v2           #e:Ljava/io/IOException;
    :catch_26
    move-exception v2

    .line 350
    .local v2, e:Ljava/lang/Exception;
    :goto_27
    :try_start_27
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_35

    .line 352
    if-eqz v0, :cond_1f

    .line 354
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_1f

    .line 355
    :catch_30
    move-exception v2

    .line 356
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 352
    .end local v2           #e:Ljava/io/IOException;
    :catchall_35
    move-exception v4

    :goto_36
    if-eqz v0, :cond_3b

    .line 354
    :try_start_38
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 357
    :cond_3b
    :goto_3b
    throw v4

    .line 355
    :catch_3c
    move-exception v2

    .line 356
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 352
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_41
    move-exception v4

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_36

    .line 349
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_44
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_27

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :cond_47
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1f
.end method

.method private turnOffSensors()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 301
    const/4 v1, 0x0

    .line 303
    .local v1, out:Ljava/io/FileWriter;
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/SensorTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "autobrightness"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_42

    .line 306
    :try_start_e
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v4, "PATH_SENSOR_LIGH_CMD"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1b} :catch_43

    .line 307
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    const/16 v3, 0x30

    :try_start_1d
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 308
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/SensorTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "autobrightness"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 309
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 311
    new-instance v1, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v4, "PATH_SENSOR_LIGH_CMD"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_3a} :catch_48

    .line 312
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    const/16 v3, 0x30

    :try_start_3c
    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(I)V

    .line 313
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_42} :catch_43

    .line 339
    :cond_42
    :goto_42
    return-void

    .line 314
    :catch_43
    move-exception v0

    .line 315
    .local v0, e:Ljava/io/IOException;
    :goto_44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 314
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_48
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_44
.end method

.method private turnOnSensors()V
    .registers 7

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 260
    .local v1, out:Ljava/io/FileWriter;
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/SensorTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "autobrightness"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_42

    .line 263
    :try_start_e
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v4, "PATH_SENSOR_LIGH_CMD"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1b} :catch_43

    .line 264
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    const/16 v3, 0x31

    :try_start_1d
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/SensorTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "autobrightness"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 268
    new-instance v1, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v4, "PATH_SENSOR_LIGH_CMD"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_3a} :catch_48

    .line 269
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    const/16 v3, 0x31

    :try_start_3c
    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(I)V

    .line 270
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_42} :catch_43

    .line 297
    :cond_42
    :goto_42
    return-void

    .line 271
    :catch_43
    move-exception v0

    .line 272
    .local v0, e:Ljava/io/IOException;
    :goto_44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 271
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_48
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_44
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/SensorTest;->setContentView(I)V

    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/SensorTest;->init()V

    .line 77
    return-void
.end method

.method public onDestroy()V
    .registers 6

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 165
    iget-boolean v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->bUseProximityAvgValue:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 166
    const/4 v1, 0x0

    .line 168
    .local v1, out:Ljava/io/FileWriter;
    :try_start_9
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v4, "PATH_SENSOR_PROX_AVG"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_1f

    .line 169
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    const/16 v3, 0x30

    :try_start_18
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(I)V

    .line 170
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1e} :catch_24

    .line 175
    .end local v2           #out:Ljava/io/FileWriter;
    :cond_1e
    :goto_1e
    return-void

    .line 171
    .restart local v1       #out:Ljava/io/FileWriter;
    :catch_1f
    move-exception v0

    .line 172
    .local v0, e:Ljava/io/IOException;
    :goto_20
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .line 171
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_24
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_20
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 237
    const-string v0, "SensorTest"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorListener:Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_17

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 242
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v1, "BOOL_SENSOR_CMD_SUPPORT"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    if-ne v0, v1, :cond_2b

    .line 248
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/SensorTest;->turnOffSensors()V

    .line 253
    :cond_2b
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 254
    return-void
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/4 v3, 0x2

    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 180
    const-string v0, "SensorTest"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorListener:Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorListener:Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorListener:Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mOrientationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorListener:Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mMagneticSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mSensorListener:Lcom/sec/android/app/lcdtest/SensorTest$SensorTestListener;

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mGyroSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    const-string v1, "BOOL_SENSOR_CMD_SUPPORT"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/lcdtest/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    if-ne v0, v1, :cond_47

    .line 197
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/SensorTest;->turnOnSensors()V

    .line 204
    :cond_47
    const/16 v6, 0x3e8

    .line 208
    .local v6, SLEEPTIME:I
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mTimer:Ljava/util/Timer;

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/SensorTest;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/lcdtest/SensorTest$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/lcdtest/SensorTest$6;-><init>(Lcom/sec/android/app/lcdtest/SensorTest;)V

    const-wide/16 v2, 0x0

    int-to-long v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 234
    return-void
.end method
