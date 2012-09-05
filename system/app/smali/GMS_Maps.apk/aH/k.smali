.class public LaH/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private volatile a:Z

.field private final b:Landroid/os/Handler;

.field private c:I

.field private final d:Landroid/hardware/SensorManager;

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILandroid/content/Context;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, LaH/k;->a:Z

    iput-object p1, p0, LaH/k;->b:Landroid/os/Handler;

    iput p2, p0, LaH/k;->c:I

    const-string v0, "sensor"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, LaH/k;->d:Landroid/hardware/SensorManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LaH/k;->e:Ljava/util/List;

    iget-object v0, p0, LaH/k;->d:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_31

    iget-object v1, p0, LaH/k;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    return-void
.end method

.method private c()V
    .registers 6

    sget-boolean v0, Lcom/google/googlenav/android/I;->d:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    move v1, v0

    :goto_6
    iget-object v0, p0, LaH/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v3, p0, LaH/k;->d:Landroid/hardware/SensorManager;

    iget-object v4, p0, LaH/k;->b:Landroid/os/Handler;

    invoke-virtual {v3, p0, v0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_c

    :cond_20
    const/4 v0, 0x0

    move v1, v0

    goto :goto_6

    :cond_23
    return-void
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, LaH/k;->d:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-direct {p0}, LaH/k;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaH/k;->a:Z

    return-void
.end method

.method public b()V
    .registers 2

    invoke-direct {p0}, LaH/k;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaH/k;->a:Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4

    iget-boolean v0, p0, LaH/k;->a:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, LaH/k;->b:Landroid/os/Handler;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, LaH/k;->b:Landroid/os/Handler;

    iget v1, p0, LaH/k;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, LaH/k;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8
.end method
