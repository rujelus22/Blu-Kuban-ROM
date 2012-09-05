.class public Lcom/android/samsungtest/rilsupport/SensorReadingService;
.super Landroid/app/Service;
.source "SensorReadingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/rilsupport/SensorReadingService$1;,
        Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private isSendToRil:Z

.field private mSensor:Landroid/hardware/Sensor;

.field mSensorListner:Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    const-string v0, "SensorReadingService"

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->phone:Lcom/android/internal/telephony/Phone;

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->isSendToRil:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/samsungtest/rilsupport/SensorReadingService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->isSendToRil:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Landroid/hardware/SensorManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/samsungtest/rilsupport/SensorReadingService;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/samsungtest/rilsupport/SensorReadingService;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->phone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method private initSensor(I)V
    .registers 6
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;

    const-string v1, "initSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-boolean v3, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->isSendToRil:Z

    .line 45
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 46
    new-instance v0, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;-><init>(Lcom/android/samsungtest/rilsupport/SensorReadingService;Lcom/android/samsungtest/rilsupport/SensorReadingService$1;)V

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->mSensorListner:Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;

    .line 48
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;

    const-string v1, "GSensor registration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->mSensor:Landroid/hardware/Sensor;

    .line 50
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->mSensorListner:Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;

    iget-object v2, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 52
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->mSensorListner:Lcom/android/samsungtest/rilsupport/SensorReadingService$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 65
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;

    const-string v1, "unregisterLigntSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/samsungtest/rilsupport/SensorReadingService;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/samsungtest/rilsupport/SensorReadingService;->initSensor(I)V

    .line 59
    return-void
.end method
