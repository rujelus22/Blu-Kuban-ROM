.class public Lcom/android/contacts/ProximitySensorManager;
.super Ljava/lang/Object;
.source "ProximitySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ProximitySensorManager$1;,
        Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;,
        Lcom/android/contacts/ProximitySensorManager$State;,
        Lcom/android/contacts/ProximitySensorManager$Listener;
    }
.end annotation


# instance fields
.field private mManagerEnabled:Z

.field private final mProximitySensorListener:Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/ProximitySensorManager$Listener;)V
    .registers 6
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 188
    .local v1, sensorManager:Landroid/hardware/SensorManager;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 189
    .local v0, proximitySensor:Landroid/hardware/Sensor;
    if-nez v0, :cond_17

    .line 191
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/ProximitySensorManager;->mProximitySensorListener:Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;

    .line 196
    :goto_16
    return-void

    .line 193
    :cond_17
    new-instance v2, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;

    invoke-direct {v2, v1, v0, p2}, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/contacts/ProximitySensorManager$Listener;)V

    iput-object v2, p0, Lcom/android/contacts/ProximitySensorManager;->mProximitySensorListener:Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;

    goto :goto_16
.end method


# virtual methods
.method public disable(Z)V
    .registers 3
    .parameter "waitForFarState"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/contacts/ProximitySensorManager;->mProximitySensorListener:Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/contacts/ProximitySensorManager;->mManagerEnabled:Z

    if-eqz v0, :cond_12

    .line 229
    if-eqz p1, :cond_13

    .line 230
    iget-object v0, p0, Lcom/android/contacts/ProximitySensorManager;->mProximitySensorListener:Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->unregisterWhenFar()V

    .line 234
    :goto_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ProximitySensorManager;->mManagerEnabled:Z

    .line 236
    :cond_12
    return-void

    .line 232
    :cond_13
    iget-object v0, p0, Lcom/android/contacts/ProximitySensorManager;->mProximitySensorListener:Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->unregister()V

    goto :goto_f
.end method

.method public enable()V
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/contacts/ProximitySensorManager;->mProximitySensorListener:Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/contacts/ProximitySensorManager;->mManagerEnabled:Z

    if-nez v0, :cond_10

    .line 207
    iget-object v0, p0, Lcom/android/contacts/ProximitySensorManager;->mProximitySensorListener:Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager$ProximitySensorEventListener;->register()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ProximitySensorManager;->mManagerEnabled:Z

    .line 210
    :cond_10
    return-void
.end method
