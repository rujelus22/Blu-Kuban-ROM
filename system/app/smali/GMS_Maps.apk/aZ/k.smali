.class LaZ/k;
.super Lcom/google/android/maps/driveabout/vector/n;


# instance fields
.field private final d:Ljava/util/List;

.field private e:Lcom/google/android/maps/driveabout/vector/VectorMapView;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/n;-><init>(Lcom/google/android/maps/driveabout/vector/U;)V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaZ/k;->d:Ljava/util/List;

    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, LaZ/k;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaZ/k;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e()V

    :cond_9
    return-void
.end method

.method private declared-synchronized h()[Lcom/google/android/maps/driveabout/vector/aD;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaZ/k;->d:Ljava/util/List;

    iget-object v1, p0, LaZ/k;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/vector/aD;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/aD;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, LaZ/k;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-nez p1, :cond_a

    iget-object v0, p0, LaZ/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aD;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaZ/k;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, LaZ/k;->e()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaZ/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aT;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/cm;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaZ/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/cm;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 8

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-nez v0, :cond_16

    invoke-direct {p0}, LaZ/k;->h()[Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_16

    aget-object v3, v1, v0

    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_16
    return-void
.end method

.method public a(Ljava/util/List;FFLt/L;Lcom/google/android/maps/driveabout/vector/t;I)V
    .registers 17

    invoke-direct {p0}, LaZ/k;->h()[Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v8

    array-length v9, v8

    const/4 v0, 0x0

    move v7, v0

    :goto_7
    if-ge v7, v9, :cond_19

    aget-object v0, v8, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/aD;->a(Ljava/util/List;FFLt/L;Lcom/google/android/maps/driveabout/vector/t;I)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_7

    :cond_19
    return-void
.end method

.method public declared-synchronized a(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaZ/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aD;->a(Z)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public a_(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 8

    invoke-direct {p0}, LaZ/k;->h()[Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_16

    aget-object v2, v1, v0

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/aD;->a_(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public declared-synchronized a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, LaZ/k;->h()[Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_11

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Lcom/google/android/maps/driveabout/vector/aD;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, LaZ/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aD;->b()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public declared-synchronized b(Lcom/google/android/maps/driveabout/vector/aD;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaZ/k;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, LaZ/k;->e()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(FFLcom/google/android/maps/driveabout/vector/t;)Z
    .registers 7

    invoke-direct {p0}, LaZ/k;->h()[Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_16

    aget-object v2, v1, v0

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aD;->b(FFLcom/google/android/maps/driveabout/vector/t;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public declared-synchronized c(Lcom/google/android/maps/driveabout/vector/aD;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaZ/k;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, LaZ/k;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, LaZ/k;->e()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 8

    invoke-direct {p0}, LaZ/k;->h()[Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_16

    aget-object v2, v1, v0

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/aD;->c(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public d(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 8

    invoke-direct {p0}, LaZ/k;->h()[Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_16

    aget-object v2, v1, v0

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/aD;->d(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public l()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public n_()Z
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, LaZ/k;->h()[Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v2

    move v0, v1

    :goto_6
    array-length v3, v2

    if-ge v0, v3, :cond_12

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/aD;->n_()Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v1, 0x1

    :cond_12
    return v1

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public s_()I
    .registers 2

    const v0, 0x7a120

    return v0
.end method
