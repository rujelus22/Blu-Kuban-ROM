.class public Lr/l;
.super Ljava/lang/Object;

# interfaces
.implements Lx/R;


# static fields
.field private static b:Lr/l;

.field private static final p:Lt/y;


# instance fields
.field private a:Ljava/util/Map;

.field private final c:Lz/g;

.field private final d:Lz/g;

.field private e:Lt/r;

.field private f:Lt/y;

.field private g:Lt/q;

.field private final h:Ljava/util/Set;

.field private final i:Ljava/util/List;

.field private final j:Ljava/util/Set;

.field private final k:Ljava/lang/Object;

.field private final l:Lx/T;

.field private final m:Ljava/util/Map;

.field private final n:Ljava/util/Map;

.field private final o:Lr/b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lt/y;

    new-instance v1, Lt/r;

    sget-object v2, Lt/m;->a:Lt/m;

    invoke-direct {v1, v2}, Lt/r;-><init>(Lt/m;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lt/y;-><init>(Lt/r;I)V

    sput-object v0, Lr/l;->p:Lt/y;

    return-void
.end method

.method constructor <init>(Lx/T;)V
    .registers 4

    const/16 v1, 0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lr/l;->a:Ljava/util/Map;

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lr/l;->h:Ljava/util/Set;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lr/l;->i:Ljava/util/List;

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lr/l;->j:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr/l;->k:Ljava/lang/Object;

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lr/l;->m:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lr/l;->n:Ljava/util/Map;

    new-instance v0, Lz/g;

    invoke-direct {v0, v1}, Lz/g;-><init>(I)V

    iput-object v0, p0, Lr/l;->c:Lz/g;

    new-instance v0, Lz/g;

    invoke-direct {v0, v1}, Lz/g;-><init>(I)V

    iput-object v0, p0, Lr/l;->d:Lz/g;

    iput-object p1, p0, Lr/l;->l:Lx/T;

    new-instance v0, Lr/o;

    invoke-direct {v0}, Lr/o;-><init>()V

    iput-object v0, p0, Lr/l;->o:Lr/b;

    return-void
.end method

.method public static a()Lr/l;
    .registers 1

    sget-object v0, Lr/l;->b:Lr/l;

    return-object v0
.end method

.method public static a(Lx/T;)Lr/l;
    .registers 2

    sget-object v0, Lr/l;->b:Lr/l;

    if-nez v0, :cond_b

    new-instance v0, Lr/l;

    invoke-direct {v0, p0}, Lr/l;-><init>(Lx/T;)V

    sput-object v0, Lr/l;->b:Lr/l;

    :cond_b
    sget-object v0, Lr/l;->b:Lr/l;

    return-object v0
.end method

.method static synthetic a(Lr/l;Lt/q;)V
    .registers 2

    invoke-direct {p0, p1}, Lr/l;->d(Lt/q;)V

    return-void
.end method

.method private a(Lt/q;Lt/y;)V
    .registers 8

    invoke-virtual {p1, p2}, Lt/q;->a(Lt/y;)Lt/u;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lt/u;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/r;

    invoke-virtual {v1}, Lt/u;->a()Lt/y;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lr/l;->a(Lt/r;Lt/y;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lr/l;->l:Lx/T;

    new-instance v4, Lr/m;

    invoke-direct {v4, p0}, Lr/m;-><init>(Lr/l;)V

    invoke-virtual {v3, v0, v4}, Lx/T;->a(Lt/r;Lx/R;)V

    goto :goto_e

    :cond_2f
    return-void
.end method

.method private a(Lt/r;Lt/y;Lt/y;)V
    .registers 10

    iget-object v2, p0, Lr/l;->c:Lz/g;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lr/l;->d:Lz/g;

    invoke-virtual {v0, p1, p3}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lr/l;->l:Lx/T;

    invoke-virtual {p3}, Lt/y;->a()Lt/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/T;->b(Lt/r;)Lt/u;

    move-result-object v3

    if-nez v3, :cond_16

    monitor-exit v2

    :goto_15
    return-void

    :cond_16
    sget-object v0, Lr/l;->p:Lt/y;

    if-ne p2, v0, :cond_55

    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    move-object v1, v0

    :goto_1f
    invoke-virtual {v3}, Lt/u;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/r;

    invoke-virtual {v0, p1}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    iget-object v4, p0, Lr/l;->d:Lz/g;

    iget-object v5, p0, Lr/l;->c:Lz/g;

    invoke-virtual {v5, v0}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, p0, Lr/l;->c:Lz/g;

    sget-object v5, Lr/l;->p:Lt/y;

    invoke-virtual {v4, v0, v5}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_27

    :catchall_52
    move-exception v0

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v0

    :cond_55
    :try_start_55
    iget-object v0, p0, Lr/l;->l:Lx/T;

    invoke-virtual {p2}, Lt/y;->a()Lt/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/T;->b(Lt/r;)Lt/u;

    move-result-object v0

    if-nez v0, :cond_63

    monitor-exit v2

    goto :goto_15

    :cond_63
    invoke-virtual {v0}, Lt/u;->c()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1f

    :cond_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_55 .. :try_end_6a} :catchall_52

    goto :goto_15
.end method

.method private c(Lt/q;)Lt/y;
    .registers 7

    const/4 v1, 0x0

    iget-object v2, p0, Lr/l;->c:Lz/g;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lr/l;->c:Lz/g;

    invoke-virtual {p1}, Lt/q;->a()Lt/r;

    move-result-object v3

    invoke-virtual {v0, v3}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/y;

    if-nez v0, :cond_28

    invoke-virtual {p1}, Lt/q;->c()Lt/u;

    move-result-object v0

    if-nez v0, :cond_2f

    sget-object v0, Lr/l;->p:Lt/y;

    :goto_1a
    iget-object v3, p0, Lr/l;->c:Lz/g;

    invoke-virtual {p1}, Lt/q;->a()Lt/r;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, Lr/l;->p:Lt/y;

    if-eq v0, v3, :cond_28

    const/4 v1, 0x1

    :cond_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_34

    if-eqz v1, :cond_2e

    invoke-direct {p0, p1}, Lr/l;->d(Lt/q;)V

    :cond_2e
    return-object v0

    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Lt/u;->a()Lt/y;

    move-result-object v0

    goto :goto_1a

    :catchall_34
    move-exception v0

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_34

    throw v0
.end method

.method private d(Lt/q;)V
    .registers 5

    invoke-direct {p0}, Lr/l;->l()V

    iget-object v1, p0, Lr/l;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lr/l;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/n;

    invoke-interface {v0, p0, p1}, Lr/n;->a(Lr/l;Lt/q;)V

    goto :goto_10

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    return-void
.end method

.method private j()V
    .registers 4

    iget-object v1, p0, Lr/l;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lr/l;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/n;

    invoke-interface {v0, p0}, Lr/n;->a(Lr/l;)V

    goto :goto_d

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0

    :cond_20
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    return-void
.end method

.method private k()V
    .registers 4

    invoke-direct {p0}, Lr/l;->l()V

    iget-object v1, p0, Lr/l;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lr/l;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/n;

    invoke-interface {v0, p0}, Lr/n;->b(Lr/l;)V

    goto :goto_10

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    return-void
.end method

.method private l()V
    .registers 7

    iget-object v2, p0, Lr/l;->n:Ljava/util/Map;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lr/l;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lr/l;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lr/l;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/u;

    iget-object v1, p0, Lr/l;->m:Ljava/util/Map;

    invoke-virtual {v0}, Lt/u;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/e;

    if-nez v1, :cond_52

    new-instance v1, Lr/e;

    invoke-direct {v1, v0}, Lr/e;-><init>(Lt/u;)V

    iget-object v4, p0, Lr/l;->m:Ljava/util/Map;

    invoke-virtual {v0}, Lt/u;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_45
    iget-object v4, p0, Lr/l;->n:Ljava/util/Map;

    invoke-virtual {v0}, Lt/u;->b()Lt/r;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :catchall_4f
    move-exception v0

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v0

    :cond_52
    :try_start_52
    invoke-virtual {v1, v0}, Lr/e;->a(Lt/u;)Z

    goto :goto_45

    :cond_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_4f

    return-void
.end method


# virtual methods
.method public a(Lt/r;ZZZ)Lr/e;
    .registers 11

    const/4 v1, 0x0

    iget-object v3, p0, Lr/l;->n:Ljava/util/Map;

    monitor-enter v3

    :try_start_4
    iget-object v0, p0, Lr/l;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/e;

    if-nez v0, :cond_13

    if-nez p2, :cond_13

    monitor-exit v3

    move-object v0, v1

    :goto_12
    return-object v0

    :cond_13
    if-eqz p3, :cond_74

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Lr/e;->g()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_74

    move-object v2, v0

    move-object v0, v1

    :goto_24
    if-eqz v0, :cond_2b

    monitor-exit v3

    goto :goto_12

    :catchall_28
    move-exception v0

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lr/l;->l:Lx/T;

    invoke-virtual {v0, p1}, Lx/T;->a(Lt/r;)Lt/q;

    move-result-object v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lr/l;->l:Lx/T;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lx/T;->a(Lt/r;Lx/R;)V

    monitor-exit v3

    move-object v0, v1

    goto :goto_12

    :cond_3c
    invoke-virtual {v0, p1}, Lt/q;->a(Lt/r;)Lt/u;

    move-result-object v0

    if-nez v0, :cond_45

    monitor-exit v3

    move-object v0, v1

    goto :goto_12

    :cond_45
    new-instance v1, Lr/e;

    invoke-direct {v1, v0}, Lr/e;-><init>(Lt/u;)V

    if-eqz p4, :cond_71

    iget-object v0, p0, Lr/l;->n:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_71

    invoke-virtual {v2, p1}, Lr/e;->a(Lt/r;)Lr/e;

    move-result-object v2

    invoke-virtual {v2}, Lr/e;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/r;

    iget-object v5, p0, Lr/l;->n:Ljava/util/Map;

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_71
    monitor-exit v3
    :try_end_72
    .catchall {:try_start_2b .. :try_end_72} :catchall_28

    move-object v0, v1

    goto :goto_12

    :cond_74
    move-object v2, v1

    goto :goto_24
.end method

.method public a(Lt/r;)Lt/y;
    .registers 4

    iget-object v1, p0, Lr/l;->c:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lr/l;->c:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/y;

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_20

    if-nez v0, :cond_1a

    iget-object v1, p0, Lr/l;->l:Lx/T;

    invoke-virtual {v1, p1}, Lx/T;->a(Lt/r;)Lt/q;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-direct {p0, v1}, Lr/l;->c(Lt/q;)Lt/y;

    move-result-object v0

    :cond_1a
    :goto_1a
    sget-object v1, Lr/l;->p:Lt/y;

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x0

    :cond_1f
    return-object v0

    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    iget-object v1, p0, Lr/l;->l:Lx/T;

    invoke-virtual {v1, p1, p0}, Lx/T;->a(Lt/r;Lx/R;)V

    goto :goto_1a
.end method

.method public a(Ljava/util/Set;)V
    .registers 7

    iget-object v1, p0, Lr/l;->k:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_9

    :try_start_5
    invoke-static {}, LK/bu;->f()LK/bu;

    move-result-object p1

    :cond_9
    iget-object v0, p0, Lr/l;->j:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    monitor-exit v1

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lr/l;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lr/l;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lr/l;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lr/l;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lr/l;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lr/l;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/r;

    iget-object v3, p0, Lr/l;->l:Lx/T;

    invoke-virtual {v3, v0}, Lx/T;->a(Lt/r;)Lt/q;

    move-result-object v3

    if-eqz v3, :cond_54

    iget-object v4, p0, Lr/l;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lr/l;->h:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_32

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_51

    throw v0

    :cond_54
    :try_start_54
    iget-object v3, p0, Lr/l;->l:Lx/T;

    invoke-virtual {v3, v0, p0}, Lx/T;->a(Lt/r;Lx/R;)V

    goto :goto_32

    :cond_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_51

    invoke-direct {p0}, Lr/l;->k()V

    goto :goto_12
.end method

.method public a(Lr/n;)V
    .registers 4

    iget-object v0, p0, Lr/l;->a:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lt/q;)V
    .registers 4

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lt/q;->a()Lt/r;

    move-result-object v0

    sget-object v1, Lr/l;->p:Lt/y;

    invoke-virtual {p0, v0, v1}, Lr/l;->a(Lt/r;Lt/y;)Z

    invoke-direct {p0, p1}, Lr/l;->d(Lt/q;)V

    :cond_e
    return-void
