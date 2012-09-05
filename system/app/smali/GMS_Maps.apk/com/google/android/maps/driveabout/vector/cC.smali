.class public Lcom/google/android/maps/driveabout/vector/cC;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/Map;

.field private static final c:Lcom/google/android/maps/driveabout/vector/aU;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:Lp/a;

.field private final e:Lx/ay;

.field private f:Lp/e;

.field private final g:Lz/a;

.field private h:Ljava/util/ArrayList;

.field private final i:Lz/g;

.field private j:I

.field private k:I

.field private final l:Lx/az;

.field private m:I

.field private final n:Ljava/util/HashMap;

.field private final o:Lcom/google/android/maps/driveabout/vector/cG;

.field private final p:Lcom/google/android/maps/driveabout/vector/cE;

.field private q:J

.field private r:J

.field private final s:Ljava/util/Set;

.field private final t:Ljava/util/LinkedList;

.field private final u:Lcom/google/android/maps/driveabout/vector/cF;

.field private v:Laf/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bP;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bP;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cC;->c:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cC;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cU;Lp/e;ZLz/a;)V
    .registers 11

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz/g;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lz/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->i:Lz/g;

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->j:I

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->k:I

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cG;

    invoke-direct {v0, p0, v5}, Lcom/google/android/maps/driveabout/vector/cG;-><init>(Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cD;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->o:Lcom/google/android/maps/driveabout/vector/cG;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cE;

    invoke-direct {v0, p0, v5}, Lcom/google/android/maps/driveabout/vector/cE;-><init>(Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cD;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->p:Lcom/google/android/maps/driveabout/vector/cE;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->s:Ljava/util/Set;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->v:Laf/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    invoke-static {}, Lp/a;->a()Lp/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->d:Lp/a;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/cC;->g:Lz/a;

    if-eqz p3, :cond_a5

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cC;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_47
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cC;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cC;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    new-instance v3, Lcom/google/android/maps/driveabout/vector/cF;

    const/16 v4, 0x55

    invoke-direct {v3, v4}, Lcom/google/android/maps/driveabout/vector/cF;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cC;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cF;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_47 .. :try_end_6c} :catchall_a2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cC;->i()V

    :goto_6f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->n:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->q:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->t:Ljava/util/LinkedList;

    invoke-static {p1}, Lx/aA;->b(Lcom/google/android/maps/driveabout/vector/cU;)Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-static {p1}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->e:Lx/ay;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cD;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/cD;-><init>(Lcom/google/android/maps/driveabout/vector/cC;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->l:Lx/az;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->e:Lx/ay;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->l:Lx/az;

    invoke-interface {v0, v1}, Lx/ay;->a(Lx/az;)V

    :goto_a1
    return-void

    :catchall_a2
    move-exception v0

    :try_start_a3
    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v0

    :cond_a5
    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    goto :goto_6f

    :cond_a8
    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/cC;->e:Lx/ay;

    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/cC;->l:Lx/az;

    goto :goto_a1
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cU;Z)V
    .registers 5

    new-instance v0, Lp/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lp/e;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Ljava/util/Set;)V

    sget-object v1, Lz/a;->a:Lz/a;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/maps/driveabout/vector/cC;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lp/e;ZLz/a;)V

    return-void
.end method

.method private declared-synchronized a(Lt/af;Z)Lcom/google/android/maps/driveabout/vector/aU;
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1}, Lt/af;->b()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_16

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cF;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aU;

    const/4 p2, 0x0

    :cond_16
    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->d:Lp/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    invoke-virtual {v0, v1, p1, p2}, Lp/a;->a(Lp/e;Lt/af;Z)Lcom/google/android/maps/driveabout/vector/aU;
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_22

    move-result-object v0

    :cond_20
    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/cC;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->s:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/cC;Lt/af;ILt/ae;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lt/af;ILt/ae;)V

    return-void
.end method

