.class Ld/ao;
.super Ld/al;


# instance fields
.field private final c:Ljava/util/Map;

.field private final d:Landroid/hardware/SensorManager;

.field private final e:Landroid/hardware/SensorEventListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Ld/y;Ld/C;Lm/c;)V
    .registers 7

    invoke-direct {p0, p1, p3, p4, p5}, Ld/al;-><init>(Landroid/content/Context;Ld/y;Ld/C;Lm/c;)V

    new-instance v0, Ld/ap;

    invoke-direct {v0, p0}, Ld/ap;-><init>(Ld/ao;)V

    iput-object v0, p0, Ld/ao;->e:Landroid/hardware/SensorEventListener;

    invoke-static {p1}, Ld/ax;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ld/ax;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ld/ao;->c:Ljava/util/Map;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Ld/ao;->d:Landroid/hardware/SensorManager;

    return-void
.end method

.method private a(Ljava/util/Map$Entry;)V
    .registers 7

    iget-object v1, p0, Ld/ao;->d:Landroid/hardware/SensorManager;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_34

    iget-object v2, p0, Ld/ao;->d:Landroid/hardware/SensorManager;

    iget-object v3, p0, Ld/ao;->e:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Ld/ao;->f()Ld/y;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_34
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Ld/ao;->d:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ld/ao;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Ld/ao;->a(Ljava/util/Map$Entry;)V

    goto :goto_e

    :cond_1e
    iget-object v0, p0, Ld/ao;->b:Ld/C;

    if-eqz v0, :cond_27

    iget-object v0, p0, Ld/ao;->b:Ld/C;

    invoke-interface {v0}, Ld/C;->e()V

    :cond_27
    return-void
.end method

.method protected b()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Ld/ao;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ld/ao;->e:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_11

    :goto_7
    iget-object v0, p0, Ld/ao;->b:Ld/C;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ld/ao;->b:Ld/C;

    invoke-interface {v0}, Ld/C;->d()V

    :cond_10
    return-void

    :catch_11
    move-exception v0

    goto :goto_7
.end method
