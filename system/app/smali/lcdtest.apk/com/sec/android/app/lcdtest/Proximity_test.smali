.class public Lcom/sec/android/app/lcdtest/Proximity_test;
.super Landroid/app/Activity;
.source "Proximity_test.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/lcdtest/Proximity_test$1;,
        Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;
    }
.end annotation


# instance fields
.field private Bacckview:Landroid/view/View;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mlistner:Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;

.field private txtproximity:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/lcdtest/Proximity_test;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test;->txtproximity:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/lcdtest/Proximity_test;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test;->Bacckview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/lcdtest/Proximity_test;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/Proximity_test;->startVibrate()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/lcdtest/Proximity_test;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/Proximity_test;->stopVibrate()V

    return-void
.end method

.method private startVibrate()V
    .registers 4

    .prologue
    .line 52
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_e

    .line 53
    .local v0, pattern:[J
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/Proximity_test;->mVibrator:Landroid/os/Vibrator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 54
    return-void

    .line 52
    nop

    :array_e
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private stopVibrate()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 58
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/Proximity_test;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test;->mVibrator:Landroid/os/Vibrator;

    .line 29
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/Proximity_test;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test;->mSensorManager:Landroid/hardware/SensorManager;

    .line 30
    new-instance v0, Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;-><init>(Lcom/sec/android/app/lcdtest/Proximity_test;Lcom/sec/android/app/lcdtest/Proximity_test$1;)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test;->mlistner:Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;

    .line 31
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/Proximity_test;->setContentView(I)V

    .line 32
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/Proximity_test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test;->Bacckview:Landroid/view/View;

    .line 33
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/lcdtest/Proximity_test;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test;->txtproximity:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test;->txtproximity:Landroid/widget/TextView;

    const-string v1, "Close to activiate!!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/Proximity_test;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/lcdtest/Proximity_test;->mlistner:Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/lcdtest/Proximity_test;->stopVibrate()V

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 49
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 40
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/Proximity_test;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 41
    .local v0, sensor:Landroid/hardware/Sensor;
    iget-object v1, p0, Lcom/sec/android/app/lcdtest/Proximity_test;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/Proximity_test;->mlistner:Lcom/sec/android/app/lcdtest/Proximity_test$handlersensor;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 42
    return-void
.end method