.method private declared-synchronized a(Lp/e;Z)V
    .registers 4

    monitor-enter p0

    if-eqz p2, :cond_13

    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->d:Lp/a;

    invoke-virtual {v0, p1}, Lp/a;->b(Lp/e;)V

    :goto_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cF;->f()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_19

    :cond_11
    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->d:Lp/a;

    invoke-virtual {v0, p1}, Lp/a;->a(Lp/e;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    goto :goto_8

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lt/af;ILt/ae;)V
    .registers 11

    invoke-virtual {p1}, Lt/af;->b()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_25

    monitor-enter p0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/maps/driveabout/vector/cC;->q:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_24

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    :goto_23
    return-void

    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_68

    :cond_25
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->i:Lz/g;

    monitor-enter v2

    :try_start_28
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->i:Lz/g;

    invoke-virtual {v1, p1, p1}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_6b

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_70

    instance-of v1, p3, Lt/ao;

    if-eqz v1, :cond_70

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_41
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, p3

    :cond_48
    :goto_48
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/aB;

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3}, Lx/ay;->a(Lt/af;Z)Lt/ae;

    move-result-object v3

    if-eqz v3, :cond_48

    move-object v0, v2

    check-cast v0, Lt/ao;

    move-object v1, v0

    move-object v0, v3

    check-cast v0, Lt/ao;

    move-object v2, v0

    invoke-static {v1, v2}, Lt/I;->a(Lt/ao;Lt/ao;)Lt/ao;
    :try_end_66
    .catchall {:try_start_41 .. :try_end_66} :catchall_d7

    move-result-object v2

    goto :goto_48

    :catchall_68
    move-exception v1

    :try_start_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v1

    :catchall_6b
    move-exception v1

    :try_start_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v1

    :cond_6e
    :try_start_6e
    monitor-exit v4
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_d7

    move-object p3, v2

    :cond_70
    const/4 v3, 0x0

    if-nez p2, :cond_7d

    instance-of v1, p3, Lt/ao;

    if-eqz v1, :cond_da

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->g:Lz/a;

    invoke-static {p3, v1}, Lcom/google/android/maps/driveabout/vector/aZ;->a(Lt/ae;Lz/a;)Lcom/google/android/maps/driveabout/vector/aZ;

    move-result-object v3

    :cond_7d
    :goto_7d
    monitor-enter p0

    if-nez v3, :cond_ee

    const/4 v1, 0x2

    if-ne p2, v1, :cond_e3

    :try_start_83
    sget-object v1, Lcom/google/android/maps/driveabout/vector/cC;->c:Lcom/google/android/maps/driveabout/vector/aU;

    move-object v2, v1

    :goto_86
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    if-eqz v1, :cond_e6

    invoke-virtual {p1}, Lt/af;->b()I

    move-result v1

    const/4 v4, 0x3

    if-gt v1, v4, :cond_e6

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cF;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v1, :cond_ab

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cC;->c:Lcom/google/android/maps/driveabout/vector/aU;

    if-eq v1, v4, :cond_ab

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-virtual {v4, p1}, Lcom/google/android/maps/driveabout/vector/cF;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cC;->d:Lp/a;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    invoke-virtual {v4, v5, v1}, Lp/a;->a(Lp/e;Lcom/google/android/maps/driveabout/vector/aU;)V

    :cond_ab
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/maps/driveabout/vector/cF;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_c6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v5, v4, v1

    :cond_c6
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lt/af;Lcom/google/android/maps/driveabout/vector/aU;IJ)V

    monitor-exit p0

    goto/16 :goto_23

    :catchall_d4
    move-exception v1

    monitor-exit p0
    :try_end_d6
    .catchall {:try_start_83 .. :try_end_d6} :catchall_d4

    throw v1

    :catchall_d7
    move-exception v1

    :try_start_d8
    monitor-exit v4
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw v1

    :cond_da
    instance-of v1, p3, Lt/p;

    if-eqz v1, :cond_7d

    invoke-static {p3}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lt/ae;)Lcom/google/android/maps/driveabout/vector/ad;

    move-result-object v3

    goto :goto_7d

    :cond_e3
    :try_start_e3
    monitor-exit p0

    goto/16 :goto_23

    :cond_e6
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->d:Lp/a;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    invoke-virtual {v1, v4, p1, v2}, Lp/a;->a(Lp/e;Lt/af;Lcom/google/android/maps/driveabout/vector/aU;)V
    :try_end_ed
    .catchall {:try_start_e3 .. :try_end_ed} :catchall_d4

    goto :goto_b0

    :cond_ee
    move-object v2, v3

    goto :goto_86
.end method

.method private a(Lt/af;Lcom/google/android/maps/driveabout/vector/aU;IJ)V
    .registers 15

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/cC;->t:Ljava/util/LinkedList;

    monitor-enter v7

    :try_start_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->t:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cH;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/cH;->a(Lt/af;Lcom/google/android/maps/driveabout/vector/aU;IJ)V

    :cond_1d
    monitor-exit v7

    return-void

    :cond_1f
    new-instance v8, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->t:Ljava/util/LinkedList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v6, v0

    :goto_30
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1d

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cH;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/cH;->a(Lt/af;Lcom/google/android/maps/driveabout/vector/aU;IJ)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_30

    :catchall_47
    move-exception v0

    monitor-exit v7
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_47

    throw v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/vector/cC;)Lp/e;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/vector/cC;Lt/af;ILt/ae;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cC;->b(Lt/af;ILt/ae;)V

    return-void
.end method

