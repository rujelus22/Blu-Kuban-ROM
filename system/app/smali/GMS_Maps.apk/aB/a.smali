.class public LaB/a;
.super LaB/h;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final N:F

.field private static final O:F

.field private static final P:F

.field private static final Q:F

.field private static final a:F


# instance fields
.field private final A:[F

.field private final B:[F

.field private final C:[F

.field private D:I

.field private E:I

.field private F:I

.field private G:LaB/e;

.field private final H:Lcom/google/googlenav/common/a;

.field private I:J

.field private J:F

.field private final K:Ljava/util/WeakHashMap;

.field private final L:Ljava/util/Map;

.field private M:LaB/d;

.field private R:Landroid/view/WindowManager;

.field private S:Ljava/lang/reflect/Method;

.field private b:Z

.field private c:LaB/j;

.field private d:Landroid/content/Context;

.field private e:Landroid/hardware/SensorManager;

.field private final f:LaB/f;

.field private g:I

.field private h:F

.field private i:F

.field private j:Landroid/hardware/Sensor;

.field private k:Landroid/hardware/Sensor;

.field private l:Landroid/hardware/Sensor;

.field private m:Ljava/lang/Boolean;

.field private n:Landroid/hardware/Sensor;

.field private final o:[F

.field private final p:[F

.field private final q:[F

.field private final r:[F

.field private final s:[F

.field private final t:[F

.field private final u:[F

.field private final v:[F

.field private final w:[F

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/high16 v2, 0x4000

    const v1, 0x3c8efa35

    .line 71
    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    div-float/2addr v0, v2

    sput v0, LaB/a;->a:F

    .line 383
    const v0, 0x3d0efa35

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, LaB/a;->N:F

    .line 387
    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, LaB/a;->O:F

    .line 391
    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, LaB/a;->P:F

    .line 395
    const v0, 0x3c0efa35

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, LaB/a;->Q:F

    return-void
.end method

.method public constructor <init>(LaB/e;Lcom/google/googlenav/common/a;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x4

    const/4 v3, -0x1

    const/4 v2, 0x3

    .line 425
    invoke-direct {p0}, LaB/h;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, LaB/a;->b:Z

    .line 97
    sget-object v0, LaB/j;->a:LaB/j;

    iput-object v0, p0, LaB/a;->c:LaB/j;

    .line 127
    new-instance v0, LaB/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LaB/f;-><init>(Z)V

    iput-object v0, p0, LaB/a;->f:LaB/f;

    .line 134
    iput v3, p0, LaB/a;->g:I

    .line 141
    const/high16 v0, -0x4080

    iput v0, p0, LaB/a;->h:F

    .line 146
    const/high16 v0, 0x7fc0

    iput v0, p0, LaB/a;->i:F

    .line 191
    new-array v0, v2, [F

    iput-object v0, p0, LaB/a;->o:[F

    .line 200
    new-array v0, v2, [F

    iput-object v0, p0, LaB/a;->p:[F

    .line 209
    new-array v0, v2, [F

    iput-object v0, p0, LaB/a;->q:[F

    .line 226
    new-array v0, v4, [F

    iput-object v0, p0, LaB/a;->r:[F

    .line 229
    new-array v0, v2, [F

    iput-object v0, p0, LaB/a;->s:[F

    .line 232
    new-array v0, v2, [F

    iput-object v0, p0, LaB/a;->t:[F

    .line 239
    new-array v0, v2, [F

    iput-object v0, p0, LaB/a;->u:[F

    .line 246
    new-array v0, v2, [F

    iput-object v0, p0, LaB/a;->v:[F

    .line 253
    new-array v0, v4, [F

    iput-object v0, p0, LaB/a;->w:[F

    .line 260
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, LaB/a;->x:J

    .line 277
    new-array v0, v5, [F

    iput-object v0, p0, LaB/a;->A:[F

    .line 278
    new-array v0, v5, [F

    iput-object v0, p0, LaB/a;->B:[F

    .line 284
    new-array v0, v2, [F

    iput-object v0, p0, LaB/a;->C:[F

    .line 291
    iput v3, p0, LaB/a;->D:I

    .line 298
    iput v3, p0, LaB/a;->E:I

    .line 304
    iput v3, p0, LaB/a;->F:I

    .line 330
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, LaB/a;->K:Ljava/util/WeakHashMap;

    .line 355
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, LaB/a;->L:Ljava/util/Map;

    .line 362
    new-instance v0, LaB/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LaB/d;-><init>(LaB/b;)V

    iput-object v0, p0, LaB/a;->M:LaB/d;

    .line 426
    iput-object p1, p0, LaB/a;->G:LaB/e;

    .line 427
    iput-object p2, p0, LaB/a;->H:Lcom/google/googlenav/common/a;

    .line 428
    return-void
.end method

.method public static a([F)F
    .registers 5
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    .line 678
    const/4 v1, 0x0

    .line 679
    const/4 v0, 0x0

    :goto_4
    const/4 v2, 0x3

    if-ge v0, v2, :cond_e

    .line 680
    aget v2, p0, v0

    .line 681
    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    .line 679
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 686
    :cond_e
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 689
    sub-float v0, v3, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method protected static a([F[F)F
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 783
    const/4 v1, 0x0

    .line 784
    const/4 v0, 0x0

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_e

    .line 785
    aget v2, p0, v0

    aget v3, p1, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 784
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 787
    :cond_e
    return v1
.end method

.method private declared-synchronized a(Landroid/hardware/SensorManager;)Z
    .registers 3
    .parameter

    .prologue
    .line 529
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaB/a;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_8

    .line 530
    invoke-direct {p0, p1}, LaB/a;->b(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    .line 532
    :cond_8
    iget-object v0, p0, LaB/a;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit p0

    return v0

    .line 529
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;
    .registers 6
    .parameter

    .prologue
    .line 536
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaB/a;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_41

    .line 537
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, LaB/a;->m:Ljava/lang/Boolean;

    .line 539
    invoke-static {}, Lcom/google/googlenav/android/a;->b()Z

    move-result v0

    if-eqz v0, :cond_41

    sget-boolean v0, Lcom/google/googlenav/android/E;->i:Z

    if-nez v0, :cond_41

    .line 540
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 541
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 544
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Google Inc."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 545
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, LaB/a;->m:Ljava/lang/Boolean;

    .line 546
    iput-object v0, p0, LaB/a;->n:Landroid/hardware/Sensor;

    .line 562
    :cond_41
    iget-object v0, p0, LaB/a;->n:Landroid/hardware/Sensor;
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    monitor-exit p0

    return-object v0

    .line 536
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static b([F[F)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 798
    move v1, v0

    move v2, v3

    .line 799
    :goto_5
    if-ge v1, v6, :cond_10

    .line 800
    aget v4, p0, v1

    aget v5, p0, v1

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 799
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 802
    :cond_10
    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    .line 803
    cmpl-float v2, v1, v3

    if-nez v2, :cond_1f

    .line 804
    :goto_18
    if-ge v0, v6, :cond_29

    .line 805
    aput v3, p1, v0

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 808
    :cond_1f
    :goto_1f
    if-ge v0, v6, :cond_29

    .line 809
    aget v2, p0, v0

    div-float/2addr v2, v1

    aput v2, p1, v0

    .line 808
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 812
    :cond_29
    return-void
.end method

.method private j()Landroid/hardware/SensorManager;
    .registers 3

    .prologue
    .line 601
    iget-object v0, p0, LaB/a;->e:Landroid/hardware/SensorManager;

    if-nez v0, :cond_10

    .line 602
    iget-object v0, p0, LaB/a;->d:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, LaB/a;->e:Landroid/hardware/SensorManager;

    .line 604
    :cond_10
    iget-object v0, p0, LaB/a;->e:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method private k()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1010
    iget v0, p0, LaB/a;->F:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    .line 1011
    iget v0, p0, LaB/a;->F:I

    .line 1029
    :goto_8
    return v0

    .line 1013
    :cond_9
    iget-object v0, p0, LaB/a;->S:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_24

    .line 1014
    iget-object v0, p0, LaB/a;->R:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1016
    :try_start_13
    iget-object v2, p0, LaB/a;->S:Ljava/lang/reflect/Method;

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

    .line 1021
    :catch_23
    move-exception v0

    .line 1025
    :cond_24
    :goto_24
    iget-object v0, p0, LaB/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_35

    .line 1027
    const/4 v0, 0x1

    goto :goto_8

    :cond_35
    move v0, v1

    .line 1029
    goto :goto_8

    .line 1019
    :catch_37
    move-exception v0

    goto :goto_24

    .line 1017
    :catch_39
    move-exception v0

    goto :goto_24
.end method

.method private declared-synchronized l()V
    .registers 9

    .prologue
    .line 1089
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaB/a;->G:LaB/e;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    if-nez v0, :cond_7

    .line 1111
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 1094
    :cond_7
    :try_start_7
    iget-object v0, p0, LaB/a;->H:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v4

    .line 1095
    iget-wide v0, p0, LaB/a;->I:J

    sub-long v0, v4, v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 1098
    iget-object v0, p0, LaB/a;->G:LaB/e;

    invoke-interface {v0}, LaB/e;->a()Landroid/location/Location;

    move-result-object v3

    .line 1099
    if-eqz v3, :cond_5

    .line 1103
    iput-wide v4, p0, LaB/a;->I:J

    .line 1104
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

    .line 1109
    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v0

    iput v0, p0, LaB/a;->J:F
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3d

    goto :goto_5

    .line 1089
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()V
    .registers 6

    .prologue
    .line 1141
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, LaB/a;->L:Ljava/util/Map;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_40

    .line 1142
    :try_start_4
    iget-object v0, p0, LaB/a;->L:Ljava/util/Map;

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

    .line 1143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaB/i;

    .line 1144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaB/c;

    .line 1145
    if-eqz v1, :cond_e

    if-eqz v0, :cond_e

    .line 1148
    sget-object v4, LaB/b;->a:[I

    invoke-virtual {v0}, LaB/c;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_52

    goto :goto_e

    .line 1150
    :pswitch_36
    iget-object v0, p0, LaB/a;->K:Ljava/util/WeakHashMap;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 1158
    :catchall_3d
    move-exception v0

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 1141
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1153
    :pswitch_43
    :try_start_43
    iget-object v0, p0, LaB/a;->K:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 1157
    :cond_49
    iget-object v0, p0, LaB/a;->L:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1158
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_3d

    .line 1159
    monitor-exit p0

    return-void

    .line 1148
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_36
        :pswitch_43
    .end packed-switch
.end method


# virtual methods
.method public a(LaB/i;)V
    .registers 4
    .parameter

    .prologue
    .line 1125
    iget-object v0, p0, LaB/a;->L:Ljava/util/Map;

    sget-object v1, LaB/c;->a:LaB/c;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    return-void
.end method

.method public declared-synchronized a(LaB/j;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x3

    .line 465
    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/google/googlenav/android/a;->e()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_37

    move-result v2

    if-eqz v2, :cond_b

    .line 526
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 470
    :cond_b
    :try_start_b
    iget-boolean v2, p0, LaB/a;->b:Z

    if-eqz v2, :cond_9

    .line 475
    iget-object v2, p0, LaB/a;->c:LaB/j;

    if-eq v2, p1, :cond_9

    .line 478
    iput-object p1, p0, LaB/a;->c:LaB/j;

    .line 481
    invoke-static {}, Lcom/google/googlenav/android/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 486
    iget v1, p1, LaB/j;->d:I

    if-nez v1, :cond_3a

    .line 510
    :cond_1f
    :goto_1f
    invoke-direct {p0}, LaB/a;->j()Landroid/hardware/SensorManager;

    move-result-object v1

    .line 511
    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 512
    sget-boolean v2, Lcom/google/googlenav/android/E;->d:Z

    if-eqz v2, :cond_43

    .line 514
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, LaB/a;->l:Landroid/hardware/Sensor;

    .line 515
    iget-object v2, p0, LaB/a;->l:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_37

    goto :goto_9

    .line 465
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    .line 486
    :cond_3a
    :try_start_3a
    iget v0, p1, LaB/j;->d:I

    goto :goto_1f

    .line 506
    :cond_3d
    sget-object v2, LaB/j;->c:LaB/j;

    if-ne p1, v2, :cond_1f

    move v0, v1

    goto :goto_1f

    .line 516
    :cond_43
    invoke-direct {p0, v1}, LaB/a;->a(Landroid/hardware/SensorManager;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 518
    invoke-direct {p0, v1}, LaB/a;->b(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_9

    .line 521
    :cond_51
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, LaB/a;->j:Landroid/hardware/Sensor;

    .line 522
    iget-object v2, p0, LaB/a;->j:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 523
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, LaB/a;->k:Landroid/hardware/Sensor;

    .line 524
    iget-object v2, p0, LaB/a;->k:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_69
    .catchall {:try_start_3a .. :try_end_69} :catchall_37

    goto :goto_9
.end method

.method public a(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 983
    iget-object v0, p0, LaB/a;->d:Landroid/content/Context;

    if-eq v0, p1, :cond_28

    .line 984
    iput-object p1, p0, LaB/a;->d:Landroid/content/Context;

    .line 985
    iput-object v3, p0, LaB/a;->e:Landroid/hardware/SensorManager;

    .line 986
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, LaB/a;->R:Landroid/view/WindowManager;

    .line 988
    iget-object v0, p0, LaB/a;->R:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 989
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 991
    :try_start_1d
    const-string v1, "getRotation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, LaB/a;->S:Ljava/lang/reflect/Method;
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_28} :catch_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_28} :catch_2d

    .line 1000
    :cond_28
    :goto_28
    return-void

    .line 992
    :catch_29
    move-exception v0

    .line 994
    iput-object v3, p0, LaB/a;->S:Ljava/lang/reflect/Method;

    goto :goto_28

    .line 995
    :catch_2d
    move-exception v0

    .line 997
    iput-object v3, p0, LaB/a;->S:Ljava/lang/reflect/Method;

    goto :goto_28
.end method

.method public declared-synchronized a()Z
    .registers 3

    .prologue
    .line 432
    monitor-enter p0

    :try_start_1
    iget v0, p0, LaB/a;->g:I
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
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 714
    monitor-enter p0

    if-eqz p3, :cond_7

    .line 774
    :cond_5
    :goto_5
    monitor-exit p0

    return v0

    .line 718
    :cond_7
    if-nez p4, :cond_1a

    .line 721
    :try_start_9
    iget-wide v2, p0, LaB/a;->y:J

    iget-wide v4, p0, LaB/a;->z:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 723
    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_1a

    move v0, v1

    .line 724
    goto :goto_5

    .line 730
    :cond_1a
    iget-object v2, p0, LaB/a;->c:LaB/j;

    sget-object v3, LaB/j;->c:LaB/j;

    if-ne v2, v3, :cond_47

    const-wide/high16 v2, 0x4049

    .line 732
    :goto_22
    iget-wide v4, p0, LaB/a;->x:J

    const-wide/high16 v6, -0x8000

    cmp-long v4, v4, v6

    if-eqz v4, :cond_33

    iget-wide v4, p0, LaB/a;->x:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    cmpl-double v2, v4, v2

    if-lez v2, :cond_4a

    .line 734
    :cond_33
    if-nez p4, :cond_5

    .line 736
    iget-object v1, p0, LaB/a;->o:[F

    iget-object v2, p0, LaB/a;->s:[F

    invoke-static {v1, v2}, LaB/a;->b([F[F)V

    .line 737
    iget-object v1, p0, LaB/a;->p:[F

    iget-object v2, p0, LaB/a;->t:[F

    invoke-static {v1, v2}, LaB/a;->b([F[F)V
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_44

    goto :goto_5

    .line 714
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    .line 730
    :cond_47
    const-wide/high16 v2, 0x4059

    goto :goto_22

    .line 742
    :cond_4a
    if-eqz p4, :cond_6c

    .line 747
    :try_start_4c
    iget-object v2, p0, LaB/a;->c:LaB/j;

    sget-object v3, LaB/j;->c:LaB/j;

    if-ne v2, v3, :cond_68

    sget v2, LaB/a;->Q:F

    float-to-double v2, v2

    .line 750
    :goto_55
    iget-object v4, p0, LaB/a;->r:[F

    iget-object v5, p0, LaB/a;->w:[F

    invoke-static {v4, v5}, LaB/a;->a([F[F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v2, v4, v2

    if-ltz v2, :cond_5

    :cond_66
    move v0, v1

    .line 774
    goto :goto_5

    .line 747
    :cond_68
    sget v2, LaB/a;->P:F

    float-to-double v2, v2

    goto :goto_55

    .line 761
    :cond_6c
    iget-object v2, p0, LaB/a;->c:LaB/j;

    sget-object v3, LaB/j;->c:LaB/j;

    if-ne v2, v3, :cond_9f

    sget v2, LaB/a;->O:F

    float-to-double v2, v2

    .line 763
    :goto_75
    iget-object v4, p0, LaB/a;->o:[F

    iget-object v5, p0, LaB/a;->s:[F

    invoke-static {v4, v5}, LaB/a;->b([F[F)V

    .line 764
    iget-object v4, p0, LaB/a;->p:[F

    iget-object v5, p0, LaB/a;->t:[F

    invoke-static {v4, v5}, LaB/a;->b([F[F)V

    .line 765
    iget-object v4, p0, LaB/a;->s:[F

    iget-object v5, p0, LaB/a;->u:[F

    invoke-static {v4, v5}, LaB/a;->a([F[F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v4, v4, v2

    if-ltz v4, :cond_5

    iget-object v4, p0, LaB/a;->t:[F

    iget-object v5, p0, LaB/a;->v:[F

    invoke-static {v4, v5}, LaB/a;->a([F[F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v2, v4, v2

    if-gez v2, :cond_66

    goto/16 :goto_5

    .line 761
    :cond_9f
    sget v2, LaB/a;->N:F
    :try_end_a1
    .catchall {:try_start_4c .. :try_end_a1} :catchall_44

    float-to-double v2, v2

    goto :goto_75
.end method

.method public declared-synchronized b()I
    .registers 2

    .prologue
    .line 437
    monitor-enter p0

    :try_start_1
    iget v0, p0, LaB/a;->g:I
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
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x42b4

    const v6, 0x42652ee0

    const/4 v0, 0x1

    .line 827
    monitor-enter p0

    if-eqz p3, :cond_66

    .line 830
    :try_start_9
    iget-object v0, p0, LaB/a;->q:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 834
    invoke-direct {p0}, LaB/a;->k()I

    move-result v1

    packed-switch v1, :pswitch_data_fe

    .line 940
    :goto_15
    invoke-static {v0}, Lcom/google/googlenav/common/util/j;->a(F)F

    move-result v0

    .line 941
    invoke-direct {p0}, LaB/a;->l()V

    .line 942
    iget v1, p0, LaB/a;->J:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/googlenav/common/util/j;->a(F)F

    move-result v0

    .line 943
    iget-object v1, p0, LaB/a;->f:LaB/f;

    invoke-virtual {v1, p1, p2, v0}, LaB/f;->a(JF)F

    move-result v0

    iput v0, p0, LaB/a;->h:F

    .line 946
    invoke-direct {p0}, LaB/a;->m()V

    .line 947
    iget-object v0, p0, LaB/a;->M:LaB/d;

    iget v3, p0, LaB/a;->h:F

    iget v4, p0, LaB/a;->i:F

    iget-object v5, p0, LaB/a;->c:LaB/j;

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, LaB/d;->a(LaB/d;JFFLaB/j;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 948
    iget-object v0, p0, LaB/a;->K:Ljava/util/WeakHashMap;

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

    check-cast v0, LaB/i;

    .line 949
    iget v2, p0, LaB/a;->h:F

    iget v3, p0, LaB/a;->i:F

    invoke-interface {v0, v2, v3}, LaB/i;->a(FF)V
    :try_end_5a
    .catchall {:try_start_9 .. :try_end_5a} :catchall_5b

    goto :goto_47

    .line 827
    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 836
    :pswitch_5e
    add-float/2addr v0, v7

    .line 837
    goto :goto_15

    .line 839
    :pswitch_60
    sub-float/2addr v0, v7

    .line 840
    goto :goto_15

    .line 842
    :pswitch_62
    const/high16 v1, 0x4334

    add-float/2addr v0, v1

    .line 843
    goto :goto_15

    .line 848
    :cond_66
    :try_start_66
    iput-wide p1, p0, LaB/a;->x:J

    .line 850
    if-eqz p4, :cond_bf

    .line 853
    iget-object v1, p0, LaB/a;->r:[F

    const/4 v2, 0x0

    iget-object v3, p0, LaB/a;->w:[F

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    iget-object v1, p0, LaB/a;->A:[F

    iget-object v2, p0, LaB/a;->r:[F

    invoke-static {v1, v2}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 879
    :cond_7b
    invoke-direct {p0}, LaB/a;->k()I

    move-result v1

    packed-switch v1, :pswitch_data_108

    .line 894
    const/4 v1, 0x2

    move v8, v1

    move v1, v0

    move v0, v8

    .line 896
    :goto_86
    iget-object v2, p0, LaB/a;->A:[F

    iget-object v3, p0, LaB/a;->B:[F

    invoke-static {v2, v1, v0, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move-result v0

    .line 898
    if-nez v0, :cond_90

    .line 913
    :cond_90
    iget-object v0, p0, LaB/a;->B:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    sget v1, LaB/a;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ee

    .line 914
    iget-object v0, p0, LaB/a;->B:[F

    const/4 v1, 0x1

    const/4 v2, 0x3

    iget-object v3, p0, LaB/a;->A:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    move-result v0

    .line 916
    if-nez v0, :cond_a7

    .line 923
    :cond_a7
    iget-object v0, p0, LaB/a;->A:[F

    iget-object v1, p0, LaB/a;->C:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 925
    iget-object v0, p0, LaB/a;->C:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-float/2addr v0, v6

    sub-float/2addr v0, v7

    iput v0, p0, LaB/a;->i:F

    .line 936
    :goto_b7
    iget-object v0, p0, LaB/a;->C:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, v6

    goto/16 :goto_15

    .line 861
    :cond_bf
    iget-object v1, p0, LaB/a;->s:[F

    const/4 v2, 0x0

    iget-object v3, p0, LaB/a;->u:[F

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 862
    iget-object v1, p0, LaB/a;->t:[F

    const/4 v2, 0x0

    iget-object v3, p0, LaB/a;->v:[F

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 866
    iget-object v1, p0, LaB/a;->A:[F

    const/4 v2, 0x0

    iget-object v3, p0, LaB/a;->p:[F

    iget-object v4, p0, LaB/a;->o:[F

    invoke-static {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z
    :try_end_dd
    .catchall {:try_start_66 .. :try_end_dd} :catchall_5b

    move-result v1

    .line 868
    if-nez v1, :cond_7b

    .line 952
    :cond_e0
    monitor-exit p0

    return-void

    .line 881
    :pswitch_e2
    const/4 v1, 0x2

    .line 882
    const/16 v0, 0x81

    .line 883
    goto :goto_86

    .line 885
    :pswitch_e6
    const/16 v1, 0x82

    .line 887
    goto :goto_86

    .line 889
    :pswitch_e9
    const/16 v1, 0x81

    .line 890
    const/16 v0, 0x82

    .line 891
    goto :goto_86

    .line 929
    :cond_ee
    :try_start_ee
    iget-object v0, p0, LaB/a;->B:[F

    iget-object v1, p0, LaB/a;->C:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 931
    iget-object v0, p0, LaB/a;->C:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-float/2addr v0, v6

    iput v0, p0, LaB/a;->i:F
    :try_end_fd
    .catchall {:try_start_ee .. :try_end_fd} :catchall_5b

    goto :goto_b7

    .line 834
    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_62
        :pswitch_60
    .end packed-switch

    .line 879
    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_e2
        :pswitch_e9
        :pswitch_e6
    .end packed-switch
.end method

.method public b(LaB/i;)V
    .registers 4
    .parameter

    .prologue
    .line 1130
    iget-object v0, p0, LaB/a;->L:Ljava/util/Map;

    sget-object v1, LaB/c;->b:LaB/c;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    return-void
.end method

.method public declared-synchronized c()Z
    .registers 3

    .prologue
    .line 442
    monitor-enter p0

    :try_start_1
    iget v0, p0, LaB/a;->h:F
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

    .prologue
    .line 447
    monitor-enter p0

    :try_start_1
    iget v0, p0, LaB/a;->h:F
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

    .prologue
    .line 573
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, LaB/a;->b:Z

    .line 577
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaB/a;->y:J

    .line 578
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaB/a;->z:J

    .line 581
    sget-object v0, LaB/j;->b:LaB/j;

    invoke-virtual {p0, v0}, LaB/a;->a(LaB/j;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_13

    .line 582
    monitor-exit p0

    return-void

    .line 573
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized f()V
    .registers 2

    .prologue
    .line 586
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, LaB/a;->j()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, LaB/a;->b:Z

    .line 588
    sget-object v0, LaB/j;->a:LaB/j;

    iput-object v0, p0, LaB/a;->c:LaB/j;

    .line 589
    const/4 v0, 0x0

    iput-object v0, p0, LaB/a;->j:Landroid/hardware/Sensor;

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, LaB/a;->k:Landroid/hardware/Sensor;

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, LaB/a;->l:Landroid/hardware/Sensor;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 592
    monitor-exit p0

    return-void

    .line 586
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 958
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaB/a;->k:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_35

    .line 959
    iput p2, p0, LaB/a;->E:I

    .line 967
    :cond_7
    :goto_7
    iget-object v0, p0, LaB/a;->l:Landroid/hardware/Sensor;

    if-eq p1, v0, :cond_f

    iget-object v0, p0, LaB/a;->n:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_3c

    .line 971
    :cond_f
    :goto_f
    iget v0, p0, LaB/a;->g:I

    if-eq p2, v0, :cond_45

    .line 972
    iput p2, p0, LaB/a;->g:I

    .line 973
    invoke-direct {p0}, LaB/a;->m()V

    .line 974
    iget-object v0, p0, LaB/a;->K:Ljava/util/WeakHashMap;

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

    check-cast v0, LaB/i;

    .line 975
    invoke-interface {v0, p2}, LaB/i;->a(I)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_32

    goto :goto_22

    .line 958
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0

    .line 960
    :cond_35
    :try_start_35
    iget-object v0, p0, LaB/a;->j:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_7

    .line 961
    iput p2, p0, LaB/a;->D:I

    goto :goto_7

    .line 967
    :cond_3c
    iget v0, p0, LaB/a;->E:I

    iget v1, p0, LaB/a;->D:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_32

    move-result p2

    goto :goto_f

    .line 978
    :cond_45
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v9, 0x3

    const/4 v1, 0x0

    .line 620
    monitor-enter p0

    :try_start_4
    iget-object v2, p0, LaB/a;->H:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v3

    .line 621
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v5, p0, LaB/a;->l:Landroid/hardware/Sensor;

    if-ne v2, v5, :cond_34

    move v2, v0

    .line 622
    :goto_11
    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v6, p0, LaB/a;->n:Landroid/hardware/Sensor;

    if-ne v5, v6, :cond_36

    .line 623
    :goto_17
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v5, p0, LaB/a;->j:Landroid/hardware/Sensor;

    if-ne v1, v5, :cond_38

    .line 624
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    iget-object v6, p0, LaB/a;->o:[F

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v1, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 625
    iput-wide v3, p0, LaB/a;->y:J

    .line 642
    :cond_29
    :goto_29
    invoke-virtual {p0, v3, v4, v2, v0}, LaB/a;->a(JZZ)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 643
    invoke-virtual {p0, v3, v4, v2, v0}, LaB/a;->b(JZZ)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_4b

    .line 668
    :cond_32
    monitor-exit p0

    return-void

    :cond_34
    move v2, v1

    .line 621
    goto :goto_11

    :cond_36
    move v0, v1

    .line 622
    goto :goto_17

    .line 626
    :cond_38
    :try_start_38
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v5, p0, LaB/a;->k:Landroid/hardware/Sensor;

    if-ne v1, v5, :cond_4e

    .line 627
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    iget-object v6, p0, LaB/a;->p:[F

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v1, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    iput-wide v3, p0, LaB/a;->z:J
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_4b

    goto :goto_29

    .line 620
    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 629
    :cond_4e
    if-eqz v2, :cond_5b

    .line 630
    :try_start_50
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    iget-object v6, p0, LaB/a;->q:[F

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v1, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_29

    .line 632
    :cond_5b
    if-eqz v0, :cond_29

    .line 633
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    iget-object v6, p0, LaB/a;->r:[F

    const/4 v7, 0x0

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v8, v8

    invoke-static {v1, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-ne v1, v9, :cond_29

    .line 635
    iget-object v1, p0, LaB/a;->r:[F

    const/4 v5, 0x3

    iget-object v6, p0, LaB/a;->r:[F

    invoke-static {v6}, LaB/a;->a([F)F

    move-result v6

    aput v6, v1, v5
    :try_end_79
    .catchall {:try_start_50 .. :try_end_79} :catchall_4b

    goto :goto_29
.end method
