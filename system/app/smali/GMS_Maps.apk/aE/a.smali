.class public LaE/a;
.super LaE/b;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field protected a:LaE/o;

.field private final h:Landroid/content/Context;

.field private i:LaJ/B;

.field private j:Landroid/location/Location;

.field private k:Z

.field private l:Lf/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, LaE/b;-><init>(ZZ)V

    iput-object v1, p0, LaE/a;->i:LaJ/B;

    iput-object v1, p0, LaE/a;->j:Landroid/location/Location;

    iput-boolean v2, p0, LaE/a;->k:Z

    iput-object v1, p0, LaE/a;->l:Lf/c;

    iput-object p1, p0, LaE/a;->h:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "network"

    return-object v0
.end method

.method protected a(Landroid/location/Location;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LaE/a;->a(Landroid/location/Location;Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LaE/a;->a(Landroid/location/Location;Z)V

    return-void
.end method

.method protected a(Landroid/location/Location;Z)V
    .registers 12

    const/4 v0, -0x1

    const-wide v5, 0x412e848000000000L

    if-nez p1, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, LaE/a;->a:LaE/o;

    invoke-virtual {v1, p1}, LaE/o;->a(Landroid/location/Location;)V

    iput-object p1, p0, LaE/a;->j:Landroid/location/Location;

    new-instance v1, LaJ/B;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, LaJ/B;-><init>(II)V

    iput-object v1, p0, LaE/a;->i:LaJ/B;

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    float-to-int v2, v1

    :goto_2e
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-int v3, v1

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    :goto_41
    invoke-static {p1}, LaE/a;->b(Landroid/location/Location;)Lt/y;

    move-result-object v5

    iget-object v1, p0, LaE/a;->i:LaJ/B;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    move-object v0, p0

    move v8, p2

    invoke-virtual/range {v0 .. v8}, LaE/a;->a(LaJ/B;IIILt/y;JZ)V

    goto :goto_8

    :cond_51
    move v2, v0

    goto :goto_2e

    :cond_53
    move v4, v0

    goto :goto_41
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, LaE/a;->k:Z

    return-void
.end method

.method protected b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaE/a;->l:Lf/c;

    if-eqz v0, :cond_d

    iget-object v0, p0, LaE/a;->l:Lf/c;

    invoke-virtual {v0}, Lf/c;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, LaE/a;->l:Lf/c;

    :cond_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    invoke-virtual {p0}, LaE/a;->l()V

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method protected c()V
    .registers 7

    new-instance v0, LaE/o;

    const-string v1, ""

    invoke-direct {v0, v1}, LaE/o;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LaE/a;->a:LaE/o;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-nez v4, :cond_17

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getMainLooper() returned null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    monitor-enter p0

    :try_start_18
    iget-object v0, p0, LaE/a;->l:Lf/c;

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :try_start_27
    new-instance v0, Lf/c;

    iget-object v1, p0, LaE/a;->h:Landroid/content/Context;

    const/4 v2, 0x5

    const/16 v5, 0x2d0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lf/c;-><init>(Landroid/content/Context;ILandroid/location/LocationListener;Landroid/os/Looper;I)V

    iput-object v0, p0, LaE/a;->l:Lf/c;

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_24

    return-void
.end method

.method public d()LaE/l;
    .registers 4

    new-instance v0, LaE/l;

    invoke-virtual {p0}, LaE/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LaE/l;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LaE/a;->i:LaJ/B;

    invoke-virtual {v0, v1}, LaE/l;->a(LaJ/B;)V

    iget-wide v1, p0, LaE/a;->c:J

    invoke-virtual {v0, v1, v2}, LaE/l;->a(J)V

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, LaE/a;->k:Z

    return v0
.end method

.method public declared-synchronized f()Lam/b;
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, LaE/a;->l:Lf/c;

    if-eqz v1, :cond_1f

    iget-object v1, p0, LaE/a;->j:Landroid/location/Location;

    if-eqz v1, :cond_1f

    iget-object v1, p0, LaE/a;->l:Lf/c;

    iget-object v2, p0, LaE/a;->j:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lf/c;->a(Landroid/location/Location;)[B
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_28

    move-result-object v1

    if-eqz v1, :cond_1f

    :try_start_14
    new-instance v2, Lam/b;

    sget-object v3, Lbr/ay;->j:Lam/e;

    invoke-direct {v2, v3}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v2, v1}, Lam/b;->a([B)Lam/b;
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_28
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_21

    move-result-object v0

    :cond_1f
    :goto_1f
    monitor-exit p0

    return-object v0

    :catch_21
    move-exception v1

    :try_start_22
    const-string v2, "RMI"

    invoke-static {v2, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_28

    goto :goto_1f

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaE/a;->l:Lf/c;

    if-eqz v0, :cond_f

    iget-object v0, p0, LaE/a;->l:Lf/c;

    invoke-virtual {v0}, Lf/c;->b()Lcom/google/android/location/internal/h;

    move-result-object v0

    iget v0, v0, Lcom/google/android/location/internal/h;->d:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 2

    invoke-virtual {p0, p1}, LaE/a;->a(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
