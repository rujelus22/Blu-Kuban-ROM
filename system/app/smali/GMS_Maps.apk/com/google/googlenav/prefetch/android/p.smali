.class public Lcom/google/googlenav/prefetch/android/p;
.super Ljava/lang/Object;

# interfaces
.implements LaR/i;


# instance fields
.field private a:I

.field private b:Z

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/googlenav/prefetch/android/p;->a:I

    iput-boolean v0, p0, Lcom/google/googlenav/prefetch/android/p;->b:Z

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/p;->d:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/prefetch/android/p;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/p;->d:Ljava/util/Map;

    return-object v0
.end method

.method public static a(LaJ/B;)Lt/af;
    .registers 3

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v0

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v1

    invoke-static {v0, v1}, Lt/L;->b(II)Lt/L;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1, v0}, Lt/af;->a(ILt/L;)Lt/af;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/google/googlenav/prefetch/android/p;
    .registers 1

    sget-object v0, Lcom/google/googlenav/prefetch/android/v;->a:Lcom/google/googlenav/prefetch/android/p;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .registers 10

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/n;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/prefetch/android/n;->d(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_33

    add-int/lit8 v0, v1, 0x1

    :goto_2c
    move v1, v0

    goto :goto_e

    :cond_2e
    monitor-exit v2

    return v1

    :catchall_30
    move-exception v0

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v0

    :cond_33
    move v0, v1

    goto :goto_2c
.end method

.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/googlenav/prefetch/android/p;->b:Z

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/p;->g()V

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/p;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/prefetch/android/p;->b:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(LaJ/B;ILjava/lang/String;)V
    .registers 7

    monitor-enter p0

    if-nez p1, :cond_5

    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    invoke-static {p1}, Lcom/google/googlenav/prefetch/android/p;->a(LaJ/B;)Lt/af;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/n;

    if-nez v0, :cond_18

    new-instance v0, Lcom/google/googlenav/prefetch/android/n;

    invoke-direct {v0, v1}, Lcom/google/googlenav/prefetch/android/n;-><init>(Lt/af;)V

    :cond_18
    if-eqz p3, :cond_1d

    invoke-virtual {v0, p3}, Lcom/google/googlenav/prefetch/android/n;->a(Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {v0, p2}, Lcom/google/googlenav/prefetch/android/n;->b(I)V

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/googlenav/prefetch/android/p;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/p;->a:I

    iget v0, p0, Lcom/google/googlenav/prefetch/android/p;->a:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_3

    new-instance v0, Lap/b;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/prefetch/android/r;

    invoke-direct {v2, p0}, Lcom/google/googlenav/prefetch/android/r;-><init>(Lcom/google/googlenav/prefetch/android/p;)V

    invoke-direct {v0, v1, v2}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lap/b;->g()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/prefetch/android/p;->a:I
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_46

    goto :goto_3

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/googlenav/prefetch/android/n;I)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/google/googlenav/prefetch/android/n;->c(I)V

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/p;->f()V

    return-void
.end method

.method public a(Lcom/google/googlenav/prefetch/android/t;)V
    .registers 4

    invoke-static {}, Lar/r;->b()V

    new-instance v0, Lcom/google/googlenav/prefetch/android/s;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/googlenav/prefetch/android/s;-><init>(Lcom/google/googlenav/prefetch/android/p;Lap/c;Lcom/google/googlenav/prefetch/android/t;)V

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/s;->g()V

    return-void
.end method

.method public a(LaJ/B;I)Z
    .registers 7

    invoke-virtual {p1}, LaJ/B;->c()I

    move-result v0

    invoke-virtual {p1}, LaJ/B;->e()I

    move-result v1

    invoke-static {v0, v1}, Lt/L;->b(II)Lt/L;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1, v0}, Lt/af;->a(ILt/L;)Lt/af;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/n;

    if-eqz v0, :cond_28

    invoke-virtual {v0, p2}, Lcom/google/googlenav/prefetch/android/n;->d(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public b()V
    .registers 9

    :try_start_0
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/p;->f()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Lam/b;

    sget-object v0, LbD/Z;->I:Lam/e;

    invoke-direct {v4, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    monitor-enter v5
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_41

    :try_start_1f
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/n;

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/n;->f()Lam/b;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Lam/b;->a(ILam/b;)V

    goto :goto_29

    :catchall_3e
    move-exception v0

    monitor-exit v5
    :try_end_40
    .catchall {:try_start_1f .. :try_end_40} :catchall_3e

    :try_start_40
    throw v0
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_41} :catch_41

    :catch_41
    move-exception v0

    const-string v1, "TileHistoryTracker - error writing tile history"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_47
    return-void

    :cond_48
    :try_start_48
    monitor-exit v5
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_3e

    :try_start_49
    invoke-static {v3, v4}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "TILE_HISTORY"

    invoke-interface {v1, v0, v2}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_55} :catch_41

    goto :goto_47
