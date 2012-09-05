.class public Lcom/sec/android/app/lcdtest/AccImageTest;
.super Landroid/app/Activity;
.source "AccImageTest.java"


# instance fields
.field private accelerationTextView:Landroid/widget/TextView;

.field private accelerationTextView2:Landroid/widget/TextView;

.field private config:Lcom/sec/android/app/lcdtest/appConfig;

.field private currentACC:Ljava/lang/String;

.field private currentANG:Ljava/lang/String;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private rawDatas:[Ljava/lang/String;

.field private final sensorEventListener:Landroid/hardware/SensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private updateTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    invoke-static {}, Lcom/sec/android/app/lcdtest/appConfig;->getInstance()Lcom/sec/android/app/lcdtest/appConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    .line 104
    new-instance v0, Lcom/sec/android/app/lcdtest/AccImageTest$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/lcdtest/AccImageTest$3;-><init>(Lcom/sec/android/app/lcdtest/AccImageTest;)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->sensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/lcdtest/AccImageTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/AccImageTest;->updateGUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/lcdtest/AccImageTest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->currentACC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/lcdtest/AccImageTest;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->currentACC:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/lcdtest/AccImageTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->accelerationTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/lcdtest/AccImageTest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->currentANG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/lcdtest/AccImageTest;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->currentANG:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/lcdtest/AccImageTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->accelerationTextView2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/lcdtest/AccImageTest;)Lcom/sec/android/app/lcdtest/appConfig;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->config:Lcom/sec/android/app/lcdtest/appConfig;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/lcdtest/AccImageTest;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/lcdtest/AccImageTest;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->rawDatas:[Ljava/lang/String;

    return-object p1
.end method

.method private autorotate_on()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/AccImageTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/AccImageTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 85
    const/4 v0, 0x0

    .line 87
    :cond_17
    return v0
.end method

.method private requestSystemKeyEvent(IZ)Z
    .registers 6
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/AccImageTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 169
    :goto_a
    return v1

    .line 166
    :catch_b
    move-exception v0

    .line 167
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 169
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private updateGUI()V
    .registers 2

    .prologue
    .line 92
    new-instance v0, Lcom/sec/android/app/lcdtest/AccImageTest$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/lcdtest/AccImageTest$2;-><init>(Lcom/sec/android/app/lcdtest/AccImageTest;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/AccImageTest;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/AccImageTest;->autorotate_on()Z

    .line 43
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/AccImageTest;->setContentView(I)V

    .line 44
    const/high16 v1, 0x7f08

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/AccImageTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 45
    .local v0, mLayout:Landroid/widget/LinearLayout;
    const/high16 v1, 0x7f02

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 46
    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/AccImageTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->accelerationTextView:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/AccImageTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->accelerationTextView2:Landroid/widget/TextView;

    .line 48
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/AccImageTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->sensorManager:Landroid/hardware/SensorManager;

    .line 49
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->updateTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 81
    return-void
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 58
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/lcdtest/AccImageTest;->requestSystemKeyEvent(IZ)Z

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    .line 62
    .local v6, accelerometer:Landroid/hardware/Sensor;
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->sensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v6, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 64
    new-instance v0, Ljava/util/Timer;

    const-string v1, "AccSensor_Update"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->updateTimer:Ljava/util/Timer;

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/AccImageTest;->updateTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/lcdtest/AccImageTest$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/lcdtest/AccImageTest$1;-><init>(Lcom/sec/android/app/lcdtest/AccImageTest;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 71
    return-void
.end method
