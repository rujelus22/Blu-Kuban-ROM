.class public LaP/a;
.super LaP/h;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final M:F

.field private static final N:F

.field private static final O:F

.field private static final P:F

.field private static final a:F


# instance fields
.field private final A:[F

.field private final B:[F

.field private C:I

.field private D:I

.field private E:I

.field private F:LaP/e;

.field private final G:Laf/a;

.field private H:J

.field private I:F

.field private final J:Ljava/util/WeakHashMap;

.field private final K:Ljava/util/Map;

.field private L:LaP/d;

.field private Q:Landroid/view/WindowManager;

.field private R:Ljava/lang/reflect/Method;

.field private b:Z

.field private c:LaP/j;

.field private d:Landroid/content/Context;

.field private e:Landroid/hardware/SensorManager;

.field private final f:LaP/f;

.field private g:I

.field private h:F

.field private i:F

.field private j:Landroid/hardware/Sensor;

.field private k:Landroid/hardware/Sensor;

.field private l:Landroid/hardware/Sensor;

.field private m:Landroid/hardware/Sensor;

.field private final n:[F

.field private final o:[F

.field private final p:[F

.field private final q:[F

.field private final r:[F

.field private final s:[F

.field private final t:[F

.field private final u:[F

.field private final v:[F

.field private w:J

.field private x:J

.field private y:J

.field private final z:[F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/high16 v2, 0x4000

    const v1, 0x3c8efa35

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    div-float/2addr v0, v2

    sput v0, LaP/a;->a:F

    const v0, 0x3d0efa35

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, LaP/a;->M:F

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, LaP/a;->N:F

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, LaP/a;->O:F

    const v0, 0x3c0efa35

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, LaP/a;->P:F

    return-void
.end method

.method public constructor <init>(LaP/e;Laf/a;)V
    .registers 9

    const/16 v5, 0x9

    const/4 v4, 0x4

    const/4 v3, -0x1

    const/4 v2, 0x3

    invoke-direct {p0}, LaP/h;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaP/a;->b:Z

    sget-object v0, LaP/j;->a:LaP/j;

    iput-object v0, p0, LaP/a;->c:LaP/j;

    new-instance v0, LaP/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LaP/f;-><init>(Z)V

    iput-object v0, p0, LaP/a;->f:LaP/f;

    iput v3, p0, LaP/a;->g:I

    const/high16 v0, -0x4080

    iput v0, p0, LaP/a;->h:F

    const/high16 v0, 0x7fc0

    iput v0, p0, LaP/a;->i:F

    new-array v0, v2, [F

    iput-object v0, p0, LaP/a;->n:[F

    new-array v0, v2, [F

    iput-object v0, p0, LaP/a;->o:[F

    new-array v0, v2, [F

    iput-object v0, p0, LaP/a;->p:[F

    new-array v0, v4, [F

    iput-object v0, p0, LaP/a;->q:[F

    new-array v0, v2, [F

    iput-object v0, p0, LaP/a;->r:[F

    new-array v0, v2, [F

    iput-object v0, p0, LaP/a;->s:[F

    new-array v0, v2, [F

    iput-object v0, p0, LaP/a;->t:[F

    new-array v0, v2, [F

    iput-object v0, p0, LaP/a;->u:[F

    new-array v0, v4, [F

    iput-object v0, p0, LaP/a;->v:[F

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, LaP/a;->w:J

    new-array v0, v5, [F

    iput-object v0, p0, LaP/a;->z:[F

    new-array v0, v5, [F

    iput-object v0, p0, LaP/a;->A:[F

    new-array v0, v2, [F

    iput-object v0, p0, LaP/a;->B:[F

    iput v3, p0, LaP/a;->C:I

    iput v3, p0, LaP/a;->D:I

    iput v3, p0, LaP/a;->E:I

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, LaP/a;->J:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LaP/a;->K:Ljava/util/Map;

    new-instance v0, LaP/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LaP/d;-><init>(LaP/b;)V

    iput-object v0, p0, LaP/a;->L:LaP/d;

    iput-object p1, p0, LaP/a;->F:LaP/e;

    iput-object p2, p0, LaP/a;->G:Laf/a;

    return-void
.end method

.method public static a([F)F
    .registers 5

    const/high16 v3, 0x3f80

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_4
    const/4 v2, 0x3

    if-ge v0, v2, :cond_e

    aget v2, p0, v0

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v3, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method protected static a([F[F)F
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_e

    aget v2, p0, v0

    aget v3, p1, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    return v1
.end method

.method public static b([F[F)V
    .registers 9

    const/4 v6, 0x3

    const/4 v0, 0x0

    const/4 v3, 0x0

    move v1, v0

    move v2, v3

    :goto_5
    if-ge v1, v6, :cond_10

    aget v4, p0, v1

    aget v5, p0, v1

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_10
    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    cmpl-float v2, v1, v3

    if-nez v2, :cond_1f

    :goto_18
    if-ge v0, v6, :cond_29

    aput v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_1f
    :goto_1f
    if-ge v0, v6, :cond_29

    aget v2, p0, v0

    div-float/2addr v2, v1

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_29
    return-void
.end method

.method private j()Landroid/hardware/SensorManager;
    .registers 3

    iget-object v0, p0, LaP/a;->e:Landroid/hardware/SensorManager;

    if-nez v0, :cond_10

    iget-object v0, p0, LaP/a;->d:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, LaP/a;->e:Landroid/hardware/SensorManager;

    :cond_10
    iget-object v0, p0, LaP/a;->e:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method private k()I
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, LaP/a;->E:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    iget v0, p0, LaP/a;->E:I

    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, LaP/a;->R:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_24

    iget-object v0, p0, LaP/a;->Q:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    :try_start_13
    iget-object v2, p0, LaP/a;->R:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_21} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_21} :catch_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_21} :catch_23

    move-result v0

    goto :goto_8

    :catch_23
    move-exception v0

    :cond_24
    :goto_24
    iget-object v0, p0, LaP/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_35

    const/4 v0, 0x1

    goto :goto_8

    :cond_35
    move v0, v1

    goto :goto_8

    :catch_37
    move-exception v0

    goto :goto_24

    :catch_39
    move-exception v0

    goto :goto_24
.end method

.method private declared-synchronized l()V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaP/a;->F:LaP/e;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    if-nez v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, LaP/a;->G:Laf/a;

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v4

    iget-wide v0, p0, LaP/a;->H:J

    sub-long v0, v4, v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-object v0, p0, LaP/a;->F:LaP/e;

    invoke-interface {v0}, LaP/e;->a()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_5

    iput-wide v4, p0, LaP/a;->H:J

    new-instance v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v2, v6

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v0

    iput v0, p0, LaP/a;->I:F
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3d

    goto :goto_5

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, LaP/a;->K:Ljava/util/Map;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_40

    :try_start_4
    iget-object v0, p0, LaP/a;->K:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaP/i;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/c;

    if-eqz v1, :cond_e

    if-eqz v0, :cond_e

    sget-object v4, LaP/b;->a:[I

    invoke-virtual {v0}, LaP/c;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_52

    goto :goto_e

    :pswitch_36
    iget-object v0, p0, LaP/a;->J:Ljava/util/WeakHashMap;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :catchall_3d
    move-exception v0

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_43
    :try_start_43
    iget-object v0, p0, LaP/a;->J:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_49
    iget-object v0, p0, LaP/a;->K:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_3d

    monitor-exit p0

    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_36
        :pswitch_43
    .end packed-switch
.end method


# virtual methods
.method public a(LaP/i;)V
    .registers 4

    iget-object v0, p0, LaP/a;->K:Ljava/util/Map;

    sget-object v1, LaP/c;->a:LaP/c;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(LaP/j;)V
    .registers 7

    const/4 v2, 0x2

    const/4 v1, 0x3

    invoke-static {}, Lcom/google/googlenav/android/a;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-boolean v0, p0, LaP/a;->b:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, LaP/a;->c:LaP/j;

    if-eq v0, p1, :cond_8

    iput-object p1, p0, LaP/a;->c:LaP/j;

    invoke-static {}, Lcom/google/googlenav/android/a;->d()Z

    move-result v0

    if-eqz v0, :cond_38

    iget v0, p1, LaP/j;->d:I

    if-nez v0, :cond_35

    move v0, v1

    :goto_1e
    invoke-direct {p0}, LaP/a;->j()Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    sget-boolean v4, Lcom/google/googlenav/android/I;->e:Z

    if-eqz v4, :cond_40

    invoke-virtual {v3, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, LaP/a;->l:Landroid/hardware/Sensor;

    iget-object v1, p0, LaP/a;->l:Landroid/hardware/Sensor;

    invoke-virtual {v3, p0, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_8

    :cond_35
    iget v0, p1, LaP/j;->d:I

    goto :goto_1e

    :cond_38
    sget-object v0, LaP/j;->c:LaP/j;

    if-ne p1, v0, :cond_3e

    move v0, v2

    goto :goto_1e

    :cond_3e
    move v0, v1

    goto :goto_1e

    :cond_40
    invoke-static {}, Lcom/google/googlenav/android/a;->d()Z

    move-result v1

    if-eqz v1, :cond_58

    sget-boolean v1, Lcom/google/googlenav/android/I;->f:Z

    if-nez v1, :cond_58

    const/16 v1, 0xb

    invoke-virtual {v3, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, LaP/a;->m:Landroid/hardware/Sensor;

    iget-object v1, p0, LaP/a;->m:Landroid/hardware/Sensor;

    invoke-virtual {v3, p0, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_8

    :cond_58
    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, LaP/a;->j:Landroid/hardware/Sensor;

    iget-object v1, p0, LaP/a;->j:Landroid/hardware/Sensor;

    invoke-virtual {v3, p0, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, LaP/a;->k:Landroid/hardware/Sensor;

    iget-object v1, p0, LaP/a;->k:Landroid/hardware/Sensor;

    invoke-virtual {v3, p0, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_8
.end method

.method public a(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, LaP/a;->d:Landroid/content/Context;

    if-eq v0, p1, :cond_28

    iput-object p1, p0, LaP/a;->d:Landroid/content/Context;

    iput-object v3, p0, LaP/a;->e:Landroid/hardware/SensorManager;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, LaP/a;->Q:Landroid/view/WindowManager;

    iget-object v0, p0, LaP/a;->Q:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_1d
    const-string v1, "getRotation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, LaP/a;->R:Ljava/lang/reflect/Method;
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_28} :catch_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_28} :catch_2d

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    iput-object v3, p0, LaP/a;->R:Ljava/lang/reflect/Method;

    goto :goto_28

    :catch_2d
    move-exception v0

    iput-object v3, p0, LaP/a;->R:Ljava/lang/reflect/Method;

    goto :goto_28
.end method

.method public declared-synchronized a()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, LaP/a;->g:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(JZZ)Z
    .registers 13

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    if-eqz p3, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return v0

    :cond_7
    if-nez p4, :cond_1a

    :try_start_9
    iget-wide v2, p0, LaP/a;->x:J

    iget-wide v4, p0, LaP/a;->y:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_1a

    move v0, v1

    goto :goto_5

    :cond_1a
    iget-object v2, p0, LaP/a;->c:LaP/j;

    sget-object v3, LaP/j;->c:LaP/j;

    if-ne v2, v3, :cond_47

    const-wide/high16 v2, 0x4049

    :goto_22
    iget-wide v4, p0, LaP/a;->w:J

    const-wide/high16 v6, -0x8000

    cmp-long v4, v4, v6

    if-eqz v4, :cond_33

    iget-wide v4, p0, LaP/a;->w:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    cmpl-double v2, v4, v2

    if-lez v2, :cond_4a

    :cond_33
    if-nez p4, :cond_5

    iget-object v1, p0, LaP/a;->n:[F

    iget-object v2, p0, LaP/a;->r:[F

    invoke-static {v1, v2}, LaP/a;->b([F[F)V

    iget-object v1, p0, LaP/a;->o:[F

    iget-object v2, p0, LaP/a;->s:[F

    invoke-static {v1, v2}, LaP/a;->b([F[F)V
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_44

    goto :goto_5

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_47
    const-wide/high16 v2, 0x4059

    goto :goto_22

    :cond_4a
    if-eqz p4, :cond_6c

    :try_start_4c
    iget-object v2, p0, LaP/a;->c:LaP/j;

    sget-object v3, LaP/j;->c:LaP/j;

    if-ne v2, v3, :cond_68

    sget v2, LaP/a;->P:F

    float-to-double v2, v2

    :goto_55
    iget-object v4, p0, LaP/a;->q:[F

    iget-object v5, p0, LaP/a;->v:[F

    invoke-static {v4, v5}, LaP/a;->a([F[F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v2, v4, v2

    if-ltz v2, :cond_5

    :cond_66
    move v0, v1

    goto :goto_5

    :cond_68
    sget v2, LaP/a;->O:F

    float-to-double v2, v2

    goto :goto_55

    :cond_6c
    iget-object v2, p0, LaP/a;->c:LaP/j;

    sget-object v3, LaP/j;->c:LaP/j;

    if-ne v2, v3, :cond_9f

    sget v2, LaP/a;->N:F

    float-to-double v2, v2

    :goto_75
    iget-object v4, p0, LaP/a;->n:[F

    iget-object v5, p0, LaP/a;->r:[F

    invoke-static {v4, v5}, LaP/a;->b([F[F)V

    iget-object v4, p0, LaP/a;->o:[F

    iget-object v5, p0, LaP/a;->s:[F

    invoke-static {v4, v5}, LaP/a;->b([F[F)V

    iget-object v4, p0, LaP/a;->r:[F

    iget-object v5, p0, LaP/a;->t:[F

    invoke-static {v4, v5}, LaP/a;->a([F[F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v4, v4, v2

    if-ltz v4, :cond_5

    iget-object v4, p0, LaP/a;->s:[F

    iget-object v5, p0, LaP/a;->u:[F

    invoke-static {v4, v5}, LaP/a;->a([F[F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v2, v4, v2

    if-gez v2, :cond_66

    goto/16 :goto_5

    :cond_9f
    sget v2, LaP/a;->M:F
    :try_end_a1
    .catchall {:try_start_4c .. :try_end_a1} :catchall_44

    float-to-double v2, v2

    goto :goto_75
.end method

.method public declared-synchronized b()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, LaP/a;->g:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(JZZ)V
    .registers 14

    const/high16 v7, 0x42b4

    const v6, 0x42652ee0

    const/4 v0, 0x1

    monitor-enter p0

    if-eqz p3, :cond_66

    :try_start_9
    iget-object v0, p0, LaP/a;->p:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0}, LaP/a;->k()I

    move-result v1

    packed-switch v1, :pswitch_data_fe

    :goto_15
    invoke-static {v0}, Lar/i;->a(F)F

    move-result v0

    invoke-direct {p0}, LaP/a;->l()V

    iget v1, p0, LaP/a;->I:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lar/i;->a(F)F

    move-result v0

    iget-object v1, p0, LaP/a;->f:LaP/f;

    invoke-virtual {v1, p1, p2, v0}, LaP/f;->a(JF)F

    move-result v0

    iput v0, p0, LaP/a;->h:F

    invoke-direct {p0}, LaP/a;->m()V

    iget-object v0, p0, LaP/a;->L:LaP/d;

    iget v3, p0, LaP/a;->h:F

    iget v4, p0, LaP/a;->i:F

    iget-object v5, p0, LaP/a;->c:LaP/j;

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, LaP/d;->a(LaP/d;JFFLaP/j;)Z

    move-result v0

    if-eqz v0, :cond_e0

    iget-object v0, p0, LaP/a;->J:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/i;

    iget v2, p0, LaP/a;->h:F

    iget v3, p0, LaP/a;->i:F

    invoke-interface {v0, v2, v3}, LaP/i;->a(FF)V
    :try_end_5a
    .catchall {:try_start_9 .. :try_end_5a} :catchall_5b

    goto :goto_47

    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_5e
    add-float/2addr v0, v7

    goto :goto_15

    :pswitch_60
    sub-float/2addr v0, v7

    goto :goto_15

    :pswitch_62
    const/high16 v1, 0x4334

    add-float/2addr v0, v1

    goto :goto_15

    :cond_66
    :try_start_66
    iput-wide p1, p0, LaP/a;->w:J

    if-eqz p4, :cond_bf

    iget-object v1, p0, LaP/a;->q:[F

    const/4 v2, 0x0

    iget-object v3, p0, LaP/a;->v:[F

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, LaP/a;->z:[F

    iget-object v2, p0, LaP/a;->q:[F

    invoke-static {v1, v2}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    :cond_7b
    invoke-direct {p0}, LaP/a;->k()I

    move-result v1

    packed-switch v1, :pswitch_data_108

    const/4 v1, 0x2

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_86
    iget-object v2, p0, LaP/a;->z:[F

    iget-object v3, p0, LaP/a;->A:[F

    invoke-static {v2, v1, v0, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move-result v0

    if-nez v0, :cond_90

    :cond_90
    iget-object v0, p0, LaP/a;->A:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    sget v1, LaP/a;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ee

    iget-object v0, p0, LaP/a;->A:[F

    const/4 v1, 0x1

    const/4 v2, 0x3

    iget-object v3, p0, LaP/a;->z:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move-result v0

    if-nez v0, :cond_a7

    :cond_a7
    iget-object v0, p0, LaP/a;->z:[F

    iget-object v1, p0, LaP/a;->B:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v0, p0, LaP/a;->B:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-float/2addr v0, v6

    sub-float/2addr v0, v7

    iput v0, p0, LaP/a;->i:F

    :goto_b7
    iget-object v0, p0, LaP/a;->B:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, v6

    goto/16 :goto_15

    :cond_bf
    iget-object v1, p0, LaP/a;->r:[F

    const/4 v2, 0x0

    iget-object v3, p0, LaP/a;->t:[F

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, LaP/a;->s:[F

    const/4 v2, 0x0

    iget-object v3, p0, LaP/a;->u:[F

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, LaP/a;->z:[F

    const/4 v2, 0x0

    iget-object v3, p0, LaP/a;->o:[F

    iget-object v4, p0, LaP/a;->n:[F

    invoke-static {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z
    :try_end_dd
    .catchall {:try_start_66 .. :try_end_dd} :catchall_5b

    move-result v1

    if-nez v1, :cond_7b

    :cond_e0
    monitor-exit p0

    return-void

    :pswitch_e2
    const/4 v1, 0x2

    const/16 v0, 0x81

    goto :goto_86

    :pswitch_e6
    const/16 v1, 0x82

    goto :goto_86

    :pswitch_e9
    const/16 v1, 0x81

    const/16 v0, 0x82

    goto :goto_86

    :cond_ee
    :try_start_ee
    iget-object v0, p0, LaP/a;->A:[F

    iget-object v1, p0, LaP/a;->B:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v0, p0, LaP/a;->B:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-float/2addr v0, v6

    iput v0, p0, LaP/a;->i:F
    :try_end_fd
    .catchall {:try_start_ee .. :try_end_fd} :catchall_5b

    goto :goto_b7

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_62
        :pswitch_60
    .end packed-switch

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_e2
        :pswitch_e9
        :pswitch_e6
    .end packed-switch
.end method

.method public b(LaP/i;)V
    .registers 4

    iget-object v0, p0, LaP/a;->K:Ljava/util/Map;

    sget-object v1, LaP/c;->b:LaP/c;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized c()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, LaP/a;->h:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()F
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, LaP/a;->h:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized e()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, LaP/a;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaP/a;->x:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaP/a;->y:J

    sget-object v0, LaP/j;->b:LaP/j;

    invoke-virtual {p0, v0}, LaP/a;->a(LaP/j;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized f()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, LaP/a;->j()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaP/a;->b:Z

    sget-object v0, LaP/j;->a:LaP/j;

    iput-object v0, p0, LaP/a;->c:LaP/j;

    const/4 v0, 0x0

    iput-object v0, p0, LaP/a;->j:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    iput-object v0, p0, LaP/a;->k:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    iput-object v0, p0, LaP/a;->l:Landroid/hardware/Sensor;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaP/a;->k:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_35

    iput p2, p0, LaP/a;->D:I

    :cond_7
    :goto_7
    iget-object v0, p0, LaP/a;->l:Landroid/hardware/Sensor;

    if-eq p1, v0, :cond_f

    iget-object v0, p0, LaP/a;->m:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_3c

    :cond_f
    :goto_f
    iget v0, p0, LaP/a;->g:I

    if-eq p2, v0, :cond_45

    iput p2, p0, LaP/a;->g:I

    invoke-direct {p0}, LaP/a;->m()V

    iget-object v0, p0, LaP/a;->J:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaP/i;

    invoke-interface {v0, p2}, LaP/i;->a(I)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_32

    goto :goto_22

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_35
    :try_start_35
    iget-object v0, p0, LaP/a;->j:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_7

    iput p2, p0, LaP/a;->C:I

    goto :goto_7

    :cond_3c
    iget v0, p0, LaP/a;->D:I

    iget v1, p0, LaP/a;->C:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_32

    move-result p2

    goto :goto_f

    :cond_45
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12

    const/4 v0, 0x1

    const/4 v9, 0x3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_4
    iget-object v2, p0, LaP/a;->G:Laf/a;

    invoke-interface {v2}, Laf/a;->c()J

    move-result-wide v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v5, p0, LaP/a;->l:Landroid/hardware/Sensor;

    if-ne v2, v5, :cond_34

    move v2, v0

    :goto_11
    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v6, p0, LaP/a;->m:Landroid/hardware/Sensor;

    if-ne v5, v6, :cond_36

    :goto_17
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v5, p0, LaP/a;->j:Landroid/hardware/Sensor;

    if-ne v1, v5, :cond_38

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    iget-object v6, p0, LaP/a;->n:[F

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v1, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-wide v3, p0, LaP/a;->x:J

    :cond_29
    :goto_29
    invoke-virtual {p0, v3, v4, v2, v0}, LaP/a;->a(JZZ)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0, v3, v4, v2, v0}, LaP/a;->b(JZZ)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_4b

    :cond_32
    monitor-exit p0

    return-void

    :cond_34
    move v2, v1

    goto :goto_11

    :cond_36
    move v0, v1

    goto :goto_17

    :cond_38
    :try_start_38
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v5, p0, LaP/a;->k:Landroid/hardware/Sensor;

    if-ne v1, v5, :cond_4e

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    iget-object v6, p0, LaP/a;->o:[F

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v1, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-wide v3, p0, LaP/a;->y:J
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_4b

    goto :goto_29

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4e
    if-eqz v2, :cond_5b

    :try_start_50
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    iget-object v6, p0, LaP/a;->p:[F

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v1, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_29

    :cond_5b
    if-eqz v0, :cond_29

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    iget-object v6, p0, LaP/a;->q:[F

    const/4 v7, 0x0

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v8, v8

    invoke-static {v1, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-ne v1, v9, :cond_29

    iget-object v1, p0, LaP/a;->q:[F

    const/4 v5, 0x3

    iget-object v6, p0, LaP/a;->q:[F

    invoke-static {v6}, LaP/a;->a([F)F

    move-result v6

    aput v6, v1, v5
    :try_end_79
    .catchall {:try_start_50 .. :try_end_79} :catchall_4b

    goto :goto_29
.end method
