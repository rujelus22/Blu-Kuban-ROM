.class public Lcom/google/android/apps/plus/phone/ShakeDetector;
.super Ljava/lang/Object;
.source "ShakeDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/ShakeDetector$ShakeEventListener;
    }
.end annotation


# static fields
.field private static volatile mShakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;


# instance fields
.field private mCurrentAcceleration:F

.field private mEventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/google/android/apps/plus/phone/ShakeDetector$ShakeEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSensorRegistered:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeStartTime:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mEventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 52
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 53
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->resetShakeState()V

    .line 54
    return-void
.end method

.method private checkShakeEvent()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 162
    iget v4, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mCurrentAcceleration:F

    const/high16 v5, 0x4100

    cmpg-float v4, v4, v5

    if-gez v4, :cond_d

    .line 164
    iput-wide v6, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mShakeStartTime:J

    .line 184
    :cond_c
    :goto_c
    return-void

    .line 166
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 167
    .local v2, now:J
    iget-wide v4, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mShakeStartTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1a

    .line 169
    iput-wide v2, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mShakeStartTime:J

    goto :goto_c

    .line 170
    :cond_1a
    iget-wide v4, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mShakeStartTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-ltz v4, :cond_c

    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->stop()Z

    .line 177
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mEventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/phone/ShakeDetector$ShakeEventListener;

    .line 178
    .local v1, listener:Lcom/google/android/apps/plus/phone/ShakeDetector$ShakeEventListener;
    invoke-interface {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector$ShakeEventListener;->onShakeDetected()V

    goto :goto_2d

    .line 180
    .end local v1           #listener:Lcom/google/android/apps/plus/phone/ShakeDetector$ShakeEventListener;
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->start()Z

    goto :goto_c
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;
    .registers 3
    .parameter "context"

    .prologue
    .line 60
    const-class v1, Lcom/google/android/apps/plus/phone/ShakeDetector;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/android/apps/plus/phone/ShakeDetector;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mShakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;

    .line 65
    :cond_c
    :goto_c
    sget-object v0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mShakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1c

    monitor-exit v1

    return-object v0

    .line 62
    :cond_10
    :try_start_10
    sget-object v0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mShakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;

    if-nez v0, :cond_c

    .line 63
    new-instance v0, Lcom/google/android/apps/plus/phone/ShakeDetector;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/ShakeDetector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mShakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_1c

    goto :goto_c

    .line 60
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isEnabled()Z
    .registers 1

    .prologue
    .line 188
    sget-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_SHAKE_GLOBAL_ACTION:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->getBoolean()Z

    move-result v0

    return v0
.end method

.method private resetShakeState()V
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mCurrentAcceleration:F

    .line 195
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/google/android/apps/plus/phone/ShakeDetector$ShakeEventListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 108
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_16

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startCommand must be called on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mEventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 133
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9
    .parameter "sensorEvent"

    .prologue
    .line 141
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 142
    .local v1, linearX:F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v2, v4, v5

    .line 143
    .local v2, linearY:F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v3, v4, v5

    .line 144
    .local v3, linearZ:F
    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 146
    .local v0, accel:F
    const v4, 0x411ce80a

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 147
    const v4, 0x3e4ccccd

    mul-float/2addr v4, v0

    const v5, 0x3f4ccccd

    iget v6, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mCurrentAcceleration:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mCurrentAcceleration:F

    .line 151
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->checkShakeEvent()V

    .line 152
    return-void
.end method

.method public removeEventListener(Lcom/google/android/apps/plus/phone/ShakeDetector$ShakeEventListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_16

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startCommand must be called on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mEventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public start()Z
    .registers 4

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_16

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startCommand must be called on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mIsSensorRegistered:Z

    if-nez v0, :cond_2e

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mIsSensorRegistered:Z

    .line 82
    :cond_2e
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mIsSensorRegistered:Z

    return v0
.end method

.method public stop()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_17

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startCommand must be called on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mIsSensorRegistered:Z

    if-eqz v1, :cond_2a

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 96
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ShakeDetector;->mIsSensorRegistered:Z

    .line 97
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->resetShakeState()V

    .line 98
    const/4 v0, 0x1

    .line 100
    :cond_2a
    return v0
.end method
