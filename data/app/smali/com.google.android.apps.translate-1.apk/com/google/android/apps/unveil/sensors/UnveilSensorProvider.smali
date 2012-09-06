.class public Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;
.super Ljava/lang/Object;
.source "UnveilSensorProvider.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final ORIENTATION_CLOCKWISE_180:I = 0xb4

.field public static final ORIENTATION_CLOCKWISE_270:I = 0x10e

.field public static final ORIENTATION_CLOCKWISE_90:I = 0x5a

.field public static final ORIENTATION_NATURAL:I


# instance fields
.field private accelDevice:Landroid/hardware/Sensor;

.field private final accelerationSensor:Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;

.field private final currentOrientationInterval:Lcom/google/android/apps/unveil/env/Stopwatch;

.field private lastGoodOrientation:I

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private magDevice:Landroid/hardware/Sensor;

.field private final magneticSensor:Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;

.field private final orientationListener:Landroid/view/OrientationEventListener;

.field private final orientationSensor:Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v2, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 36
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->lastGoodOrientation:I

    .line 40
    new-instance v2, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;

    invoke-direct {v2}, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->accelerationSensor:Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;

    .line 41
    new-instance v2, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;

    invoke-direct {v2}, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->magneticSensor:Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;

    .line 45
    new-instance v2, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;-><init>(Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->orientationSensor:Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;

    .line 46
    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->sensorManager:Landroid/hardware/SensorManager;

    .line 47
    new-instance v2, Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-direct {v2}, Lcom/google/android/apps/unveil/env/Stopwatch;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->currentOrientationInterval:Lcom/google/android/apps/unveil/env/Stopwatch;

    .line 48
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->currentOrientationInterval:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Stopwatch;->start()V

    .line 50
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_83

    .line 51
    new-instance v2, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider$1;-><init>(Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->orientationListener:Landroid/view/OrientationEventListener;

    .line 61
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 62
    .local v1, magSensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, accelSensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6f

    .line 65
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->magDevice:Landroid/hardware/Sensor;

    .line 70
    :goto_60
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_79

    .line 71
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->accelDevice:Landroid/hardware/Sensor;

    .line 79
    .end local v0           #accelSensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v1           #magSensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :goto_6e
    return-void

    .line 67
    .restart local v0       #accelSensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v1       #magSensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_6f
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Couldn\'t find a magnetic field sensor."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_60

    .line 73
    :cond_79
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Couldn\'t find an accelerometer."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6e

    .line 76
    .end local v0           #accelSensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v1           #magSensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_83
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "No SensorManager available."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->orientationListener:Landroid/view/OrientationEventListener;

    goto :goto_6e
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;)Lcom/google/android/apps/unveil/env/Stopwatch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->currentOrientationInterval:Lcom/google/android/apps/unveil/env/Stopwatch;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->lastGoodOrientation:I

    return p1
.end method

.method public static roundOrientation(I)I
    .registers 3
    .parameter "orientation"

    .prologue
    const/4 v0, -0x1

    .line 140
    if-ne p0, v0, :cond_4

    .line 158
    :goto_3
    return v0

    .line 144
    :cond_4
    rem-int/lit16 v0, p0, 0x168

    .line 147
    .local v0, roundedOrientation:I
    const/16 v1, 0x2d

    if-ge v0, v1, :cond_c

    .line 148
    const/4 v0, 0x0

    goto :goto_3

    .line 149
    :cond_c
    const/16 v1, 0x87

    if-ge v0, v1, :cond_13

    .line 150
    const/16 v0, 0x5a

    goto :goto_3

    .line 151
    :cond_13
    const/16 v1, 0xe1

    if-ge v0, v1, :cond_1a

    .line 152
    const/16 v0, 0xb4

    goto :goto_3

    .line 153
    :cond_1a
    const/16 v1, 0x13b

    if-ge v0, v1, :cond_21

    .line 154
    const/16 v0, 0x10e

    goto :goto_3

    .line 156
    :cond_21
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static toLocationProto(Landroid/location/Location;)Lcom/google/goggles/LocationProtos$Location;
    .registers 6
    .parameter "location"

    .prologue
    .line 162
    if-nez p0, :cond_4

    .line 163
    const/4 v2, 0x0

    .line 182
    :goto_3
    return-object v2

    .line 166
    :cond_4
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->setLatDegrees(D)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->setLngDegrees(D)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    .line 170
    .local v0, latLngBuilder:Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->setLatLng(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/goggles/LocationProtos$Location$Builder;->setTimestampMs(J)Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v1

    .line 174
    .local v1, locationBuilder:Lcom/google/goggles/LocationProtos$Location$Builder;
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 175
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/goggles/LocationProtos$Location$Builder;->setLatLngAccuracyMeters(F)Lcom/google/goggles/LocationProtos$Location$Builder;

    .line 178
    :cond_35
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 179
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/goggles/LocationProtos$Location$Builder;->setAltitudeMeters(F)Lcom/google/goggles/LocationProtos$Location$Builder;

    .line 182
    :cond_43
    invoke-virtual {v1}, Lcom/google/goggles/LocationProtos$Location$Builder;->build()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v2

    goto :goto_3
.end method


# virtual methods
.method public getAccelerationSensor()Lcom/google/android/apps/unveil/sensors/UnveilSensor;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->accelerationSensor:Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;

    return-object v0
.end method

.method public getMagneticSensor()Lcom/google/android/apps/unveil/sensors/UnveilSensor;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->magneticSensor:Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;

    return-object v0
.end method

.method public getOrientationSensor()Lcom/google/android/apps/unveil/sensors/UnveilSensor;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->orientationSensor:Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;

    return-object v0
.end method

.method public getRoundedDeviceOrientation()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->lastGoodOrientation:I

    invoke-static {v0}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method public off()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 95
    return-void
.end method

.method public on()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 82
    const/4 v0, 0x3

    .line 83
    .local v0, sensorDelay:I
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->accelDevice:Landroid/hardware/Sensor;

    if-eqz v1, :cond_d

    .line 84
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->accelDevice:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 86
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->magDevice:Landroid/hardware/Sensor;

    if-eqz v1, :cond_18

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->magDevice:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 89
    :cond_18
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    .line 90
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 101
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8
    .parameter "event"

    .prologue
    .line 105
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 106
    .local v2, sensor:Landroid/hardware/Sensor;
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 108
    .local v0, eventNanos:J
    monitor-enter p0

    .line 109
    :try_start_5
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    .line 110
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->accelerationSensor:Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;

    iget v4, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;->set(JI[F)V

    .line 116
    :goto_15
    monitor-exit p0

    .line 117
    return-void

    .line 111
    :cond_17
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 112
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->magneticSensor:Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;

    iget v4, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/google/android/apps/unveil/sensors/UnveilGenericSensor;->set(JI[F)V

    goto :goto_15

    .line 116
    :catchall_28
    move-exception v3

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw v3

    .line 114
    :cond_2b
    :try_start_2b
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected sensor type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_48
    .catchall {:try_start_2b .. :try_end_48} :catchall_28
.end method
