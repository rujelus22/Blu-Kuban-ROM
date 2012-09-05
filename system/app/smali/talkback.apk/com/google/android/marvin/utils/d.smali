.class final Lcom/google/android/marvin/utils/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/utils/p;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/utils/p;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/utils/d;->a:Lcom/google/android/marvin/utils/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/marvin/utils/d;->a:Lcom/google/android/marvin/utils/p;

    invoke-static {v0}, Lcom/google/android/marvin/utils/p;->a(Lcom/google/android/marvin/utils/p;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/marvin/utils/d;->a:Lcom/google/android/marvin/utils/p;

    invoke-static {v0}, Lcom/google/android/marvin/utils/p;->b(Lcom/google/android/marvin/utils/p;)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/google/android/marvin/utils/d;->a:Lcom/google/android/marvin/utils/p;

    invoke-static {v1}, Lcom/google/android/marvin/utils/p;->c(Lcom/google/android/marvin/utils/p;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_33

    iget-object v0, p0, Lcom/google/android/marvin/utils/d;->a:Lcom/google/android/marvin/utils/p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/marvin/utils/p;->a(Lcom/google/android/marvin/utils/p;Z)V

    iget-object v0, p0, Lcom/google/android/marvin/utils/d;->a:Lcom/google/android/marvin/utils/p;

    invoke-static {v0}, Lcom/google/android/marvin/utils/p;->d(Lcom/google/android/marvin/utils/p;)Lcom/google/android/marvin/utils/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/utils/d;->a:Lcom/google/android/marvin/utils/p;

    invoke-static {v1}, Lcom/google/android/marvin/utils/p;->e(Lcom/google/android/marvin/utils/p;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/marvin/utils/h;->a(Z)V

    goto :goto_e

    :cond_33
    iget-object v0, p0, Lcom/google/android/marvin/utils/d;->a:Lcom/google/android/marvin/utils/p;

    invoke-static {v0, v2}, Lcom/google/android/marvin/utils/p;->a(Lcom/google/android/marvin/utils/p;Z)V

    iget-object v0, p0, Lcom/google/android/marvin/utils/d;->a:Lcom/google/android/marvin/utils/p;

    invoke-static {v0}, Lcom/google/android/marvin/utils/p;->d(Lcom/google/android/marvin/utils/p;)Lcom/google/android/marvin/utils/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/utils/d;->a:Lcom/google/android/marvin/utils/p;

    invoke-static {v1}, Lcom/google/android/marvin/utils/p;->e(Lcom/google/android/marvin/utils/p;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/marvin/utils/h;->a(Z)V

    goto :goto_e
.end method
