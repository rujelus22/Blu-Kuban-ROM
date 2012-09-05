.class public Lcom/google/googlenav/prefetch/android/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lt/af;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lt/af;)V
    .registers 4

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/prefetch/android/n;-><init>(Lt/af;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lt/af;Ljava/util/Map;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/n;->a:Lt/af;

    iput-object p2, p0, Lcom/google/googlenav/prefetch/android/n;->c:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/googlenav/prefetch/android/n;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lam/b;)Lcom/google/googlenav/prefetch/android/n;
    .registers 16

    const/4 v14, 0x3

    const/4 v1, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x2

    invoke-virtual {p0, v13}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    new-instance v3, Lt/af;

    invoke-virtual {v0, v14}, Lam/b;->d(I)I

    move-result v2

    invoke-virtual {v0, v13}, Lam/b;->d(I)I

    move-result v4

    invoke-virtual {v0, v12}, Lam/b;->d(I)I

    move-result v0

    invoke-direct {v3, v2, v4, v0}, Lt/af;-><init>(III)V

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p0, v12}, Lam/b;->l(I)I

    move-result v5

    move v2, v1

    :goto_22
    if-ge v2, v5, :cond_51

    invoke-virtual {p0, v12, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v6

    invoke-virtual {v6, v13}, Lam/b;->d(I)I

    move-result v7

    invoke-virtual {v6, v12}, Lam/b;->l(I)I

    move-result v8

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    move v0, v1

    :goto_36
    if-ge v0, v8, :cond_46

    invoke-virtual {v6, v12, v0}, Lam/b;->d(II)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_22

    :cond_51
    invoke-virtual {p0, v14}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/prefetch/android/n;

    invoke-direct {v1, v3, v4, v0}, Lcom/google/googlenav/prefetch/android/n;-><init>(Lt/af;Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method

.method private static a(J)Z
    .registers 8

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    sub-long v2, v0, p0

    const-wide v4, 0x9fa52400L

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1b

    cmp-long v0, p0, v0

    if-lez v0, :cond_1d

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private static e(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    const-string v0, "Unknown Usage"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "My Location"

    goto :goto_5

    :pswitch_9
    const-string v0, "Offline Maps (lab)"

    goto :goto_5

    :pswitch_c
    const-string v0, "Search"

    goto :goto_5

    :pswitch_f
    const-string v0, "Directions Endpoint"

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized a(I)Ljava/util/LinkedList;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/n;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Lt/af;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/n;->a:Lt/af;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/n;->b:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized b(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/googlenav/prefetch/android/n;->a(I)Ljava/util/LinkedList;

    move-result-object v0

    if-nez v0, :cond_2a

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/n;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_15
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_36

    monitor-exit p0

    return-void

    :cond_2a
    :try_start_2a
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_15

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_36

    goto :goto_15

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/n;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized c(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/n;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_b

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_24
    monitor-exit p0

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/google/googlenav/prefetch/android/n;

    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/n;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/googlenav/prefetch/android/n;->e()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    if-le v0, v1, :cond_12

    const/4 v0, -0x1

    goto :goto_d

    :cond_12
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public declared-synchronized d(I)J
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/n;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_28

    move-result v0

    if-nez v0, :cond_11

    const-wide/16 v0, -0x1

    :goto_f
    monitor-exit p0

    return-wide v0

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/n;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_28

    move-result-wide v0

    goto :goto_f

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/n;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/googlenav/prefetch/android/n;->a(J)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_48

    goto :goto_2e

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4b
    :try_start_4b
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_48

    goto :goto_b

    :cond_55
    monitor-exit p0

    return-void
.end method

.method protected e()I
    .registers 12

    const/4 v0, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/n;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/googlenav/prefetch/android/n;->a(I)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_30
    :goto_30
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v2, v7

    const-wide/32 v9, 0x5265c00

    div-long/2addr v7, v9

    long-to-int v0, v7

    const/4 v7, 0x1

    if-ne v5, v7, :cond_4f

    const v1, 0x7fffffff

    sub-int/2addr v1, v0

    :cond_4e
    return v1

    :cond_4f
    rsub-int/lit8 v0, v0, 0x1f

    int-to-double v7, v0

    const-wide/high16 v9, 0x3ff0

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x403f

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4024

    mul-double/2addr v7, v9

    double-to-int v0, v7

    const/4 v7, 0x2

    if-eq v5, v7, :cond_62

    const/4 v7, 0x3

    if-ne v5, v7, :cond_65

    :cond_62
    mul-int/2addr v0, v0

    add-int/2addr v1, v0

    goto :goto_30

    :cond_65
    if-nez v5, :cond_30

    mul-int/2addr v0, v0

    add-int/2addr v1, v0

    goto :goto_30
.end method

.method public declared-synchronized f()Lam/b;
    .registers 9

    monitor-enter p0

    :try_start_1
    new-instance v1, Lam/b;

    sget-object v0, LbD/Z;->J:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    new-instance v0, Lam/b;

    sget-object v2, LbD/Z;->H:Lam/e;

    invoke-direct {v0, v2}, Lam/b;-><init>(Lam/e;)V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/n;->a:Lt/af;

    invoke-virtual {v3}, Lt/af;->c()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lam/b;->a(II)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/n;->a:Lt/af;

    invoke-virtual {v3}, Lt/af;->d()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lam/b;->a(II)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlenav/prefetch/android/n;->a:Lt/af;

    invoke-virtual {v3}, Lt/af;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lam/b;->a(II)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lam/b;->a(ILam/b;)V

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/n;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/n;->a(I)Ljava/util/LinkedList;

    move-result-object v3

    new-instance v4, Lam/b;

    sget-object v5, LbD/Z;->K:Lam/e;

    invoke-direct {v4, v5}, Lam/b;-><init>(Lam/e;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Lam/b;->a(II)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :goto_5f
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    const/4 v5, 0x2

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lam/b;->a(IJ)V
    :try_end_73
    .catchall {:try_start_1 .. :try_end_73} :catchall_74

    goto :goto_5f

    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_77
    const/4 v0, 0x2

    :try_start_78
    invoke-virtual {v1, v0, v4}, Lam/b;->a(ILam/b;)V

    goto :goto_3b

    :cond_7c
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lam/b;->a(ILjava/lang/String;)V
    :try_end_82
    .catchall {:try_start_78 .. :try_end_82} :catchall_74

    monitor-exit p0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    const/16 v10, 0xa

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/n;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/google/googlenav/prefetch/android/n;->e(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/n;->a(I)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    minutes ago: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v6, v1, v6

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    :cond_7f
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_83
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/n;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