.method private b(Lt/af;ILt/ae;)V
    .registers 8

    if-nez p3, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    move-object v0, p3

    check-cast v0, Lt/ao;

    invoke-virtual {v0}, Lt/ao;->n()I

    move-result v0

    if-nez v0, :cond_30

    move-object v0, p3

    check-cast v0, Lt/ao;

    invoke-virtual {v0}, Lt/ao;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lt/af;Z)Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v0

    if-eqz v0, :cond_30

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cC;->c:Lcom/google/android/maps/driveabout/vector/aU;

    if-eq v0, v1, :cond_30

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aZ;

    check-cast p3, Lt/ao;

    invoke-virtual {p3}, Lt/ao;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aZ;->a(J)V

    goto :goto_2

    :cond_30
    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->i:Lz/g;

    monitor-enter v1

    :try_start_39
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->k:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->j:I

    add-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x7f

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_44

    :cond_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_5b

    :cond_45
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->i:Lz/g;

    monitor-enter v1

    :try_start_48
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->i:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5e

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->k:I

    monitor-exit v1

    goto :goto_2

    :catchall_58
    move-exception v0

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_48 .. :try_end_5a} :catchall_58

    throw v0

    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0

    :cond_5e
    :try_start_5e
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->j:I

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_58

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->e:Lx/ay;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lx/ay;->a(Lt/af;Z)Lt/ae;

    move-result-object v0

    if-eqz v0, :cond_72

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lt/af;ILt/ae;)V

    goto :goto_2

    :cond_72
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->e:Lx/ay;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->p:Lcom/google/android/maps/driveabout/vector/cE;

    invoke-interface {v0, p1, v1}, Lx/ay;->a(Lt/af;Lx/aw;)V

    goto :goto_2
.end method

.method private c(Lt/af;)V
    .registers 7

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->i:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->i:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_4d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->e:Lx/ay;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->e:Lx/ay;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->p:Lcom/google/android/maps/driveabout/vector/cE;

    invoke-interface {v0, p1, v1}, Lx/ay;->a(Lt/af;Lx/aw;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_51

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_1c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->e:Lx/ay;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_52

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->e:Lx/ay;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lx/ay;->a(Lt/af;Z)Lt/ae;

    move-result-object v0

    check-cast v0, Lt/ao;

    move-object v1, v0

    :goto_32
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/aB;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cC;->o:Lcom/google/android/maps/driveabout/vector/cG;

    invoke-virtual {v0, p1, v1, v4}, Lx/aB;->a(Lt/af;Lt/ao;Lx/aw;)V

    goto :goto_38

    :catchall_4a
    move-exception v0

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_1c .. :try_end_4c} :catchall_4a

    throw v0

    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0

    :cond_50
    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4a

    :cond_51
    return-void

    :cond_52
    move-object v1, v0

    goto :goto_32
.end method

.method private declared-synchronized h()V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cC;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    new-instance v1, Lt/af;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lt/af;-><init>(III)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cF;->c(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cF;->a()Lcom/google/android/maps/driveabout/vector/aT;

    move-result-object v2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cF;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v0, :cond_16

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/vector/aU;->a_(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aU;->a()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_2e
    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cF;->f()V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3a
    move v0, v1

    goto :goto_2e
.end method

.method private j()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->s:Ljava/util/Set;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/e;

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lp/e;Z)V

    goto :goto_12

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v0

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    :cond_2b
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lt/af;)Lcom/google/android/maps/driveabout/vector/aU;
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_3
    invoke-direct {p0, p1, v1}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lt/af;Z)Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cC;->c:Lcom/google/android/maps/driveabout/vector/aU;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_3b

    if-ne v1, v2, :cond_d

    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    if-eqz v1, :cond_3e

    :try_start_f
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->v:Laf/a;

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/vector/aU;->a(Laf/a;)Z

    move-result v2

    if-nez v2, :cond_19

    move-object v0, v1

    goto :goto_b

    :cond_19
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->v:Laf/a;

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/vector/aU;->b(Laf/a;)Z

    move-result v2

    if-eqz v2, :cond_3e

    :goto_21
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->n:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_34

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cC;->c(Lt/af;)V

    :cond_34
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->m:I
    :try_end_3a
    .catchall {:try_start_f .. :try_end_3a} :catchall_3b

    goto :goto_b

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3e
    move-object v0, v1

    goto :goto_21
.end method

