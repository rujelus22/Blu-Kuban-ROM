.class public Lcom/sec/android/app/selftestmode/ProximityTest;
.super Landroid/app/Activity;
.source "ProximityTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/selftestmode/ProximityTest$1;,
        Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private info:Landroid/widget/TextView;

.field private mBackgroudLayout:Landroid/widget/LinearLayout;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mlistner:Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;

.field private working:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->working:Z

    .line 38
    const-string v0, "Proximity Test"

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->TAG:Ljava/lang/String;

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/selftestmode/ProximityTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/ProximityTest;->startVibration()V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/selftestmode/ProximityTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->working:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/selftestmode/ProximityTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/ProximityTest;->isWorking()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/selftestmode/ProximityTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/ProximityTest;->stopVibration()V

    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    .line 66
    const v1, 0x7f090009

    invoke-virtual {p0, v1}, Lcom/sec/android/app/selftestmode/ProximityTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->info:Landroid/widget/TextView;

    .line 67
    new-instance v1, Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;-><init>(Lcom/sec/android/app/selftestmode/ProximityTest;Lcom/sec/android/app/selftestmode/ProximityTest$1;)V

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->mlistner:Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;

    .line 68
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/selftestmode/ProximityTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 70
    .local v0, sensor:Landroid/hardware/Sensor;
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->mlistner:Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 71
    const v1, 0x7f090008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/selftestmode/ProximityTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->mBackgroudLayout:Landroid/widget/LinearLayout;

    .line 72
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->mVibrator:Landroid/os/Vibrator;

    .line 73
    return-void
.end method

.method private isWorking()V
    .registers 4

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->working:Z

    if-eqz v0, :cond_24

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->mBackgroudLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/ProximityTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->info:Landroid/widget/TextView;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    const-string v0, "Proximity"

    const-string v1, "Working"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_23
    return-void

    .line 81
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->mBackgroudLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/ProximityTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/ProximityTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->info:Landroid/widget/TextView;

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    const-string v0, "Proximity"

    const-string v1, "Release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private startVibration()V
    .registers 4

    .prologue
    .line 102
    const-string v1, "Proximity Test"

    const-string v2, "Vibration start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_14

    .line 104
    .local v0, pattern:[J
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->mVibrator:Landroid/os/Vibrator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 105
    return-void

    .line 103
    :array_14
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private stopVibration()V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 109
    const-string v0, "ProximityTest"

    const-string v1, "Vibration stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/ProximityTest;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/ProximityTest;->init()V

    .line 47
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 63
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/ProximityTest;->mlistner:Lcom/sec/android/app/selftestmode/ProximityTest$Handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 58
    const-string v0, "Proximity Test"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 51
    const-string v0, "Proximity Test"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method
