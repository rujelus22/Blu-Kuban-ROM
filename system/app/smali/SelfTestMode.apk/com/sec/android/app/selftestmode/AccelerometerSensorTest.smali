.class public Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;
.super Landroid/app/Activity;
.source "AccelerometerSensorTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$1;,
        Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;
    }
.end annotation


# instance fields
.field private final DOWN:I

.field private final LEFT:I

.field private final RIGHT:I

.field private final TAG:Ljava/lang/String;

.field private final UP:I

.field curr_orientation:I

.field iv:Landroid/widget/ImageView;

.field private mSensor:Landroid/hardware/Sensor;

.field mSensorListner:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->UP:I

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->DOWN:I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->LEFT:I

    .line 34
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->RIGHT:I

    .line 38
    const-string v0, "AccelerometerSensorTest"

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->TAG:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->setContentView(I)V

    .line 45
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->mSensor:Landroid/hardware/Sensor;

    .line 48
    const/high16 v0, 0x7f09

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->iv:Landroid/widget/ImageView;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->iv:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 51
    new-instance v0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;-><init>(Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$1;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->mSensorListner:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->curr_orientation:I

    .line 53
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 65
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->mSensorListner:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 60
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/AccelerometerSensorTest;->mSensorListner:Lcom/sec/android/app/selftestmode/AccelerometerSensorTest$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 71
    return-void
.end method
