.class public Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;
.super Landroid/app/Activity;
.source "GyroSensorGraphActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity$1;,
        Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity$SensorTestListener;
    }
.end annotation


# instance fields
.field mGyroGraph:Lcom/sec/android/app/lcdtest/GyroSensorGraph;

.field private mGyroSensor:Landroid/hardware/Sensor;

.field private mSensorListener:Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity$SensorTestListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 14
    new-instance v0, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity$SensorTestListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity$SensorTestListener;-><init>(Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;->mSensorListener:Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity$SensorTestListener;

    .line 44
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;->setContentView(I)V

    .line 22
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/lcdtest/GyroSensorGraph;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;->mGyroGraph:Lcom/sec/android/app/lcdtest/GyroSensorGraph;

    .line 24
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 25
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;->mGyroSensor:Landroid/hardware/Sensor;

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 42
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;->mSensorListener:Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity$SensorTestListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 37
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 30
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;->mSensorListener:Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity$SensorTestListener;

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/GyroSensorGraphActivity;->mGyroSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 32
    return-void
.end method