.end method

.method public a(Lt/r;ILt/q;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    if-nez p2, :cond_6

    iget-object v3, p0, Lr/l;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_c
    iget-object v4, p0, Lr/l;->f:Lt/y;

    if-eqz v4, :cond_21

    iget-object v4, p0, Lr/l;->f:Lt/y;

    invoke-virtual {v4}, Lt/y;->a()Lt/r;

    move-result-object v4

    invoke-virtual {v4, p1}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v2, p0, Lr/l;->f:Lt/y;

    const/4 v4, 0x0

    iput-object v4, p0, Lr/l;->f:Lt/y;

    :cond_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_80

    if-eqz v2, :cond_27

    invoke-direct {p0, p3, v2}, Lr/l;->a(Lt/q;Lt/y;)V

    :cond_27
    invoke-direct {p0, p3}, Lr/l;->c(Lt/q;)Lt/y;

    iget-object v3, p0, Lr/l;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2d
    iget-object v2, p0, Lr/l;->e:Lt/r;

    invoke-virtual {p1, v2}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    iget-object v2, p0, Lr/l;->g:Lt/q;

    if-eqz v2, :cond_49

    invoke-virtual {p3}, Lt/q;->a()Lt/r;

    move-result-object v2

    iget-object v4, p0, Lr/l;->g:Lt/q;

    invoke-virtual {v4}, Lt/q;->a()Lt/r;

    move-result-object v4

    invoke-virtual {v2, v4}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    :cond_49
    invoke-virtual {p3}, Lt/q;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lr/l;->g:Lt/q;

    if-eqz v2, :cond_8f

    const/4 v2, 0x0

    iput-object v2, p0, Lr/l;->g:Lt/q;

    move v2, v0

    :goto_5b
    const/4 v4, 0x0

    iput-object v4, p0, Lr/l;->e:Lt/r;

    :goto_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_2d .. :try_end_5f} :catchall_87

    if-eqz v2, :cond_64

    invoke-direct {p0}, Lr/l;->j()V

    :cond_64
    iget-object v2, p0, Lr/l;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_67
    iget-object v3, p0, Lr/l;->h:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    iget-object v1, p0, Lr/l;->h:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lr/l;->i:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_67 .. :try_end_7a} :catchall_8a

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lr/l;->k()V

    goto :goto_6

    :catchall_80
    move-exception v0

    :try_start_81
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v0

    :cond_83
    :try_start_83
    iput-object p3, p0, Lr/l;->g:Lt/q;

    move v2, v0

    goto :goto_5b

    :catchall_87
    move-exception v0

    monitor-exit v3
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_87

    throw v0

    :catchall_8a
    move-exception v0

    :try_start_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v0

    :cond_8d
    move v0, v1

    goto :goto_79

    :cond_8f
    move v2, v1

    goto :goto_5b

    :cond_91
    move v2, v1

    goto :goto_5e