.end method

.method public b(I)V
    .registers 6

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/n;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/prefetch/android/n;->c(I)V

    goto :goto_d

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/p;->f()V

    return-void
.end method

.method public c(I)Ljava/util/List;
    .registers 10

    new-instance v1, Ljava/util/TreeMap;

    new-instance v0, Lcom/google/googlenav/prefetch/android/q;

    invoke-direct {v0, p0}, Lcom/google/googlenav/prefetch/android/q;-><init>(Lcom/google/googlenav/prefetch/android/p;)V

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    monitor-enter v2

    :try_start_d
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    iget-object v4, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/n;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/prefetch/android/n;->d(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_17

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :catchall_3d
    move-exception v0

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_d .. :try_end_3f} :catchall_3d

    throw v0

    :cond_40
    :try_start_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3d

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/n;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    :cond_5d
    return-object v2
.end method

.method public declared-synchronized c()Ljava/util/Vector;
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/p;->f()V

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/googlenav/prefetch/android/n;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/prefetch/android/n;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    array-length v3, v0

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v3, :cond_34

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/google/googlenav/prefetch/android/n;->a()Lt/af;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_36

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_34
    monitor-exit p0

    return-object v2

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/p;->b(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/p;->b(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/p;->b(I)V

    return-void
.end method

.method protected f()V
    .registers 5

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/n;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/n;->d()V

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/n;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    return-void
.end method

.method protected declared-synchronized g()V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_65

    move-result-object v1

    :try_start_e
    const-string v0, "TILE_HISTORY"

    invoke-interface {v1, v0}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_19

    array-length v2, v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_65
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_48

    if-nez v2, :cond_1b

    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    :cond_1b
    :try_start_1b
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v2, LbD/Z;->I:Lam/e;

    invoke-static {v2, v0}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lam/b;->l(I)I

    move-result v3

    const/4 v0, 0x0

    :goto_31
    if-ge v0, v3, :cond_5e

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/prefetch/android/n;->a(Lam/b;)Lcom/google/googlenav/prefetch/android/n;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/googlenav/prefetch/android/n;->a()Lt/af;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_1b .. :try_end_45} :catchall_65
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_45} :catch_48

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :catch_48
    move-exception v0

    :try_start_49
    invoke-static {}, Laf/d;->a()Z

    move-result v2

    if-eqz v2, :cond_54

    const-string v2, "TileHistoryTracker - error reading tile history"

    invoke-static {v2, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_54
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "TILE_HISTORY"

    invoke-interface {v1, v0}, Lak/m;->b(Ljava/lang/String;)Z

    :cond_5e
    invoke-static {}, Laf/d;->a()Z
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_65

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_19

    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const/16 v7, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tile History"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/p;->c()Ljava/util/Vector;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    :goto_12
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_79

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "coords: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "score: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/prefetch/android/n;

    invoke-virtual {v1}, Lcom/google/googlenav/prefetch/android/n;->e()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/p;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/prefetch/android/u;

    if-eqz v1, :cond_5f

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/googlenav/prefetch/android/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/p;->c:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/n;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/n;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    :cond_79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
