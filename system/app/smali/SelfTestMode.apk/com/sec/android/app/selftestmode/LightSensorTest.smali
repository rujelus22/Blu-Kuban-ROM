.class public Lcom/sec/android/app/selftestmode/LightSensorTest;
.super Landroid/app/Activity;
.source "LightSensorTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/selftestmode/LightSensorTest$1;,
        Lcom/sec/android/app/selftestmode/LightSensorTest$Handlersensor;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private iluxval:I

.field private info:Landroid/widget/TextView;

.field private level:I

.field private mBackgroudLayout:Landroid/widget/LinearLayout;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mlistner:Lcom/sec/android/app/selftestmode/LightSensorTest$Handlersensor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const-string v0, "LightSensorTest"

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->TAG:Ljava/lang/String;

    .line 114
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/selftestmode/LightSensorTest;Landroid/hardware/SensorEvent;F)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/selftestmode/LightSensorTest;->changeLightSensor(Landroid/hardware/SensorEvent;F)V

    return-void
.end method

.method private changeLightSensor(Landroid/hardware/SensorEvent;F)V
    .registers 7
    .parameter "event"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 77
    float-to-int v0, p2

    iput v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->iluxval:I

    .line 78
    iget v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->iluxval:I

    const/16 v1, 0xfa

    if-ge v0, v1, :cond_46

    .line 79
    iput v3, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->level:I

    .line 85
    :goto_c
    const-string v0, "LightSensorTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iluxval : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->iluxval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->level:I

    if-ne v0, v3, :cond_54

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->mBackgroudLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/LightSensorTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->info:Landroid/widget/TextView;

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/LightSensorTest;->startVibration()V

    .line 97
    :goto_45
    return-void

    .line 80
    :cond_46
    iget v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->iluxval:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_50

    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->level:I

    goto :goto_c

    .line 83
    :cond_50
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->level:I

    goto :goto_c

    .line 92
    :cond_54
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->mBackgroudLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/LightSensorTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/LightSensorTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->info:Landroid/widget/TextView;

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/LightSensorTest;->stopVibration()V

    goto :goto_45
.end method

.method private init()V
    .registers 5

    .prologue
    .line 67
    const v1, 0x7f090009

    invoke-virtual {p0, v1}, Lcom/sec/android/app/selftestmode/LightSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->info:Landroid/widget/TextView;

    .line 68
    new-instance v1, Lcom/sec/android/app/selftestmode/LightSensorTest$Handlersensor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/selftestmode/LightSensorTest$Handlersensor;-><init>(Lcom/sec/android/app/selftestmode/LightSensorTest;Lcom/sec/android/app/selftestmode/LightSensorTest$1;)V

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->mlistner:Lcom/sec/android/app/selftestmode/LightSensorTest$Handlersensor;

    .line 69
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/selftestmode/LightSensorTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 71
    .local v0, sensor:Landroid/hardware/Sensor;
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->mlistner:Lcom/sec/android/app/selftestmode/LightSensorTest$Handlersensor;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 72
    const v1, 0x7f090008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/selftestmode/LightSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->mBackgroudLayout:Landroid/widget/LinearLayout;

    .line 73
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->mVibrator:Landroid/os/Vibrator;

    .line 74
    return-void
.end method

.method private startVibration()V
    .registers 4

    .prologue
    .line 106
    const-string v0, "LightSensorTest"

    const-string v1, "Vibration start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->mVibrator:Landroid/os/Vibrator;

    const-wide/32 v1, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 108
    return-void
.end method

.method private stopVibration()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 112
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/LightSensorTest;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/LightSensorTest;->init()V

    .line 48
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 64
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/LightSensorTest;->mlistner:Lcom/sec/android/app/selftestmode/LightSensorTest$Handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 58
    const-string v0, "LightSensorTest"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 60
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 52
    const-string v0, "LightSensorTest"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method
