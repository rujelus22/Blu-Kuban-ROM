.class public Lbn/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private final b:I

.field private c:J

.field private d:F

.field private e:F

.field private f:F

.field private g:Lbn/e;

.field private h:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbn/d;->c:J

    iput p2, p0, Lbn/d;->b:I

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lbn/d;->a:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lbn/d;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lbn/d;->a:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lbn/d;->h:Landroid/hardware/Sensor;

    :cond_20
    invoke-virtual {p0}, Lbn/d;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lbn/d;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lbn/d;->h:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public a(Lbn/e;)V
    .registers 2

    iput-object p1, p0, Lbn/d;->g:Lbn/e;

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbn/d;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_50

    iget-wide v2, p0, Lbn/d;->c:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lbn/d;->c:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v1, v1, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    add-float v5, v0, v1

    add-float/2addr v5, v4

    iget v6, p0, Lbn/d;->d:F

    sub-float/2addr v5, v6

    iget v6, p0, Lbn/d;->e:F

    sub-float/2addr v5, v6

    iget v6, p0, Lbn/d;->f:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    long-to-float v2, v2

    div-float v2, v5, v2

    const v3, 0x461c4000

    mul-float/2addr v2, v3

    iget v3, p0, Lbn/d;->b:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4a

    iget-object v3, p0, Lbn/d;->g:Lbn/e;

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lbn/d;->g:Lbn/e;

    invoke-interface {v3, v2}, Lbn/e;->a(F)V

    :cond_4a
    iput v0, p0, Lbn/d;->d:F

    iput v1, p0, Lbn/d;->e:F

    iput v4, p0, Lbn/d;->f:F

    :cond_50
    return-void
.end method
