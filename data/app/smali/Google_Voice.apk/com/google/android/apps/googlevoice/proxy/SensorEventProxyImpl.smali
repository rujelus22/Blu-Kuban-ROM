.class public Lcom/google/android/apps/googlevoice/proxy/SensorEventProxyImpl;
.super Ljava/lang/Object;
.source "SensorEventProxyImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/proxy/SensorEventProxy;


# instance fields
.field private final delegate:Landroid/hardware/SensorEvent;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorEvent;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/proxy/SensorEventProxyImpl;->delegate:Landroid/hardware/SensorEvent;

    .line 19
    return-void
.end method


# virtual methods
.method public didComeFromThisSensor(Lcom/google/android/apps/googlevoice/proxy/SensorProxy;)Z
    .registers 4
    .parameter "sensor"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/SensorEventProxyImpl;->delegate:Landroid/hardware/SensorEvent;

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/proxy/SensorProxy;->getDelegate()Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public sensor()Landroid/hardware/Sensor;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/SensorEventProxyImpl;->delegate:Landroid/hardware/SensorEvent;

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public values()[F
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/SensorEventProxyImpl;->delegate:Landroid/hardware/SensorEvent;

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    return-object v0
.end method
