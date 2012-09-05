.class public Ls/z;
.super Ljava/lang/Object;

# interfaces
.implements Ls/v;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/location/Location;

.field private g:Landroid/location/Location;

.field private h:F

.field private i:Ls/t;

.field private j:Ls/c;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x4080

    iput v0, p0, Ls/z;->h:F

    iput-boolean v1, p0, Ls/z;->c:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ls/z;->a:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ls/z;->b:Ljava/util/List;

    iput-boolean v1, p0, Ls/z;->d:Z

    iput-boolean v1, p0, Ls/z;->e:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/location/Location;
    .registers 3

    const-string v0, "gps"

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Ls/z;->f:Landroid/location/Location;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "network"

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Ls/z;->g:Landroid/location/Location;

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a()Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Ls/z;->d:Z

    if-eqz v1, :cond_e

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-boolean v1, p0, Ls/z;->e:Z

    if-eqz v1, :cond_17

    const-string v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;JFLs/c;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    new-instance v0, Ls/A;

    invoke-direct {v0, p1, p5}, Ls/A;-><init>(Ljava/lang/String;Ls/c;)V

    iget-object v1, p0, Ls/z;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Ls/z;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ls/c;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ls/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/A;

    iget-object v0, v0, Ls/A;->b:Ls/c;

    if-ne v0, p1, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_7

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    monitor-exit p0

    return-void
.end method

.method public a(Ls/s;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized a(LC/j;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_3
    instance-of v2, p1, Lq/p;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_56

    if-nez v2, :cond_9

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    :try_start_9
    check-cast p1, Lq/p;

    invoke-virtual {p1}, Lq/p;->b()Ljava/lang/String;

    move-result-object v2

    instance-of v0, p1, Lq/o;

    if-eqz v0, :cond_64

    check-cast p1, Lq/o;

    new-instance v3, Landroid/location/Location;

    invoke-virtual {p1}, Lq/o;->a()Landroid/location/Location;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v3, v2}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    iget-boolean v0, p0, Ls/z;->c:Z

    if-eqz v0, :cond_2c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setTime(J)V

    :cond_2c
    const-string v0, "gps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    iput-object v3, p0, Ls/z;->f:Landroid/location/Location;

    :cond_36
    :goto_36
    iget-object v0, p0, Ls/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_134

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/A;

    iget-object v5, v0, Ls/A;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    iget-object v0, v0, Ls/A;->b:Ls/c;

    invoke-interface {v0, v3}, Ls/c;->onLocationChanged(Landroid/location/Location;)V
    :try_end_55
    .catchall {:try_start_9 .. :try_end_55} :catchall_56

    goto :goto_3c

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_59
    :try_start_59
    const-string v0, "network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iput-object v3, p0, Ls/z;->g:Landroid/location/Location;

    goto :goto_36

    :cond_64
    instance-of v0, p1, Lq/r;

    if-eqz v0, :cond_9f

    const-string v0, "gps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/z;->d:Z

    :cond_73
    :goto_73
    iget-object v0, p0, Ls/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_79
    :goto_79
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_134

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/A;

    iget-object v4, v0, Ls/A;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    iget-object v0, v0, Ls/A;->b:Ls/c;

    invoke-interface {v0, v2}, Ls/c;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_79

    :cond_93
    const-string v0, "network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/z;->e:Z

    goto :goto_73

    :cond_9f
    instance-of v0, p1, Lq/q;

    if-eqz v0, :cond_da

    const-string v0, "gps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/z;->d:Z

    :cond_ae
    :goto_ae
    iget-object v0, p0, Ls/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b4
    :goto_b4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_134

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/A;

    iget-object v4, v0, Ls/A;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    iget-object v0, v0, Ls/A;->b:Ls/c;

    invoke-interface {v0, v2}, Ls/c;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_b4

    :cond_ce
    const-string v0, "network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/z;->e:Z

    goto :goto_ae

    :cond_da
    instance-of v0, p1, Lq/s;

    if-eqz v0, :cond_108

    check-cast p1, Lq/s;

    iget-object v0, p0, Ls/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e6
    :goto_e6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_134

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/A;

    iget-object v4, v0, Ls/A;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e6

    iget-object v0, v0, Ls/A;->b:Ls/c;

    invoke-virtual {p1}, Lq/s;->a()I

    move-result v4

    invoke-virtual {p1}, Lq/s;->c()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v0, v2, v4, v5}, Ls/c;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_e6

    :cond_108
    instance-of v0, p1, Lq/w;

    if-eqz v0, :cond_134

    check-cast p1, Lq/w;

    invoke-virtual {p1}, Lq/w;->a()Ls/C;

    move-result-object v0

    invoke-virtual {v0}, Ls/C;->c()F

    move-result v0

    iput v0, p0, Ls/z;->h:F

    iget-object v0, p0, Ls/z;->j:Ls/c;

    if-eqz v0, :cond_134

    invoke-virtual {p1}, Lq/w;->a()Ls/C;

    move-result-object v0

    iget-boolean v2, p0, Ls/z;->c:Z

    if-eqz v2, :cond_12b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ls/C;->a(J)V

    :cond_12b
    iget-object v0, p0, Ls/z;->j:Ls/c;

    invoke-virtual {p1}, Lq/w;->a()Ls/C;

    move-result-object v2

    invoke-interface {v0, v2}, Ls/c;->a(Ls/C;)V
    :try_end_134
    .catchall {:try_start_59 .. :try_end_134} :catchall_56

    :cond_134
    move v0, v1

    goto/16 :goto_7
.end method

.method public declared-synchronized a(Landroid/location/GpsStatus$Listener;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ls/z;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Ls/z;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    const/4 v0, 0x1

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Ls/z;->j:Ls/c;

    return-void
.end method

.method public declared-synchronized b(Landroid/location/GpsStatus$Listener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ls/z;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ls/c;)V
    .registers 2

    iput-object p1, p0, Ls/z;->j:Ls/c;

    return-void
.end method

.method public declared-synchronized b(LC/j;)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    instance-of v0, p1, Lq/n;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_33

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    check-cast p1, Lq/n;

    new-instance v0, Ls/t;

    invoke-virtual {p1}, Lq/n;->b()I

    move-result v1

    invoke-virtual {p1}, Lq/n;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ls/t;-><init>(II)V

    iput-object v0, p0, Ls/z;->i:Ls/t;

    iget-object v0, p0, Ls/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsStatus$Listener;

    invoke-virtual {p1}, Lq/n;->a()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_33

    goto :goto_1f

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_36
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Ls/z;->d:Z

    :goto_a
    return v0

    :cond_b
    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Ls/z;->e:Z

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public declared-synchronized c()Ls/t;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ls/z;->i:Ls/t;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()F
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Ls/z;->h:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()V
    .registers 1

    return-void
.end method
