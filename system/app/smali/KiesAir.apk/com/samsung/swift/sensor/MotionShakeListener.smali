.class public Lcom/samsung/swift/sensor/MotionShakeListener;
.super Ljava/lang/Object;
.source "MotionShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/swift/sensor/MotionShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static final SHAKE_EVENT_INTERVAL:I = 0x64

.field private static final SHAKE_THRESHOLD:I = 0x2bc

.field private static final TAGNAME:Ljava/lang/String;


# instance fields
.field private lastTime:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private mShakeListener:Lcom/samsung/swift/sensor/MotionShakeListener$OnShakeListener;

.field private speed:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/samsung/swift/sensor/MotionShakeListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/sensor/MotionShakeListener;->TAGNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->lastX:F

    .line 16
    iput v0, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->lastY:F

    .line 17
    iput v0, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->lastZ:F

    .line 23
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 64
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 33
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, v6, :cond_6e

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 35
    .local v0, currentTime:J
    iget-wide v4, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->lastTime:J

    sub-long v2, v0, v4

    .line 37
    .local v2, deltaTime:J
    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    if-lez v4, :cond_6e

    .line 38
    iput-wide v0, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->lastTime:J

    .line 40
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->x:F

    .line 41
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    iput v4, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->y:F

    .line 42
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    iput v4, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->z:F

    .line 44
    iget v4, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->x:F

    iget v5, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->y:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->z:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->lastX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->lastY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->lastZ:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    long-to-float v5, v2

    div-float/2addr v4, v5

    const v5, 0x461c4000

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->speed:F

    .line 46
    iget v4, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->speed:F

    const/high16 v5, 0x442f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_62

    .line 47
    sget-object v4, Lcom/samsung/swift/sensor/MotionShakeListener;->TAGNAME:Ljava/lang/String;

    const-string v5, "onSensorChanged : Shaked!!!!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v4, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->mShakeListener:Lcom/samsung/swift/sensor/MotionShakeListener$OnShakeListener;

    if-eqz v4, :cond_62

    .line 50
    iget-object v4, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->mShakeListener:Lcom/samsung/swift/sensor/MotionShakeListener$OnShakeListener;

    invoke-interface {v4}, Lcom/samsung/swift/sensor/MotionShakeListener$OnShakeListener;->onShake()V

    .line 54
    :cond_62
    iget v4, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->x:F

    iput v4, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->lastX:F

    .line 55
    iget v4, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->y:F

    iput v4, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->lastY:F

    .line 56
    iget v4, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->z:F

    iput v4, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->lastZ:F

    .line 59
    .end local v0           #currentTime:J
    .end local v2           #deltaTime:J
    :cond_6e
    return-void
.end method

.method public setOnMotionShakeListener(Lcom/samsung/swift/sensor/MotionShakeListener$OnShakeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/samsung/swift/sensor/MotionShakeListener;->mShakeListener:Lcom/samsung/swift/sensor/MotionShakeListener$OnShakeListener;

    .line 29
    return-void
.end method
