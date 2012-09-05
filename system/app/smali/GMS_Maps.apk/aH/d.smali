.class public LaH/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/location/Location;

.field private b:Landroid/location/Location;

.field private c:Ljava/lang/Object;

.field private d:Lap/d;

.field private final e:LaH/j;


# direct methods
.method public constructor <init>(LaH/j;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaH/d;->c:Ljava/lang/Object;

    iput-object p1, p0, LaH/d;->e:LaH/j;

    new-instance v0, Lap/d;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    new-instance v2, LaH/e;

    invoke-direct {v2, p0}, LaH/e;-><init>(LaH/d;)V

    invoke-direct {v0, v1, v2}, Lap/d;-><init>(Lap/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, LaH/d;->d:Lap/d;

    iget-object v0, p0, LaH/d;->d:Lap/d;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lap/d;->a(J)V

    iget-object v0, p0, LaH/d;->d:Lap/d;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lap/d;->c(J)V

    iget-object v0, p0, LaH/d;->d:Lap/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lap/d;->a(Z)V

    iget-object v0, p0, LaH/d;->d:Lap/d;

    invoke-virtual {v0}, Lap/d;->g()V

    return-void
.end method

.method static synthetic a(LaH/d;)Landroid/location/Location;
    .registers 2

    invoke-direct {p0}, LaH/d;->b()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LaH/d;Landroid/location/Location;)Landroid/location/Location;
    .registers 2

    iput-object p1, p0, LaH/d;->a:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic b(LaH/d;)LaH/j;
    .registers 2

    iget-object v0, p0, LaH/d;->e:LaH/j;

    return-object v0
.end method

.method private b()Landroid/location/Location;
    .registers 14

    iget-object v2, p0, LaH/d;->a:Landroid/location/Location;

    iget-object v1, p0, LaH/d;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, LaH/d;->b:Landroid/location/Location;

    monitor-exit v1

    if-nez v2, :cond_e

    :cond_a
    :goto_a
    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v0

    :cond_e
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    sub-double/2addr v3, v5

    const-wide v5, 0x3fc5c28f60000000L

    mul-double/2addr v5, v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    sub-double/2addr v7, v9

    const-wide v9, 0x3fc5c28f60000000L

    mul-double/2addr v9, v7

    const-wide v11, 0x416312d000000000L

    mul-double/2addr v3, v11

    const-wide v11, 0x40c3880000000000L

    cmpl-double v1, v3, v11

    if-gtz v1, :cond_a

    const-wide v3, 0x416312d000000000L

    mul-double/2addr v3, v7

    const-wide v7, 0x40c3880000000000L

    cmpl-double v1, v3, v7

    if-gtz v1, :cond_a

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v1, v3

    const v3, 0x3e2e147b

    mul-float/2addr v3, v1

    new-instance v1, Landroid/location/Location;

    const-string v4, "ParticleFilterLocationProvider"

    invoke-direct {v1, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    add-double v4, v7, v5

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    add-double/2addr v4, v9

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setTime(J)V

    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/location/Location;->setAccuracy(F)V

    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/location/Location;->setBearing(F)V

    :cond_92
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/location/Location;->setSpeed(F)V

    :cond_9f
    move-object v0, v1

    goto/16 :goto_a
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, LaH/d;->d:Lap/d;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaH/d;->d:Lap/d;

    invoke-virtual {v0}, Lap/d;->c()I

    :cond_9
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .registers 4

    iget-object v1, p0, LaH/d;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, LaH/d;->b:Landroid/location/Location;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
