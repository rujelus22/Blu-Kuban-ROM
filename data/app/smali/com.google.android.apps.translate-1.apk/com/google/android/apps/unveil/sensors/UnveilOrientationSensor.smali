.class public Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;
.super Lcom/google/android/apps/unveil/sensors/UnveilSensor;
.source "UnveilOrientationSensor.java"

# interfaces
.implements Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;


# static fields
.field private static final AZIMUTH_OUTLIER_DELTA_DISCARD_THRESHOLD:F = 10.0f

.field private static final AZIMUTH_OUTLIER_THRESHOLD:F = 30.0f

.field private static final SMOOTHING_FACTOR:F = 0.4f

.field private static final TAG:Ljava/lang/String; = "OrientationSensor"

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final accelerometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

.field private final context:Landroid/content/Context;

.field private final correctedRotationMatrix:[F

.field private forceLandscape:Z

.field private lastCalculatedTime:J

.field private final magnetometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

.field private final portraitRotationMatrix:[F

.field private prevAzimuthDelta:F

.field private final sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

.field private values:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;Landroid/content/Context;)V
    .registers 5
    .parameter "sensorProvider"
    .parameter "context"

    .prologue
    const/16 v1, 0x10

    .line 53
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/UnveilSensor;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    .line 55
    iput-object p2, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->context:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->getAccelerationSensor()Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->accelerometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    .line 57
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->getMagneticSensor()Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->magnetometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->accelerometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->registerListener(Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;)Z

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->magnetometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->registerListener(Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;)Z

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->prevAzimuthDelta:F

    .line 63
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->portraitRotationMatrix:[F

    .line 64
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->correctedRotationMatrix:[F

    .line 65
    return-void
.end method

.method private canCalculateValues()Z
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->accelerometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->getValues()[F

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->magnetometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->getValues()[F

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->accelerometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    iget v0, v0, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->accuracy:I

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->magnetometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    iget v0, v0, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->accuracy:I

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private isOutlier(FF)Z
    .registers 9
    .parameter "azimuthDistance"
    .parameter "prevAzimuthDistance"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 219
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41f0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_23

    move v0, v2

    .line 222
    .local v0, sampleIsOutlier:Z
    :goto_d
    sub-float v4, p2, p1

    invoke-static {v4}, Lcom/google/android/apps/unveil/env/NumberUtils;->normalizeDegrees(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x4120

    cmpl-float v4, v4, v5

    if-lez v4, :cond_25

    move v1, v2

    .line 226
    .local v1, samplesAreSignificantlyDifferent:Z
    :goto_1e
    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    :goto_22
    return v2

    .end local v0           #sampleIsOutlier:Z
    .end local v1           #samplesAreSignificantlyDifferent:Z
    :cond_23
    move v0, v3

    .line 219
    goto :goto_d

    .restart local v0       #sampleIsOutlier:Z
    :cond_25
    move v1, v3

    .line 222
    goto :goto_1e

    .restart local v1       #samplesAreSignificantlyDifferent:Z
    :cond_27
    move v2, v3

    .line 226
    goto :goto_22
.end method


# virtual methods
.method public getValues()[F
    .registers 6

    .prologue
    .line 162
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/UnveilContext;

    .line 164
    .local v0, application:Lcom/google/android/apps/unveil/UnveilContext;
    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getViewport()Lcom/google/android/apps/unveil/env/Viewport;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/unveil/env/Viewport;->getNaturalOrientation(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2a

    .line 168
    const/16 v1, 0x10e

    .line 173
    .local v1, landscapeOrientation:I
    :goto_17
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->getRoundedDeviceOrientation()I

    move-result v2

    .line 174
    .local v2, rotation:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_21

    .line 175
    const/4 v2, 0x0

    .line 177
    :cond_21
    iget-boolean v3, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->forceLandscape:Z

    if-eqz v3, :cond_2c

    .end local v1           #landscapeOrientation:I
    :goto_25
    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->getValues(I)[F

    move-result-object v3

    return-object v3

    .line 170
    .end local v2           #rotation:I
    :cond_2a
    const/4 v1, 0x0

    .restart local v1       #landscapeOrientation:I
    goto :goto_17

    .restart local v2       #rotation:I
    :cond_2c
    move v1, v2

    .line 177
    goto :goto_25
.end method

.method public getValues(I)[F
    .registers 13
    .parameter "deviceOrientation"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->canCalculateValues()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-wide v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->lastCalculatedTime:J

    iget-wide v9, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->currentReadingNanos:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_11

    .line 83
    :cond_e
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->values:[F

    .line 149
    :goto_10
    return-object v7

    .line 86
    :cond_11
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->accelerometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    invoke-virtual {v7}, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->getValues()[F

    move-result-object v0

    .line 87
    .local v0, accelerometerValues:[F
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->magnetometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    invoke-virtual {v7}, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->getValues()[F

    move-result-object v3

    .line 90
    .local v3, magnetometerValues:[F
    const/4 v7, 0x3

    new-array v6, v7, [F

    .line 92
    .local v6, orientation:[F
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->portraitRotationMatrix:[F

    const/4 v8, 0x0

    invoke-static {v7, v8, v0, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 95
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->values:[F

    goto :goto_10

    .line 100
    :cond_2c
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->values:[F

    if-nez v7, :cond_35

    .line 101
    const/4 v7, 0x3

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->values:[F

    .line 105
    :cond_35
    const/4 v4, 0x1

    .line 106
    .local v4, newX:I
    const/4 v5, 0x2

    .line 110
    .local v5, newY:I
    sparse-switch p1, :sswitch_data_a2

    .line 126
    :goto_3a
    :sswitch_3a
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->portraitRotationMatrix:[F

    iget-object v8, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->correctedRotationMatrix:[F

    invoke-static {v7, v4, v5, v8}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move-result v7

    if-nez v7, :cond_4b

    .line 128
    const-string v7, "OrientationSensor"

    const-string v8, "Could not remap coord system"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_4b
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->correctedRotationMatrix:[F

    invoke-static {v7, v6}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 135
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->values:[F

    const/4 v8, 0x0

    aget v2, v7, v8

    .line 136
    .local v2, curAzimuth:F
    const/4 v7, 0x0

    aget v7, v6, v7

    sub-float/2addr v7, v2

    invoke-static {v7}, Lcom/google/android/apps/unveil/env/NumberUtils;->normalizeDegrees(F)F

    move-result v1

    .line 138
    .local v1, azimuthDelta:F
    iget v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->prevAzimuthDelta:F

    invoke-direct {p0, v1, v7}, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->isOutlier(FF)Z

    move-result v7

    if-nez v7, :cond_73

    .line 140
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->values:[F

    const/4 v8, 0x0

    const v9, 0x3ecccccd

    mul-float/2addr v9, v1

    add-float/2addr v9, v2

    invoke-static {v9}, Lcom/google/android/apps/unveil/env/NumberUtils;->normalizeDegrees(F)F

    move-result v9

    aput v9, v7, v8

    .line 143
    :cond_73
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->values:[F

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-static {v9}, Lcom/google/android/apps/unveil/env/NumberUtils;->radiansToNormalizedDegrees(F)F

    move-result v9

    aput v9, v7, v8

    .line 144
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->values:[F

    const/4 v8, 0x2

    const/4 v9, 0x2

    aget v9, v6, v9

    invoke-static {v9}, Lcom/google/android/apps/unveil/env/NumberUtils;->radiansToNormalizedDegrees(F)F

    move-result v9

    aput v9, v7, v8

    .line 146
    iput v1, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->prevAzimuthDelta:F

    .line 147
    iget-wide v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->currentReadingNanos:J

    iput-wide v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->lastCalculatedTime:J

    .line 149
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->values:[F

    goto/16 :goto_10

    .line 114
    .end local v1           #azimuthDelta:F
    .end local v2           #curAzimuth:F
    :sswitch_95
    const/4 v4, 0x2

    .line 115
    const/16 v5, 0x81

    .line 116
    goto :goto_3a

    .line 118
    :sswitch_99
    const/16 v4, 0x81

    .line 119
    const/16 v5, 0x82

    .line 120
    goto :goto_3a

    .line 122
    :sswitch_9e
    const/16 v4, 0x82

    .line 123
    const/4 v5, 0x1

    goto :goto_3a

    .line 110
    :sswitch_data_a2
    .sparse-switch
        0x0 -> :sswitch_3a
        0x5a -> :sswitch_9e
        0xb4 -> :sswitch_99
        0x10e -> :sswitch_95
    .end sparse-switch
.end method

.method public onSet(Lcom/google/android/apps/unveil/sensors/UnveilSensor;)V
    .registers 6
    .parameter "sensor"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->accelerometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    iget-wide v0, v0, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->currentReadingNanos:J

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->magnetometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    iget-wide v2, v2, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->currentReadingNanos:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->accelerometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    iget-wide v0, v0, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->currentReadingNanos:J

    :goto_10
    iput-wide v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->currentReadingNanos:J

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->accelerometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    iget v0, v0, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->accuracy:I

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->magnetometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    iget v1, v1, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->accuracy:I

    if-le v0, v1, :cond_31

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->magnetometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    iget v0, v0, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->accuracy:I

    :goto_20
    iput v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->accuracy:I

    .line 192
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->canCalculateValues()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 193
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->triggerOnSet()V

    .line 195
    :cond_2b
    return-void

    .line 183
    :cond_2c
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->magnetometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    iget-wide v0, v0, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->currentReadingNanos:J

    goto :goto_10

    .line 188
    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->accelerometer:Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    iget v0, v0, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->accuracy:I

    goto :goto_20
.end method

.method public setForceLandscape(Z)V
    .registers 2
    .parameter "forceLandscape"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/sensors/UnveilOrientationSensor;->forceLandscape:Z

    .line 69
    return-void
.end method