.end method

.method public a(Lt/y;)V
    .registers 4

    iget-object v1, p0, Lr/l;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lr/l;->f:Lt/y;

    invoke-virtual {p1, v0}, Lt/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lr/l;->c:Lz/g;

    invoke-virtual {v0}, Lz/g;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    monitor-exit v1

    :goto_18
    return-void

    :cond_19
    iput-object p1, p0, Lr/l;->f:Lt/y;

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_26

    iget-object v0, p0, Lr/l;->l:Lx/T;

    invoke-virtual {p1}, Lt/y;->a()Lt/r;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lx/T;->a(Lt/r;Lx/R;)V

    goto :goto_18

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method a(Lt/r;Lt/y;)Z
    .registers 6

    iget-object v1, p0, Lr/l;->c:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lr/l;->c:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/y;

    invoke-virtual {p2, v0}, Lt/y;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v0, 0x0

    monitor-exit v1

    :goto_13
    return v0

    :cond_14
    iget-object v2, p0, Lr/l;->c:Lz/g;

    invoke-virtual {v2, p1, p2}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_1e

    invoke-direct {p0, p1, p2, v0}, Lr/l;->a(Lt/r;Lt/y;Lt/y;)V

    :cond_1e
    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_13

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public b()Lt/q;
    .registers 3

    iget-object v1, p0, Lr/l;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lr/l;->g:Lt/q;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public b(Lt/q;)Lt/u;
    .registers 3

    invoke-virtual {p1}, Lt/q;->a()Lt/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr/l;->a(Lt/r;)Lt/y;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, v0}, Lt/q;->a(Lt/y;)Lt/u;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public b(Lt/r;)Lt/y;
    .registers 5

    iget-object v1, p0, Lr/l;->c:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lr/l;->d:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/y;

    sget-object v2, Lr/l;->p:Lt/y;

    if-ne v0, v2, :cond_10

    const/4 v0, 0x0

    :cond_10
    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public b(Lt/y;)Z
    .registers 5

    invoke-virtual {p0}, Lr/l;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/u;

    invoke-virtual {v0}, Lt/u;->b()Lt/r;

    move-result-object v0

    invoke-virtual {p1}, Lt/y;->a()Lt/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public c(Lt/r;)V
    .registers 5

    if-nez p1, :cond_1b

    const/4 v0, 0x0

    iget-object v1, p0, Lr/l;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lr/l;->g:Lt/q;

    if-eqz v2, :cond_11

    const/4 v0, 0x0

    iput-object v0, p0, Lr/l;->e:Lt/r;

    const/4 v0, 0x0

    iput-object v0, p0, Lr/l;->g:Lt/q;

    const/4 v0, 0x1

    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_18

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lr/l;->j()V

    :cond_17
    :goto_17
    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0

    :cond_1b
    iget-object v1, p0, Lr/l;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1e
    iget-object v0, p0, Lr/l;->e:Lt/r;

    invoke-virtual {p1, v0}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lr/l;->g:Lt/q;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lr/l;->g:Lt/q;

    invoke-virtual {v0}, Lt/q;->a()Lt/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_36
    monitor-exit v1

    goto :goto_17

    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_38

    throw v0

    :cond_3b
    :try_start_3b
    iput-object p1, p0, Lr/l;->e:Lt/r;

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_38

    iget-object v0, p0, Lr/l;->l:Lx/T;

    invoke-virtual {v0, p1, p0}, Lx/T;->a(Lt/r;Lx/R;)V

    goto :goto_17