.method public a()Lp/e;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->d:Lp/a;

    invoke-virtual {v0, p1}, Lp/a;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cF;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_e
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cH;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->t:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->t:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->t:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cU;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->e:Lx/ay;

    instance-of v0, v0, Lx/aF;

    if-nez v0, :cond_2b

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modifiers not supported on store \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->e:Lx/ay;

    invoke-interface {v2}, Lx/ay;->d()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/cU;->p:Z

    if-nez v0, :cond_48

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only modifiers may be added, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    invoke-static {p1}, Lx/aA;->b(Lcom/google/android/maps/driveabout/vector/cU;)Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-static {p1}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v0

    instance-of v1, v0, Lx/aB;

    if-nez v1, :cond_79

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modifier store \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lx/ay;->d()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' must be a vector modifier store"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_79
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_7c
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    monitor-exit v1

    :goto_85
    return-void

    :cond_86
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->l:Lx/az;

    invoke-interface {v0, v2}, Lx/ay;->a(Lx/az;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    check-cast v0, Lx/aB;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_93
    .catchall {:try_start_7c .. :try_end_93} :catchall_b8

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_9b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/aB;

    invoke-virtual {v0}, Lx/aB;->d()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    :catchall_b5
    move-exception v0

    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_9b .. :try_end_b7} :catchall_b5

    throw v0

    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v0

    :cond_bb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tile store "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d4
    :try_start_d4
    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_b5

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->s:Ljava/util/Set;

    monitor-enter v2

    :try_start_d8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->s:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_e0
    .catchall {:try_start_d8 .. :try_end_e0} :catchall_f0

    new-instance v0, Lp/e;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->e:Lx/ay;

    invoke-interface {v2}, Lx/ay;->d()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cC;->g:Lz/a;

    invoke-direct {v0, v2, v1, v3}, Lp/e;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Ljava/util/Set;Lz/a;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    goto :goto_85

    :catchall_f0
    move-exception v0

    :try_start_f1
    monitor-exit v2
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/cz;Lt/L;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cC;->b()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_30

    move-result v0

    if-nez v0, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    const/4 v0, 0x3

    :try_start_a
    invoke-interface {p1, v0, p2}, Lcom/google/android/maps/driveabout/vector/cz;->a(ILt/L;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/cF;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/maps/driveabout/vector/cF;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lt/af;)Lcom/google/android/maps/driveabout/vector/aU;
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_30

    goto :goto_12

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cC;->h()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_30

    goto :goto_7
.end method

.method public a(Ljava/util/List;)V
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aU;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cC;->c:Lcom/google/android/maps/driveabout/vector/aU;

    if-eq v0, v3, :cond_d

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aU;->b()Lt/af;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->d:Lp/a;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    invoke-virtual {v0, v2, v1}, Lp/a;->a(Lp/e;Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lp/e;Z)V

    return-void
.end method

.method public declared-synchronized b(Lt/af;)Lcom/google/android/maps/driveabout/vector/aU;
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, p1, v1}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lt/af;Z)Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cC;->c:Lcom/google/android/maps/driveabout/vector/aU;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1e

    if-ne v1, v2, :cond_d

    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    if-eqz v1, :cond_17

    :try_start_f
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->v:Laf/a;

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/vector/aU;->b(Laf/a;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_17
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->m:I
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1e

    goto :goto_b

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_21
    move-object v0, v1

    goto :goto_b
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/cU;)V
    .registers 6

    invoke-static {p1}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_c
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    monitor-exit v2

    :goto_15
    return-void

    :cond_16
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cC;->l:Lx/az;

    invoke-interface {v0, v3}, Lx/ay;->b(Lx/az;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/aB;

    invoke-virtual {v0}, Lx/aF;->d()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :catchall_35
    move-exception v0

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_35

    throw v0

    :cond_38
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->s:Ljava/util/Set;

    monitor-enter v2

    :try_start_3c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->s:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_54

    new-instance v0, Lp/e;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->e:Lx/ay;

    invoke-interface {v2}, Lx/ay;->d()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cC;->g:Lz/a;

    invoke-direct {v0, v2, v1, v3}, Lp/e;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Ljava/util/Set;Lz/a;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    goto :goto_15

    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method

.method public b(Ljava/util/List;)V
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aU;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cC;->c:Lcom/google/android/maps/driveabout/vector/aU;

    if-eq v0, v3, :cond_d

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aU;->b()Lt/af;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->d:Lp/a;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    invoke-virtual {v0, v2, v1}, Lp/a;->b(Lp/e;Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized b(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->d:Lp/a;

    invoke-virtual {v0, p1}, Lp/a;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cF;->f()V

    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cC;->h()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->u:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cF;->g()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->m:I

    return v0
.end method

.method public declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->d:Lp/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    invoke-virtual {v0, v1}, Lp/a;->c(Lp/e;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cC;->j()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cC;->i()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->d:Lp/a;

    invoke-virtual {v0}, Lp/a;->b()V

    return-void
.end method

.method public f()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cC;->j()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->d:Lp/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    invoke-virtual {v0, v1}, Lp/a;->e(Lp/e;)V

    monitor-enter p0

    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->r:J

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v0
.end method

.method public declared-synchronized g()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->r:J

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->q:J

    sget-boolean v0, Lcom/google/googlenav/android/I;->a:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cC;->d:Lp/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cC;->f:Lp/e;

    invoke-virtual {v0, v1}, Lp/a;->d(Lp/e;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
