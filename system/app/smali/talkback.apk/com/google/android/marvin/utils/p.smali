.class public final Lcom/google/android/marvin/utils/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private final b:Landroid/hardware/Sensor;

.field private final c:Z

.field private final d:F

.field private e:Lcom/google/android/marvin/utils/h;

.field private f:Z

.field private g:Z

.field private h:Z

.field private final i:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/marvin/utils/d;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/utils/d;-><init>(Lcom/google/android/marvin/utils/p;)V

    iput-object v0, p0, Lcom/google/android/marvin/utils/p;->i:Landroid/hardware/SensorEventListener;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/marvin/utils/p;->a:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/google/android/marvin/utils/p;->a:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/utils/p;->b:Landroid/hardware/Sensor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/marvin/utils/p;->c:Z

    iget-object v0, p0, Lcom/google/android/marvin/utils/p;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/marvin/utils/p;->b:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/google/android/marvin/utils/p;->d:F

    :goto_2d
    return-void

    :cond_2e
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/marvin/utils/p;->d:F

    goto :goto_2d
.end method

.method static synthetic a(Lcom/google/android/marvin/utils/p;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/marvin/utils/p;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/marvin/utils/p;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/marvin/utils/p;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/marvin/utils/p;)V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/marvin/utils/p;->f:Z

    return-void
.end method

.method static synthetic c(Lcom/google/android/marvin/utils/p;)F
    .registers 2

    iget v0, p0, Lcom/google/android/marvin/utils/p;->d:F

    return v0
.end method

.method static synthetic d(Lcom/google/android/marvin/utils/p;)Lcom/google/android/marvin/utils/h;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/utils/p;->e:Lcom/google/android/marvin/utils/h;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/marvin/utils/p;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/marvin/utils/p;->h:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/marvin/utils/p;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/marvin/utils/p;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/marvin/utils/p;->i:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/marvin/utils/p;->g:Z

    :cond_e
    return-void
.end method

.method public final a(Lcom/google/android/marvin/utils/h;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/utils/p;->e:Lcom/google/android/marvin/utils/h;

    return-void
.end method

.method public final b()V
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/android/marvin/utils/p;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/marvin/utils/p;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/marvin/utils/p;->i:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/google/android/marvin/utils/p;->b:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iput-boolean v4, p0, Lcom/google/android/marvin/utils/p;->g:Z

    iget-boolean v0, p0, Lcom/google/android/marvin/utils/p;->c:Z

    if-eqz v0, :cond_17

    iput-boolean v4, p0, Lcom/google/android/marvin/utils/p;->f:Z

    :cond_17
    return-void
.end method
