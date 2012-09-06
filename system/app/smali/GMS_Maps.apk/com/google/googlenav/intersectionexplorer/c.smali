.class public Lcom/google/googlenav/intersectionexplorer/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Ln/Q;

.field private final b:Ljava/util/Map;

.field private final c:Lcom/google/android/maps/driveabout/vector/X;

.field private d:Lcom/google/android/maps/driveabout/vector/X;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/c;->a:Ln/Q;

    .line 82
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->e:Z

    .line 84
    invoke-direct {p0}, Lcom/google/googlenav/intersectionexplorer/c;->h()Lcom/google/android/maps/driveabout/vector/X;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->c:Lcom/google/android/maps/driveabout/vector/X;

    .line 85
    return-void
.end method

.method public static a(DD)D
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 397
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 398
    const-wide v2, 0x400921fb54442d18L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_16

    .line 399
    const-wide v2, 0x401921fb54442d18L

    sub-double v0, v2, v0

    .line 401
    :cond_16
    return-wide v0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 167
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 168
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/ac;

    .line 169
    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/c;->a(Ln/ac;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 172
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-static {v1}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    .line 174
    const/4 v0, 0x0

    move v1, v0

    :goto_27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_55

    .line 175
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v0, v1, 0x2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_47

    .line 179
    const-string v0, " and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_43
    :goto_43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    .line 180
    :cond_47
    add-int/lit8 v0, v1, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_43

    .line 181
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 184
    :cond_55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ln/ac;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 156
    invoke-virtual {p0}, Ln/ac;->c()I

    move-result v0

    if-lez v0, :cond_c

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ln/ac;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_b
    return-object v0

    :cond_c
    const/16 v0, 0x207

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static b(DD)D
    .registers 10
    .parameter
    .parameter

    .prologue
    const-wide v4, 0x401921fb54442d18L

    .line 409
    sub-double v0, p0, p2

    .line 410
    :goto_7
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_f

    .line 411
    add-double/2addr v0, v4

    goto :goto_7

    .line 413
    :cond_f
    :goto_f
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_15

    .line 414
    sub-double/2addr v0, v4

    goto :goto_f

    .line 416
    :cond_15
    return-wide v0
.end method

.method public static b(Ljava/util/List;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_37

    .line 295
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/google/googlenav/intersectionexplorer/c;->a(DD)D

    move-result-wide v3

    .line 296
    const-wide v5, 0x3fd921fb54442d18L

    .line 297
    cmpg-double v0, v3, v5

    if-ltz v0, :cond_35

    const-wide v7, 0x400921fb54442d18L

    sub-double v5, v7, v5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_37

    :cond_35
    move v0, v1

    .line 301
    :goto_36
    return v0

    :cond_37
    move v0, v2

    goto :goto_36
.end method

.method private h()Lcom/google/android/maps/driveabout/vector/X;
    .registers 6

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v0

    .line 480
    new-instance v1, Ln/W;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ln/W;-><init>(I)V

    .line 481
    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v2

    add-int/lit8 v2, v2, -0x19

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v3

    add-int/lit8 v3, v3, -0x19

    invoke-virtual {v1, v2, v3}, Ln/W;->a(II)Z

    .line 482
    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-virtual {v1, v2, v3}, Ln/W;->a(II)Z

    .line 483
    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v2

    add-int/lit8 v2, v2, -0x19

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-virtual {v1, v2, v3}, Ln/W;->a(II)Z

    .line 484
    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v3

    add-int/lit8 v3, v3, -0x19

    invoke-virtual {v1, v2, v3}, Ln/W;->a(II)Z

    .line 485
    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v2

    add-int/lit8 v2, v2, -0x19

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x19

    invoke-virtual {v1, v2, v0}, Ln/W;->a(II)Z

    .line 486
    new-instance v0, Lcom/google/android/maps/driveabout/vector/X;

    invoke-virtual {v1}, Ln/W;->d()Ln/U;

    move-result-object v1

    const/high16 v2, 0x40c0

    const v3, -0xff0100

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/X;-><init>(Ln/U;FILn/p;)V

    return-object v0
.end method

.method private i()Lcom/google/android/maps/driveabout/vector/X;
    .registers 6

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v0

    .line 496
    new-instance v1, Ln/W;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ln/W;-><init>(I)V

    .line 497
    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v3

    add-int/lit8 v3, v3, -0x1e

    invoke-virtual {v1, v2, v3}, Ln/W;->a(II)Z

    .line 498
    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    invoke-virtual {v1, v2, v3}, Ln/W;->a(II)Z

    .line 499
    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    invoke-virtual {v1, v2, v3}, Ln/W;->a(II)Z

    .line 500
    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v3

    add-int/lit8 v3, v3, -0x1e

    invoke-virtual {v1, v2, v3}, Ln/W;->a(II)Z

    .line 501
    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    invoke-virtual {v0}, Ln/Q;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1e

    invoke-virtual {v1, v2, v0}, Ln/W;->a(II)Z

    .line 502
    new-instance v0, Lcom/google/android/maps/driveabout/vector/X;

    invoke-virtual {v1}, Ln/W;->d()Ln/U;

    move-result-object v1

    const/high16 v2, 0x40c0

    const/high16 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/X;-><init>(Ln/U;FILn/p;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/intersectionexplorer/c;)I
    .registers 4
    .parameter

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/Q;->k(Ln/Q;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 510
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->e:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->d:Lcom/google/android/maps/driveabout/vector/X;

    if-eqz v0, :cond_10

    .line 511
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->d:Lcom/google/android/maps/driveabout/vector/X;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/X;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_16

    .line 515
    :goto_e
    monitor-exit p0

    return-void

    .line 513
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->c:Lcom/google/android/maps/driveabout/vector/X;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/X;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_e

    .line 510
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/googlenav/intersectionexplorer/c;Ln/ac;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 354
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 355
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p2}, Ln/ac;->c()I

    move-result v0

    if-lez v0, :cond_1a

    .line 356
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 359
    :cond_1a
    monitor-exit p0

    return-void

    .line 354
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/googlenav/intersectionexplorer/c;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .registers 2

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ln/Q;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->a:Ln/Q;

    return-object v0
.end method

.method public declared-synchronized b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/googlenav/intersectionexplorer/c;->e:Z

    .line 132
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->d:Lcom/google/android/maps/driveabout/vector/X;

    if-nez v0, :cond_d

    .line 133
    invoke-direct {p0}, Lcom/google/googlenav/intersectionexplorer/c;->i()Lcom/google/android/maps/driveabout/vector/X;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->d:Lcom/google/android/maps/driveabout/vector/X;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 135
    :cond_d
    monitor-exit p0

    return-void

    .line 131
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/google/googlenav/intersectionexplorer/c;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 99
    monitor-enter p0

    if-eqz p1, :cond_6

    if-ne p1, p0, :cond_9

    .line 100
    :cond_6
    const/4 v0, 0x0

    .line 111
    :goto_7
    monitor-exit p0

    return v0

    .line 103
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Lcom/google/googlenav/intersectionexplorer/c;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/c;

    .line 104
    invoke-virtual {p1, v0}, Lcom/google/googlenav/intersectionexplorer/c;->f(Lcom/google/googlenav/intersectionexplorer/c;)Ln/ac;

    move-result-object v3

    .line 105
    invoke-virtual {v0, p1}, Lcom/google/googlenav/intersectionexplorer/c;->e(Lcom/google/googlenav/intersectionexplorer/c;)V

    .line 106
    invoke-virtual {v0, p0, v3}, Lcom/google/googlenav/intersectionexplorer/c;->a(Lcom/google/googlenav/intersectionexplorer/c;Ln/ac;)V

    .line 107
    invoke-virtual {p0, v0, v3}, Lcom/google/googlenav/intersectionexplorer/c;->a(Lcom/google/googlenav/intersectionexplorer/c;Ln/ac;)V
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_2b

    goto :goto_11

    .line 99
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 110
    :cond_2e
    const/4 v0, 0x1

    :try_start_2f
    invoke-virtual {p1, v0}, Lcom/google/googlenav/intersectionexplorer/c;->a(Z)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_2b

    move v0, v1

    .line 111
    goto :goto_7
.end method

.method public declared-synchronized c(Lcom/google/googlenav/intersectionexplorer/c;)Ljava/lang/String;
    .registers 14
    .parameter

    .prologue
    const-wide v10, 0x400921fb54442d18L

    const/4 v9, 0x1

    .line 192
    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 194
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/c;->toString()Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_6e

    move-result-object v0

    .line 286
    :goto_13
    monitor-exit p0

    return-object v0

    .line 197
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/ac;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/c;->a(Ln/ac;)Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {p0, p1}, Lcom/google/googlenav/intersectionexplorer/c;->d(Lcom/google/googlenav/intersectionexplorer/c;)D

    move-result-wide v4

    .line 201
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v6

    .line 203
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/c;

    .line 204
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/ac;

    invoke-static {v1}, Lcom/google/googlenav/intersectionexplorer/c;->a(Ln/ac;)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_58

    .line 208
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v7

    .line 209
    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_58
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/intersectionexplorer/c;->d(Lcom/google/googlenav/intersectionexplorer/c;)D

    move-result-wide v7

    invoke-static {v7, v8, v4, v5}, Lcom/google/googlenav/intersectionexplorer/c;->b(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_15 .. :try_end_6d} :catchall_6e

    goto :goto_33

    .line 192
    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 216
    :cond_71
    :try_start_71
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 217
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 218
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_1dc

    .line 286
    :cond_86
    :goto_86
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 220
    :pswitch_8b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_1e4

    goto :goto_86

    .line 222
    :pswitch_93
    const/16 v0, 0x1f6

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 225
    :pswitch_a5
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 226
    const-wide/16 v4, 0x0

    cmpl-double v4, v1, v4

    if-nez v4, :cond_1d9

    .line 227
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 229
    :goto_c1
    cmpg-double v0, v0, v10

    if-gez v0, :cond_d7

    .line 230
    const/16 v0, 0x205

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 233
    :cond_d7
    const/16 v0, 0x206

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 237
    :pswitch_e9
    const/16 v0, 0x1f9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 241
    :pswitch_fb
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d6

    .line 243
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    .line 246
    :goto_110
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 248
    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/c;->b(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_176

    .line 249
    invoke-static {v1}, Lcom/google/googlenav/intersectionexplorer/c;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 251
    const/16 v0, 0x1f4

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 253
    :cond_137
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_86

    .line 254
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpg-double v0, v0, v10

    if-gez v0, :cond_161

    .line 256
    const/16 v0, 0x201

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 260
    :cond_161
    const/16 v0, 0x202

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 264
    :cond_176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v9, :cond_86

    .line 265
    invoke-static {v1}, Lcom/google/googlenav/intersectionexplorer/c;->b(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_197

    .line 267
    const/16 v0, 0x200

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 269
    :cond_197
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v9, :cond_86

    .line 270
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 271
    cmpg-double v0, v0, v10

    if-gez v0, :cond_1c1

    .line 273
    const/16 v0, 0x201

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 277
    :cond_1c1
    const/16 v0, 0x202

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d3
    .catchall {:try_start_71 .. :try_end_1d3} :catchall_6e

    move-result-object v0

    goto/16 :goto_13

    :cond_1d6
    move-object v2, v1

    goto/16 :goto_110

    :cond_1d9
    move-wide v0, v1

    goto/16 :goto_c1

    .line 218
    :pswitch_data_1dc
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_fb
    .end packed-switch

    .line 220
    :pswitch_data_1e4
    .packed-switch 0x1
        :pswitch_93
        :pswitch_a5
        :pswitch_e9
    .end packed-switch
.end method

.method public declared-synchronized c()Ljava/util/List;
    .registers 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 32
    check-cast p1, Lcom/google/googlenav/intersectionexplorer/c;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/intersectionexplorer/c;->a(Lcom/google/googlenav/intersectionexplorer/c;)I

    move-result v0

    return v0
.end method

.method public d(Lcom/google/googlenav/intersectionexplorer/c;)D
    .registers 4
    .parameter

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v1

    invoke-static {v0, v1}, Ln/S;->b(Ln/Q;Ln/Q;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized d()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 308
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_73

    .line 309
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/dm;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 312
    const/4 v1, 0x0

    .line 314
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/ac;

    .line 315
    invoke-virtual {v0}, Ln/ac;->c()I

    move-result v4

    if-lez v4, :cond_35

    .line 316
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ln/ac;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_31
    if-nez v1, :cond_3c

    :goto_33
    move-object v1, v0

    .line 323
    goto :goto_1a

    .line 318
    :cond_35
    const/16 v0, 0x207

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 322
    :cond_3c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_6b

    move-result v0

    if-nez v0, :cond_75

    move v0, v2

    .line 334
    :goto_43
    monitor-exit p0

    return v0

    .line 328
    :cond_45
    :try_start_45
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 329
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/c;

    .line 330
    invoke-virtual {p0, v0}, Lcom/google/googlenav/intersectionexplorer/c;->d(Lcom/google/googlenav/intersectionexplorer/c;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catchall {:try_start_45 .. :try_end_6a} :catchall_6b

    goto :goto_53

    .line 308
    :catchall_6b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 332
    :cond_6e
    :try_start_6e
    invoke-static {v1}, Lcom/google/googlenav/intersectionexplorer/c;->b(Ljava/util/List;)Z
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_6b

    move-result v0

    goto :goto_43

    :cond_73
    move v0, v2

    .line 334
    goto :goto_43

    :cond_75
    move-object v0, v1

    goto :goto_33
.end method

.method public declared-synchronized e()Ljava/util/Set;
    .registers 5

    .prologue
    .line 373
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 374
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/c;

    .line 375
    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->a()Z

    move-result v3

    if-nez v3, :cond_f

    .line 376
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_25

    goto :goto_f

    .line 373
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    .line 379
    :cond_28
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized e(Lcom/google/googlenav/intersectionexplorer/c;)V
    .registers 3
    .parameter

    .prologue
    .line 365
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 366
    monitor-exit p0

    return-void

    .line 365
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Lcom/google/googlenav/intersectionexplorer/c;)Ln/ac;
    .registers 3
    .parameter

    .prologue
    .line 386
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/ac;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 428
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_77

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    .line 456
    :cond_b
    :goto_b
    monitor-exit p0

    return v0

    .line 433
    :cond_d
    const-wide/high16 v0, 0x4024

    :try_start_f
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v3

    invoke-virtual {v3}, Ln/Q;->e()D

    move-result-wide v3

    mul-double/2addr v3, v0

    .line 436
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 437
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, p0

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/c;

    .line 438
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v8

    invoke-virtual {v7, v8}, Ln/Q;->c(Ln/Q;)F

    move-result v7

    float-to-double v7, v7

    .line 439
    cmpg-double v7, v7, v3

    if-gez v7, :cond_7a

    .line 440
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v1}, Lcom/google/googlenav/intersectionexplorer/c;->g()I

    move-result v7

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->g()I

    move-result v8

    if-ge v7, v8, :cond_53

    :goto_51
    move-object v1, v0

    .line 444
    goto :goto_27

    :cond_53
    move-object v0, v1

    .line 441
    goto :goto_51

    .line 447
    :cond_55
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v2

    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/c;

    .line 448
    invoke-virtual {v1, v0}, Lcom/google/googlenav/intersectionexplorer/c;->b(Lcom/google/googlenav/intersectionexplorer/c;)Z

    .line 449
    invoke-virtual {v1, v0}, Lcom/google/googlenav/intersectionexplorer/c;->e(Lcom/google/googlenav/intersectionexplorer/c;)V

    .line 450
    const/4 v0, 0x1

    goto :goto_5a

    .line 452
    :cond_6e
    if-eq v1, p0, :cond_b

    .line 453
    invoke-virtual {v1, p0}, Lcom/google/googlenav/intersectionexplorer/c;->b(Lcom/google/googlenav/intersectionexplorer/c;)Z

    .line 454
    invoke-virtual {v1, p0}, Lcom/google/googlenav/intersectionexplorer/c;->e(Lcom/google/googlenav/intersectionexplorer/c;)V
    :try_end_76
    .catchall {:try_start_f .. :try_end_76} :catchall_77

    goto :goto_b

    .line 428
    :catchall_77
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7a
    move-object v0, v1

    goto :goto_51
.end method

.method declared-synchronized g()I
    .registers 4

    .prologue
    .line 464
    monitor-enter p0

    const/4 v1, 0x0

    .line 465
    :try_start_2
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/ac;

    .line 466
    invoke-virtual {v0}, Ln/ac;->c()I
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_22

    move-result v0

    if-lez v0, :cond_25

    .line 467
    add-int/lit8 v0, v1, 0x1

    :goto_1e
    move v1, v0

    goto :goto_a

    .line 470
    :cond_20
    monitor-exit p0

    return v1

    .line 464
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_25
    move v0, v1

    goto :goto_1e
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/c;->a(Ljava/util/List;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