.end method

.method public c()Z
    .registers 3

    iget-object v1, p0, Lr/l;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lr/l;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public c(Lt/y;)Z
    .registers 4

    iget-object v1, p0, Lr/l;->c:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lr/l;->c:Lz/g;

    invoke-virtual {v0}, Lz/g;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public d()Ljava/util/List;
    .registers 3

    iget-object v1, p0, Lr/l;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lr/l;->i:Ljava/util/List;

    invoke-static {v0}, LK/bn;->a(Ljava/util/Collection;)LK/bn;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public d(Lt/r;)Lr/e;
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lr/l;->a(Lt/r;ZZZ)Lr/e;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Set;
    .registers 4

    invoke-virtual {p0}, Lr/l;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/q;

    invoke-virtual {p0, v0}, Lr/l;->b(Lt/q;)Lt/u;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_22
    return-object v1
.end method

.method public f()Ljava/util/Set;
    .registers 4

    invoke-virtual {p0}, Lr/l;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/q;

    invoke-virtual {p0, v0}, Lr/l;->b(Lt/q;)Lt/u;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lt/u;->a()Lt/y;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_26
    return-object v1
.end method

.method public g()Z
    .registers 3

    invoke-virtual {p0}, Lr/l;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/u;

    invoke-virtual {v0}, Lt/u;->e()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public h()Ljava/util/Set;
    .registers 3

    iget-object v1, p0, Lr/l;->n:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lr/l;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, LK/bu;->a(Ljava/util/Collection;)LK/bu;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public i()Lr/b;
    .registers 2

    iget-object v0, p0, Lr/l;->o:Lr/b;

    return-object v0
.end method
