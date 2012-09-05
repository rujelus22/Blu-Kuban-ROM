.class public Lcom/samsung/swift/sensor/MotionShakeManager;
.super Ljava/lang/Object;
.source "MotionShakeManager.java"


# static fields
.field private static final TAGNAME:Ljava/lang/String;

.field private static motionShakeListener:Lcom/samsung/swift/sensor/MotionShakeListener;

.field private static running:Z

.field private static sensor:Landroid/hardware/Sensor;

.field private static sensorManager:Landroid/hardware/SensorManager;

.field private static sensorSupported:Ljava/lang/Boolean;

.field private static volatile shakingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 14
    const-class v0, Lcom/samsung/swift/sensor/MotionShakeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/sensor/MotionShakeManager;->TAGNAME:Ljava/lang/String;

    .line 16
    sput-boolean v1, Lcom/samsung/swift/sensor/MotionShakeManager;->shakingEnabled:Z

    .line 18
    sput-boolean v1, Lcom/samsung/swift/sensor/MotionShakeManager;->running:Z

    .line 22
    new-instance v0, Lcom/samsung/swift/sensor/MotionShakeListener;

    invoke-direct {v0}, Lcom/samsung/swift/sensor/MotionShakeListener;-><init>()V

    sput-object v0, Lcom/samsung/swift/sensor/MotionShakeManager;->motionShakeListener:Lcom/samsung/swift/sensor/MotionShakeListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isListening()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/samsung/swift/sensor/MotionShakeManager;->running:Z

    return v0
.end method

.method private static isSensorSupported()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 42
    sget-object v1, Lcom/samsung/swift/sensor/MotionShakeManager;->sensorSupported:Ljava/lang/Boolean;

    if-nez v1, :cond_2d

    .line 43
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 44
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "sensor"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    sput-object v1, Lcom/samsung/swift/sensor/MotionShakeManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 46
    sget-object v1, Lcom/samsung/swift/sensor/MotionShakeManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 47
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v3, Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_34

    move v1, v2

    :goto_28
    invoke-direct {v3, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v3, Lcom/samsung/swift/sensor/MotionShakeManager;->sensorSupported:Ljava/lang/Boolean;

    .line 53
    .end local v0           #sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_2d
    :goto_2d
    sget-object v1, Lcom/samsung/swift/sensor/MotionShakeManager;->sensorSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 47
    .restart local v0       #sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_34
    const/4 v1, 0x0

    goto :goto_28

    .line 49
    .end local v0           #sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_36
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/samsung/swift/sensor/MotionShakeManager;->sensorSupported:Ljava/lang/Boolean;

    goto :goto_2d
.end method

.method public static isShakingEnabled()Z
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/samsung/swift/sensor/MotionShakeManager;->shakingEnabled:Z

    return v0
.end method

.method public static setOnShakeListener(Lcom/samsung/swift/sensor/MotionShakeListener$OnShakeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 80
    sget-object v0, Lcom/samsung/swift/sensor/MotionShakeManager;->motionShakeListener:Lcom/samsung/swift/sensor/MotionShakeListener;

    invoke-virtual {v0, p0}, Lcom/samsung/swift/sensor/MotionShakeListener;->setOnMotionShakeListener(Lcom/samsung/swift/sensor/MotionShakeListener$OnShakeListener;)V

    .line 81
    return-void
.end method

.method public static setShakingEnabled(I)V
    .registers 3
    .parameter "motionSetting"

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-static {}, Lcom/samsung/swift/sensor/MotionShakeManager;->isSensorSupported()Z

    move-result v0

    if-ne v0, v1, :cond_c

    if-ne p0, v1, :cond_c

    .line 27
    sput-boolean v1, Lcom/samsung/swift/sensor/MotionShakeManager;->shakingEnabled:Z

    .line 30
    :goto_b
    return-void

    .line 29
    :cond_c
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/swift/sensor/MotionShakeManager;->shakingEnabled:Z

    goto :goto_b
.end method

.method public static startListening()V
    .registers 5

    .prologue
    .line 57
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    sput-object v1, Lcom/samsung/swift/sensor/MotionShakeManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 58
    sget-object v1, Lcom/samsung/swift/sensor/MotionShakeManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_31

    .line 61
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    sput-object v1, Lcom/samsung/swift/sensor/MotionShakeManager;->sensor:Landroid/hardware/Sensor;

    .line 62
    sget-object v1, Lcom/samsung/swift/sensor/MotionShakeManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/samsung/swift/sensor/MotionShakeManager;->motionShakeListener:Lcom/samsung/swift/sensor/MotionShakeListener;

    sget-object v3, Lcom/samsung/swift/sensor/MotionShakeManager;->sensor:Landroid/hardware/Sensor;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/swift/sensor/MotionShakeManager;->running:Z

    .line 65
    :cond_31
    sget-object v1, Lcom/samsung/swift/sensor/MotionShakeManager;->TAGNAME:Ljava/lang/String;

    const-string v2, "startListening"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public static stopListening()V
    .registers 2

    .prologue
    .line 69
    sget-object v0, Lcom/samsung/swift/sensor/MotionShakeManager;->TAGNAME:Ljava/lang/String;

    const-string v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/swift/sensor/MotionShakeManager;->running:Z

    .line 73
    :try_start_a
    sget-object v0, Lcom/samsung/swift/sensor/MotionShakeManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/samsung/swift/sensor/MotionShakeManager;->motionShakeListener:Lcom/samsung/swift/sensor/MotionShakeListener;

    if-eqz v0, :cond_19

    .line 74
    sget-object v0, Lcom/samsung/swift/sensor/MotionShakeManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/samsung/swift/sensor/MotionShakeManager;->motionShakeListener:Lcom/samsung/swift/sensor/MotionShakeListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1a

    .line 77
    :cond_19
    :goto_19
    return-void

    .line 76
    :catch_1a
    move-exception v0

    goto :goto_19
.end method
