.class Ld/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Ld/ao;


# direct methods
.method constructor <init>(Ld/ao;)V
    .registers 2

    iput-object p1, p0, Ld/ap;->a:Ld/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v0, p0, Ld/ap;->a:Ld/ao;

    invoke-virtual {v0}, Ld/ao;->h()V

    iget-object v0, p0, Ld/ap;->a:Ld/ao;

    invoke-virtual {v0}, Ld/ao;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return-void

    :cond_12
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, p0, Ld/ap;->a:Ld/ao;

    invoke-virtual {v0}, Ld/ao;->f()Ld/y;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x1

    aget v3, v4, v3

    const/4 v5, 0x2

    aget v4, v4, v5

    iget v5, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual/range {v0 .. v9}, Ld/y;->a(IFFFIJJ)V

    goto :goto_11
.end method
