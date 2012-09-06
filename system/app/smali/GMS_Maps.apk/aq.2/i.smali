.class public Laq/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field volatile a:Z

.field final b:Landroid/os/Handler;

.field private c:I

.field private final d:Landroid/hardware/SensorManager;

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILandroid/content/Context;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v2, p0, Laq/i;->a:Z

    .line 53
    iput-object p1, p0, Laq/i;->b:Landroid/os/Handler;

    .line 54
    iput p2, p0, Laq/i;->c:I

    .line 55
    const-string v0, "sensor"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Laq/i;->d:Landroid/hardware/SensorManager;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laq/i;->e:Ljava/util/List;

    .line 61
    iget-object v0, p0, Laq/i;->d:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_31

    .line 63
    iget-object v1, p0, Laq/i;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_31
    return-void
.end method

.method private c()V
    .registers 6

    .prologue
    .line 114
    iget-object v0, p0, Laq/i;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 115
    iget-object v2, p0, Laq/i;->d:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    iget-object v4, p0, Laq/i;->b:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_6

    .line 117
    :cond_1b
    return-void
.end method

.method private d()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Laq/i;->d:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 124
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 96
    invoke-direct {p0}, Laq/i;->c()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Laq/i;->a:Z

    .line 98
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 104
    invoke-direct {p0}, Laq/i;->d()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Laq/i;->a:Z

    .line 106
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 90
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Laq/i;->a:Z

    if-eqz v0, :cond_8

    .line 74
    iget-object v0, p0, Laq/i;->b:Landroid/os/Handler;

    if-nez v0, :cond_9

    .line 81
    :cond_8
    :goto_8
    return-void

    .line 78
    :cond_9
    iget-object v0, p0, Laq/i;->b:Landroid/os/Handler;

    iget v1, p0, Laq/i;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 79
    iget-object v1, p0, Laq/i;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8
.end method
