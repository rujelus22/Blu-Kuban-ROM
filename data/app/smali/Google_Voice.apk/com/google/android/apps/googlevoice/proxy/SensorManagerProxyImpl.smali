.class public Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxyImpl;
.super Ljava/lang/Object;
.source "SensorManagerProxyImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxy;


# instance fields
.field private final delegate:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxyImpl;->delegate:Landroid/hardware/SensorManager;

    .line 22
    return-void
.end method


# virtual methods
.method public getProximitySensor()Lcom/google/android/apps/googlevoice/proxy/SensorProxy;
    .registers 4

    .prologue
    .line 26
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxyImpl;->delegate:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 27
    .local v0, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1c

    .line 28
    new-instance v2, Lcom/google/android/apps/googlevoice/proxy/SensorProxyImpl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-direct {v2, v1}, Lcom/google/android/apps/googlevoice/proxy/SensorProxyImpl;-><init>(Landroid/hardware/Sensor;)V

    move-object v1, v2

    .line 30
    :goto_1b
    return-object v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Lcom/google/android/apps/googlevoice/proxy/SensorProxy;I)Z
    .registers 6
    .parameter "listener"
    .parameter "sensor"
    .parameter "rate"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxyImpl;->delegate:Landroid/hardware/SensorManager;

    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/proxy/SensorProxy;->getDelegate()Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    return v0
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Lcom/google/android/apps/googlevoice/proxy/SensorProxy;)V
    .registers 5
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxyImpl;->delegate:Landroid/hardware/SensorManager;

    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/proxy/SensorProxy;->getDelegate()Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 41
    return-void
.end method
